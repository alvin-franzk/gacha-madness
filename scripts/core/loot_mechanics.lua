local playerCurrency = require("scripts.player.playerCurrency")
local playerInventory = require("scripts.player.playerInventory")
local lootBoxes = require("scripts.loot.lootBoxes")

-- Function to select loot based on rarity probabilities
local function getLoot(lootBox)
    math.randomseed(os.time()) -- rng seed
    -- Weights for the rarities (higher weight means higher chance)
    local rarityWeights = {
        Junk = 70,          -- 70% chance for Junk loot
        Common = 50,        -- 50% chance for Common loot
        Uncommon = 30,      -- 30% chance for Uncommon loot
        Rare = 20,          -- 20% chance for Rare loot

        Epic = 15,          -- 15% chance for Epic loot
        Legendary = 13,     -- 13% chance for Legendary loot
        Mythical = 12,      -- 12% chance for Mythical loot
        Arcane = 10,        -- 10% chance for Arcane loot

        Demonic = 5,        -- 5% chance for Demonic loot
        Voidlike = 3,       -- 3% chance for Voidlike loot
        Divine = 2,         -- 2% chance for Divine loot
        Cosmic = 1          -- 1% chance for Cosmic loot
    }

    -- final variables
    local selectedLootItem = nil  -- final loot
    local possibleLoot = {}       -- table for possible loot

    -- Calculate total weight for possible loot
    local totalWeight = 0
    for _, loot in ipairs(lootBox.lootItems) do
        totalWeight = totalWeight + rarityWeights[loot.rarity]
    end

    -- #TODO: Fix loot retrieval algorithm
    -- Then, generate a random number to determine which loot are possible
    local randomNum = math.random(1, totalWeight)
    local runningWeight = 0
    
    -- Collect all items that fall under the chosen weight
    for _, loot in ipairs(lootBox.lootItems) do
        runningWeight = runningWeight + rarityWeights[loot.rarity]
        if randomNum <= runningWeight then
            table.insert(possibleLoot, loot)    -- Insert possible loot
        end
    end

    -- Randomly select one from possible loots
    if #possibleLoot > 0 then
        selectedLootItem = possibleLoot[math.random(1, #possibleLoot)]
    end

    return selectedLootItem
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
        print("Current Balance: " .. playerCurrency.getBalance())
        updateCurrencyText()

        -- DEBUG: Console stuff
        print("Opening loot box: " .. lootBox.name)
        print("Price: " .. lootBox.price .. " gold")

        -- Get one item based on rarity chances
        local lootItem = getLoot(lootBox)

        -- DEBUG: Print the selected loot item
        if lootItem then
            print(string.format("Received %s (%s) - Value: %d", lootItem.name, lootItem.itemType, lootItem.value))
            -- Store loot to player inventory
            playerInventory.storeLoot(lootItem)
            print("Stored loot: " .. lootItem.name .. " in player inventory.")
            updateProjectedLootValueText()
        else
            print("No loot found.")
        end
    else
        print("Not enough currency.") -- #TODO: Replace with function that shows message box
    end
end

return {
    openLootBox = openLootBox,
    displayLootBoxItems = displayLootBoxItems
    }