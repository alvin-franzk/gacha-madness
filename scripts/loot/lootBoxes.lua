-- Load the JSON module
local json = require("json")

-- Load the loot table from the JSON file
local filePath = system.pathForFile("lootTable.json", system.DocumentsDirectory)
local file = io.open(filePath, "r")
local lootTiers
if file then
    local contents = file:read("*a")
    lootTiers = json.decode(contents)  -- Decoding JSON into a Lua table
    io.close(file)
end

-- Define a table to store all loot boxes
local lootBoxes = {

    Commoner = {
        name = "Commoner's Loot Box",
        price = 100,
        isUnlocked = true,
        lootItems = {
            { tier = "Common", name = "Fork" },
            { tier = "Common", name = "Spoon" },
            { tier = "Common", name = "Butterknife" },
            { tier = "Common", name = "Long Stick" },
            { tier = "Common", name = "Lute" },
            { tier = "Uncommon", name = "Bludgeon" },
            { tier = "Rare", name = "Arbalest" }
        }
    },

    Noble = {
        name = "Noble's Loot Box",
        price = 150,
        isUnlocked = true,
        lootItems = {
            { tier = "Common", name = "Fork" },
            { tier = "Common", name = "Spoon" },
            { tier = "Common", name = "Butterknife" },
            { tier = "Uncommon", name = "Bludgeon" },
            { tier = "Uncommon", name = "Scimitar" },
            { tier = "Rare", name = "Arbalest" }
        }
    },

    Warrior = {
        name = "Warrior's Loot Box",
        price = 250,
        isUnlocked = true,
        lootItems = {
            { tier = "Common", name = "Training Sword" },
            { tier = "Common", name = "Claymore" },
            { tier = "Common", name = "Battleaxe" },
            { tier = "Uncommon", name = "Scimitar" },
            { tier = "Uncommon", name = "War Hammer" },
            { tier = "Rare", name = "Arbalest" },
            { tier = "Rare", name = "Katana" },
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