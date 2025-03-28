-- inventory.lua

local inventoryModule = {}

-- Initialize the player's inventory
inventoryModule.items = {}
inventoryModule.lootboxes = {}

-- Function to add an item to the inventory
function inventoryModule.addItem(item)
    table.insert(inventoryModule.items, item)
end

-- Function to remove an item from the inventory
function inventoryModule.removeItem(itemName)
    for i, item in ipairs(inventoryModule.items) do
        if item.name == itemName then
            table.remove(inventoryModule.items, i)
            return item.value -- Return the value of the item sold
        end
    end
    return 0 -- Return 0 if the item was not found
end

-- Function to get the current inventory
function inventoryModule.getInventory()
    return inventoryModule.items
end

-- Function to add a loot box to the inventory
function inventoryModule.addLootBox(lootbox)
    table.insert(inventoryModule.lootboxes, lootbox)
end

-- Function to remove a loot box from the inventory
function inventoryModule.removeLootBox(lootboxName)
    for i, lootbox in ipairs(inventoryModule.lootboxes) do
        if lootbox.name == lootboxName then
            table.remove(inventoryModule.lootboxes, i)
            return lootbox.value -- Return the value of the item sold
        end
    end
    print("lootbox removed.")
    return 0 -- Return 0 if the item was not found
end

function inventoryModule.getLootBoxes()
    return inventoryModule.lootboxes
end

return inventoryModule