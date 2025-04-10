-- Load the JSON module
local json = require("json")

-- Load the loot table from the JSON file
local filePath = system.pathForFile("lootTable.json", system.DocumentsDirectory)
local file = io.open(filePath, "r")
local lootTable = {}
if file then
    local contents = file:read("*a")
    lootTable = json.decode(contents)  -- Decoding JSON into a Lua table
    io.close(file)
end

-- Function to get loot details by name
local function getLootDetails(lootName)
    for tier, loot in pairs(lootTable) do -- for ever tier, loop through these loot
        if loot[lootName] then
            local lootData = lootTable[tier][lootName]
            return {
                name = lootName,
                itemType = lootData.itemType,
                rarity = lootData.rarity,
                value = lootData.value
            }
        end
    end
    return nil  -- Return nil if the item is not found
end

local lootBoxes = {

    Commoner = {
        name = "Commoner's Loot Box",
        price = 100,
        isUnlocked = true,
        lootItems = {
            getLootDetails("Fork"),
            getLootDetails("Spoon"),
            getLootDetails("Butterknife"),
            getLootDetails("Long Stick"),
            getLootDetails("Lute"),
            getLootDetails("Bludgeon"),
            getLootDetails("Arbalest")
        }
    },

    Noble = {
        name = "Noble's Loot Box",
        price = 150,
        isUnlocked = true,
        lootItems = {
            getLootDetails("Fork"),
            getLootDetails("Spoon"),
            getLootDetails("Butterknife"),
            getLootDetails("Bludgeon"),
            getLootDetails("Scimitar"),
            getLootDetails("Arbalest")
        }
    },

    Warrior = {
        name = "Warrior's Loot Box",
        price = 250,
        isUnlocked = true,
        lootItems = {
            getLootDetails("Training Sword"),
            getLootDetails("Claymore"),
            getLootDetails("Battleaxe"),
            getLootDetails("Scimitar"),
            getLootDetails("War Hammer"),
            getLootDetails("Arbalest"),
            getLootDetails("Katana")
        }
    }
}

return lootBoxes

-- Example usage: Access a specific loot box
--[[

local lootBox = lootBoxes["Commoner"]
print(lootBox.name)  -- Output: Commoner's Loot Box

-- Loop through all loot boxes
for lootBoxName, lootBoxData in pairs(lootBoxes) do
    print("Loot Box Name: " .. lootBoxData.name)
    print("Price: " .. lootBoxData.price)
    for _, item in ipairs(lootBoxData.lootItems) do
        print(item.name .. " (" .. item.tier .. ")")
    end
end

--]]