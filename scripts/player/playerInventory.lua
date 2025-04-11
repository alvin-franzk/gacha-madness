local playerInventory = {}

playerInventory.items = {}

-- Function to add an item to the inventory
function playerInventory.storeLoot(loot)
    table.insert(playerInventory.items, loot)
end

-- Function to remove an item from the inventory
function playerInventory.removeLoot(loot)
    for i = #playerInventory.items, 1, -1 do
        if playerInventory.items[i].name == loot.name then
            table.remove(playerInventory.items, i)
            break -- remove only one match
        end
    end
end

-- Function to show the current inventory
function playerInventory.showLoot()
    return playerInventory.items
end

-- Function to calculate the total value of all loot in the inventory
function playerInventory.getTotalValue()
    local totalValue = 0
    if playerInventory.items then
        for _, item in ipairs(playerInventory.items) do
            totalValue = totalValue + (item.value or 0)  -- Add the item's value, defaulting to 0 if not present
        end
        return totalValue
    else
        return totalValue
    end
end

return playerInventory