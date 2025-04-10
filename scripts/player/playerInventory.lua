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

return playerInventory