local playerCurrency = require("scripts.player.playerCurrency")
local playerInventory = require("scripts.player.playerInventory")
local lootBoxes = require("scripts.loot.lootBoxes")
local audioCue = require("scripts.audio.audio_cues")

local rarityOrder = {
    "Junk", "Common", "Uncommon", "Rare", "Epic", 
    "Legendary", "Mythical", "Arcane", "Demonic", 
    "Voidlike", "Divine", "Cosmic"
}

-- Function to select loot based on rarity probabilities
local function getLoot(lootBox)
    -- Weights for the rarities (higher weight means higher chance)
    local rarityWeights = {
        Junk = 80,           -- 80% chance for Junk loot
        Common = 65,         -- 65% chance for Common loot
        Uncommon = 40,       -- 40% chance for Uncommon loot
        Rare = 20,           -- 20% chance for Rare loot
        Epic = 10,           -- 10% chance for Epic loot
        Legendary = 7.224,   -- 7.224% chance for Legendary loot
        Mythical = 1,        -- 1.0% chance for Mythical loot
        Arcane = 0.7,        -- 0.7% chance for Arcane loot
        Demonic = 0.666,     -- 0.666% chance for Demonic loot
        Voidlike = 0.25,     -- 0.25% chance for Voidlike loot
        Divine = 0.12,       -- 0.12% chance for Divine loot
        Cosmic = 0.04,       -- 0.04% chance for Cosmic loot
    }

    -- Define the desired print order
    local rarityOrder = {
        "Junk", "Common", "Uncommon", "Rare", "Epic", 
        "Legendary", "Mythical", "Arcane", "Demonic", 
        "Voidlike", "Divine", "Cosmic"
    }

    -- 1. Count rarities IN ORDER
    local rarityCounts = {}
    for _, item in ipairs(lootBox.lootItems) do
        rarityCounts[item.rarity] = (rarityCounts[item.rarity] or 0) + 1
    end

    -- 2. Calculate weights IN ORDER
    local totalWeight, currentWeight = 0, 0
    local cumulativeWeights = {}

    -- Calculate total weight and cumulative weights based on loot box items
    for _, rarity in ipairs(rarityOrder) do
        if rarityCounts[rarity] then
            local weight = rarityWeights[rarity] * rarityCounts[rarity]
            totalWeight = totalWeight + weight
            currentWeight = currentWeight + weight
            cumulativeWeights[rarity] = currentWeight
        end
    end

    -- Step 2: Generate a random roll between 0 and totalWeight
    local roll = math.random() * totalWeight

    -- Step 3: Determine which rarity the roll corresponds to
    local selectedRarity = nil
    for _, rarity in ipairs(rarityOrder) do
        if cumulativeWeights[rarity] and roll <= cumulativeWeights[rarity] then
            selectedRarity = rarity
            break
        end
    end

    -- Step 4: Collect loot items of the selected rarity
    local eligibleItems = {} -- table for eligible loot
    for _, item in pairs(lootBox.lootItems) do
        if item.rarity == selectedRarity then
            table.insert(eligibleItems, item)
        end
    end

    -- Step 5: Fallback mechanism if no items found
    if #eligibleItems == 0 then
        -- Check for the next available rarity
        for rarity, _ in pairs(rarityWeights) do
            local foundItems = {}
            for _, item in pairs(lootBox.lootItems) do
                if item.rarity == rarity then
                    table.insert(foundItems, item)
                end
            end
            if #foundItems > 0 then
                eligibleItems = foundItems
                break  -- Found an available rarity with items
            end
        end
    end

    -- Step 6: Randomly select one item from the eligible items
    if #eligibleItems > 0 then
        local selectedItemIndex = math.random(1, #eligibleItems)
        local selectedItem = eligibleItems[selectedItemIndex]
        return selectedItem  -- Return the selected item
    else
        return nil  -- No items found (should not happen with fallback)
    end
end

-- Function to open the loot box
local function openLootBox(lootBox)
    if playerCurrency.getBalance() >= lootBox.price then    -- Check if player has enough currency to open
        playerCurrency.deductCurrency(lootBox.price)    -- Deduct player currency
        updateCurrencyText()
        print("Opening Loot Box: " .. lootBox.name)
        -- audioCue.playAudio("openLootBox")    -- play open loot box sound
        local lootItem = getLoot(lootBox)   -- Get one item based on rarity chances

        -- DEBUG: Print the selected loot item
        if lootItem then
            print(string.format("Received %s (%s) - Value: %d - Rarity: %s", lootItem.name, lootItem.itemType, lootItem.value, lootItem.rarity))
            audioCue.playAudio(lootItem.rarity) -- play rarity audio
            playerInventory.storeLoot(lootItem) -- Store loot to player inventory
            updateProjectedLootValueText()
            return lootItem
        else
            print("No loot found.")
            return nil
        end
    else
        audioCue.playAudio("noCurrency")
        native.showAlert("Not enough currency.")
    end
end

-- Function to sell loot
local function sellLoot(loot, amount)
    playerCurrency.addCurrency(loot.value * amount)
    playerInventory.removeLoot(loot, amount)
end

return {
    openLootBox = openLootBox,
    sellLoot = sellLoot
    }