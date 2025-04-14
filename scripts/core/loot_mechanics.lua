local playerCurrency = require("scripts.player.playerCurrency")
local playerInventory = require("scripts.player.playerInventory")
local lootBoxes = require("scripts.loot.lootBoxes")

-- DEBUG
local function printTable(t)
    for key, value in pairs(t) do
        print(key .. ": " .. tostring(value))
    end
end
-- DEBUG

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

    -- Step 1: Calculate total weight based on rarityWeights
    local totalWeight = 0
    local cumulativeWeights = {}
    local currentWeight = 0

    -- Count the number of items for each rarity
    local rarityCounts = {}
    for _, item in ipairs(lootBox.lootItems) do
        rarityCounts[item.rarity] = (rarityCounts[item.rarity] or 0) + 1
    end
    print("Rarity Counts: ")
    printTable(rarityCounts)

    -- Calculate total weight and cumulative weights based on loot box items
    for rarity, count in pairs(rarityCounts) do
        local weight = rarityWeights[rarity]  -- Get the weight for the item's rarity
        if weight then
            local totalRarityWeight = weight * count  -- Calculate total weight for this rarity
            totalWeight = totalWeight + totalRarityWeight
            currentWeight = currentWeight + totalRarityWeight
            cumulativeWeights[rarity] = currentWeight  -- Store cumulative weight for this rarity
        end
    end

    -- DEBUG
    print("Cumulative Weights: ")
    printTable(cumulativeWeights)
    print("Total Weight: " .. totalWeight)
    -- DEBUG

    -- Step 2: Generate a random roll between 0 and totalWeight
    local roll = math.random() * totalWeight
    -- DEBUG
    print("Roll: " .. roll)
    -- DEBUG

    -- Step 3: Determine which rarity the roll corresponds to
    local selectedRarity = nil
    for rarity, weight in pairs(cumulativeWeights) do
        if roll <= weight then
            selectedRarity = rarity
            break
        end
    end
    print("Selected Rarity: " .. (selectedRarity or "None"))

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
                print("Selected Rarity not Found. Closest Rarity: " .. rarity)
                break  -- Found an available rarity with items
            end
        end
    end
    printTable(eligibleItems)

    -- Step 6: Randomly select one item from the eligible items
    if #eligibleItems > 0 then
        local selectedItemIndex = math.random(1, #eligibleItems)
        local selectedItem = eligibleItems[selectedItemIndex]
        return selectedItem  -- Return the selected item
    else
        return nil  -- No items found (should not happen with fallback)
    end
end

----TEMP
local function displayLootBoxItems(lootBox)
    if not lootBox or not lootBox.lootItems then
        print("Invalid loot box or no items to display.")
        return
    end

    print("Items in " .. lootBox.name .. ":")
    for _, item in ipairs(lootBox.lootItems) do
        if item then  -- Check if the item is not nil
            print(string.format(" - Name: %s, Type: %s, Rarity: %s, Value: %d", 
                item.name, item.itemType, item.rarity, item.value))
        else
            print(" - Item is nil.")
        end
    end
end
----TEMP

-- Function to open the loot box
local function openLootBox(lootBox)
    -- Check if player has enough currency to open
    if playerCurrency.getBalance() >= lootBox.price then
        -- Deduct player currency
        playerCurrency.deductCurrency(lootBox.price)
        updateCurrencyText()
        print("Opening Loot Box: " .. lootBox.name)
        -- Get one item based on rarity chances
        local lootItem = getLoot(lootBox)

        -- DEBUG: Print the selected loot item
        if lootItem then
            print(string.format("Received %s (%s) - Value: %d - Rarity: %s", lootItem.name, lootItem.itemType, lootItem.value, lootItem.rarity))
            -- Store loot to player inventory
            playerInventory.storeLoot(lootItem)
            -- print("Stored loot: " .. lootItem.name .. " in player inventory.")
            updateProjectedLootValueText()
        else
            print("No loot found.")
        end
    else
        print("Not enough currency.") -- #TODO: Replace with function that shows message box
    end
end

-- Function to sell loot
local function sellLoot(loot, amount)
    playerCurrency.addCurrency(loot.value * amount)
    playerInventory.removeLoot(loot, amount)
end

return {
    openLootBox = openLootBox,
    sellLoot = sellLoot,
    displayLootBoxItems = displayLootBoxItems
    }