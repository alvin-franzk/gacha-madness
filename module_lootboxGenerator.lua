-- copy lootGenerator but instead of generating random loot, you generate random stats for loot boxes

local lootboxGenerator = {}

-- Function to generate a random item
function lootboxGenerator.generateLootBox()
    local itemNames = {
        "Sword", "Shield", "Potion", "Ring", "Amulet", "Helmet", "Armor", "Boots"
    }

    local rarities = {
        { name = "Common", value = 0.5 },
        { name = "Uncommon", value = 0.3 },
        { name = "Rare", value = 0.15 },
        { name = "Legendary", value = 0.05 }
    }

    -- Randomly select an item name
    local itemName = itemNames[math.random(#itemNames)] .. " " .. math.random(1, 100) -- Add a random number to the name for uniqueness

    -- Randomly select a rarity
    local rarityIndex = math.random() -- Get a random number between 0 and 1
    local cumulativeProbability = 0
    local selectedRarity

    for _, rarity in ipairs(rarities) do
        cumulativeProbability = cumulativeProbability + rarity.value
        if rarityIndex <= cumulativeProbability then
            selectedRarity = rarity.name
            break
        end
    end

    -- Generate a random value for the item (you can customize this logic)
    local itemValue = math.random(10, 100) -- Random value between 10 and 100

    return { name = itemName, rarity = selectedRarity, value = itemValue }
end

return lootboxGenerator