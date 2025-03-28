-- loot.lua

local lootModule = {}
local itemGenerator = require("module_lootGenerator") -- loot generator
local currency = require("module_currency") -- Require the currency module
local inventory = require("module_inventory") -- Require the inventory module

-- Define your loot table
lootModule.lootTable = {
    common = {},
    uncommon = {},
    rare = {},
    legendary = {}
}

-- Function to generate and add items to the loot table
function lootModule.generateLootItems(numItems)
    for i = 1, numItems do
        local newItem = itemGenerator.generateItem()

        -- Add the item to the appropriate rarity tier
        if newItem.rarity == "Common" then
            table.insert(lootModule.lootTable.common, newItem)
        elseif newItem.rarity == "Uncommon" then
            table.insert(lootModule.lootTable.uncommon, newItem)
        elseif newItem.rarity == "Rare" then
            table.insert(lootModule.lootTable.rare, newItem)
        elseif newItem.rarity == "Legendary" then
            table.insert(lootModule.lootTable.legendary, newItem)
        end
    end
end

-- Call this function to generate items when initializing the game
lootModule.generateLootItems(10) -- Generate 10 random items

-- Table to keep track of received items
lootModule.receivedItems = {}

-- Function to get random loot based on the current state
function lootModule.getRandomLoot()
    local allItems = {}
    local totalRarity = 0

    -- Collect all items that haven't been received yet
    for rarity, items in pairs(lootModule.lootTable) do
        for _, item in ipairs(items) do
            if not lootModule.receivedItems[item.name] then
                table.insert(allItems, item)
                totalRarity = totalRarity + item.value -- Use the item's value for total rarity
            end
        end
    end

    -- If all items have been received, reset the received items
    if #allItems == 0 then
        lootModule.receivedItems = {}
        for rarity, items in pairs(lootModule.lootTable) do
            for _, item in ipairs(items) do
                table.insert(allItems, item)
            end
        end
    end

    -- Select a random item based on rarity
    local randomValue = math.random() * totalRarity
    local cumulativeProbability = 0

    for _, item in ipairs(allItems) do
        cumulativeProbability = cumulativeProbability + item.value -- Use the item's value for cumulative probability
        if randomValue <= cumulativeProbability then
            lootModule.receivedItems[item.name] = true -- Mark this item as received
            return item.name -- Return the name of the loot item
        end
    end

    return nil -- In case no item is selected (shouldn't happen)
end

-- Function to open a loot box
function lootModule.openLootBox(cost)
    if currency.deductCurrency(cost) then -- Check if the player can afford to open the loot box
        local loot = lootModule.getRandomLoot() -- Get random loot
        if loot then

            -- Get the item details from the loot table
            for rarity, items in pairs(lootModule.lootTable) do
                for _, item in ipairs(items) do
                    if item.name == loot then
                        inventory.addItem(item) -- Add the item to the inventory
                        return "You opened a loot box and received: " .. item.name .. " (Value: " .. item.value .. ")"
                    end
                end
            end
        else
            return "No loot received."
        end
    else
        return "Not enough currency to open the loot box."
    end
end

return lootModule