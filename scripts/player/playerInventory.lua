local inventory = {}

inventory.items = {}

-- Function to add an item to the inventory
function inventory.storeLoot(loot)
    table.insert(inventory.items, loot)
end

-- Function to remove an item from the inventory
function inventory.removeLoot(loot)
    for i = #inventory.items, 1, -1 do
        if inventory.items[i].name == loot.name then
            table.remove(inventory.items, i)
            break -- remove only one match
        end
    end
end

-- Function to show the current inventory
function inventory.showLoot()
    return inventory.items
end

return inventory