local playerInventory = {
    items = {},
    newItems = {}
}

-- Add with default image support
function playerInventory.addItem(item)
    item.id = item.id or #playerInventory.items + 1
    item.img = item.img or "assets/ui/default_item.png"
    table.insert(playerInventory.items, item)
    playerInventory.newItems[item.id] = true
    updateProjectedLootValueText()  -- Update main UI
end

-- Get total value of all items
function playerInventory.getTotalValue()
    local total = 0
    for _, item in ipairs(playerInventory.items) do
        total = total + (item.value or 0)
    end
    return total
end

-- Function to add an item to the inventory
function playerInventory.storeLoot(loot)
    table.insert(playerInventory.items, loot)
end

-- Function to remove an item from the inventory
function playerInventory.removeLoot(loot, amount)
    amount = amount or 1  -- Default to 1 if amount is not provided
    local count = 0  -- Counter for how many items removed
    for i = #playerInventory.items, 1, -1 do
        if playerInventory.items[i].name == loot.name then
            table.remove(playerInventory.items, i)
            count = count + 1
            if count >= amount then
                break  -- Stop removing if we've removed the specified amount
            end
        end
    end
end

-- Function to return loot items
function playerInventory.returnLootItems()
    return playerInventory.items
end

return playerInventory