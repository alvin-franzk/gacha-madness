local lootTable = require("scripts.loot.lootTable")
if lootTable then
    print("Loot table loaded successfully.")
else
    print("Loot table Not Found.")
end


-- Function to get loot details by name
local function getLootDetails(itemName)
    for rarity, items in pairs(lootTable) do
        for _, item in ipairs(items) do
            if item.name == itemName then
                return item
            end
        end
    end
    print("Loot: " .. itemName .. " not Found.")
    return nil  -- Item not found
end

local lootBoxes = {

    NoblesFinery = {
        name = "Noble's Finery Crate",
        price = 2500,  -- Suitable for aristocratic budgets
        isUnlocked = true,
        lootItems = {
            -- Common (Courtly Essentials)
            getLootDetails("Duelist's Rapier"),
            getLootDetails("Leather Armor"),  -- Finely tooled
            getLootDetails("Round Shield"),  -- Heraldry-ready
    
            -- Uncommon (Status Symbols)
            getLootDetails("Flame Tongue Rapier"),
            getLootDetails("Brigandine Vest"),  -- Gilded edges
            getLootDetails("Wyvern Hide Boots"),
    
            -- Rare (Heirloom Pieces)
            getLootDetails("Venomfang Rapier"),
            getLootDetails("Griffon-Feather Cloak"),
            getLootDetails("Tower Shield of the Bulwark"),
    
            -- Epic (Royal Relics)
            getLootDetails("Masamune"),
            getLootDetails("Cloak of Invisibility")
        },
        desc = "A lacquered chest smelling of polished silver and inherited privilege. Contains only the finest arms and armor worthy of noble bloodlines."
    },

    SamuraiArmory = {
        name = "Samurai Armory Chest",
        price = 3000,  -- Worthy of a daimyo's gift
        isUnlocked = true,
        lootItems = {
            -- Junk (Peasant/Improvised)
            getLootDetails("Broken Dagger"),
            getLootDetails("Wooden Plank"),  -- Practice bokuto

            -- Common (Ronin Essentials)
            getLootDetails("Chainmail Coif"),  -- Mengu mask attachment point
            getLootDetails("Woodchopper's Axe"),  -- Farmer-turned-warrior tool
            getLootDetails("Leather Armor"),  -- Lacquered do-maru
    
            -- Uncommon (Bushi Gear)
            getLootDetails("Short Bow"),
            getLootDetails("Monkey King Bar"),
            getLootDetails("Glaive"),
            getLootDetails("Spiked Chain"),

            -- Rare (Daimyo Treasures)
            getLootDetails("Daikyu"),  -- Asymmetrical longbow
            getLootDetails("Tanto"),
            getLootDetails("Katana"),

            -- Epic (Imperial Relics)
            getLootDetails("Masamune"),
            getLootDetails("Blade of the Phoenix"),  -- Amaterasu-blessed
            getLootDetails("Helm of the All-Seeing")  -- Kabuto with third eye
        },
        desc = "A black-lacquered tansu containing the soul of bushido. Forged blades, ancestral armor, and relics of fallen clans await."
    },

    MonkeyKingsMischief = {
        name = "Monkey King's Mischief",
        price = 8888,  -- Lucky number in Chinese mythology
        isUnlocked = true,
        lootItems = {
            -- Common (40%)
            getLootDetails("Quarterstaff"),  -- Basic training staff
            getLootDetails("Pot Helmet"),  -- From his early days
            getLootDetails("Traveler's Boots"),  -- Worn during journey West
            getLootDetails("Round Shield"),
    
            -- Uncommon (30%)
            getLootDetails("Monkey King Bar"),  -- Size-changing staff (common variant)
            getLootDetails("Repeating Crossbow"),
            getLootDetails("Glaive"),
            getLootDetails("Wyvern Hide Boots"),
            getLootDetails("Short Bow"),

            -- Rare (20%)
            getLootDetails("Boots of Blistering Speed"),  -- Cloud-stepping practice
            getLootDetails("Griffon-Feather Cloak"),  -- Phoenix feather gift
            getLootDetails("Helm of the Lone Wolf"),  -- Rebel headgear
            getLootDetails("Sword of a Thousand Papercuts"),  -- Precision weapon
    
            -- Epic (9%)
            getLootDetails("Tenskwatawa"),  -- Storm staff
            getLootDetails("Cloak of Invisibility"),  -- Magic hair transformation
    
            -- Legendary (1%)
            getLootDetails("Cloak of Dramatic Billowing"),  -- Battle cloak
            getLootDetails("Ruyi Jingu Bang")  -- True divine staff
        },
        desc = "A chest that smells faintly of peaches and rebellion. Contents may include training relics, questionably obtained celestial gear, or that staff the Dragon King keeps filing complaints about."
    },

    Test = {
        name = "Test Loot Box",     -- 5 Junk, 3 Common, 1 Rare
        price = 250,
        isUnlocked = true,
        lootItems = {
            getLootDetails("Fork"),
            getLootDetails("Spoon"),
            getLootDetails("Butterknife"),
            getLootDetails("Rolling Pin"),
            getLootDetails("Cast Iron Pan"),
            getLootDetails("Training Sword"),
            getLootDetails("Woodchopper's Axe"),
            getLootDetails("Quarterstaff"),
            getLootDetails("Morningstar")
        },
        desc = "Loot box used for testing."
    },

    ThorsReliquary = {
        name = "Thor's Reliquary",
        price = 10000,  -- Divine artifacts command high prices
        isUnlocked = false,  -- Requires proving worthiness
        lootItems = {
            -- Common (Mortal items Thor collected) - 50%
            getLootDetails("Battleaxe"),
            getLootDetails("Heavy Crossbow"),
            getLootDetails("Chainmail Coif"),
            getLootDetails("Round Shield"),
            getLootDetails("Claymore"),
    
            -- Uncommon (Storm-touched items) - 30%
            getLootDetails("Thunder Maul"),
            getLootDetails("Tower Shield of the Bulwark"),
            getLootDetails("Wyvern Hide Boots"),
            getLootDetails("Flame Tongue Rapier"),
    
            -- Rare (Asgardian-tier) - 15%
            getLootDetails("Aegis"),
            getLootDetails("Greaves of the Seven-League Stride"),
            getLootDetails("Vajra"),
    
            -- Epic (Divine artifacts) - 4.9%
            getLootDetails("Gungnir"),
            getLootDetails("Tarnhelm"),
    
            -- Legendary (0.1%)
            getLootDetails("Mjölnir")
        },
        desc = "A rune-carved chest containing: mortal curios, 4 storm-kissed arms (30%), 3 Asgardian relics (15%), 2 divine treasures (4.9%), and a 0.1% chance of holding Mjölnir itself. Warning: Odin's gaze follows those who open it."
    },

    ScavengersCache = {
        name = "Scavenger's Cache",   -- 8 Junk, 5 Common, 2 Uncommon, 1 Rare
        price = 400,
        isUnlocked = true,
        lootItems = {
            -- Junk Items (8 - 50% chance)
            getLootDetails("Broken Dagger"),
            getLootDetails("Wooden Plank"),
            getLootDetails("Torn Sack"),
            getLootDetails("Dull Hatchet"),
            getLootDetails("Bent Crowbar"),
            getLootDetails("Rusty Spoon"),
            getLootDetails("Long Stick"),
            getLootDetails("Cast Iron Pan"),
    
            -- Common Items (5 - 31.25% chance)
            getLootDetails("Training Sword"),
            getLootDetails("Leather Armor"),
            getLootDetails("Quarterstaff"),
            getLootDetails("Round Shield"),
            getLootDetails("Pot Helmet"),
    
            -- Uncommon Items (2 - 12.5% chance)
            getLootDetails("Serrated Dirk"),
            getLootDetails("Brigandine Vest"),
    
            -- Rare Item (1 - 6.25% chance)
            getLootDetails("Morningstar")
        },
        desc = "A collection of discarded gear with a small chance of finding something valuable. Contains 8 junk items, 5 common, 2 uncommon, and 1 rare item."
    },

    PaupersPurse = {
        name = "Pauper's Purse",  -- 12 Junk, 4 Common, 1 Rare
        price = 25,
        isUnlocked = true,
        lootItems = {
            -- Junk Items (12)
            getLootDetails("Rusty Spoon"),
            getLootDetails("Torn Sack"),
            getLootDetails("Broken Dagger"),
            getLootDetails("Dull Hatchet"),
            getLootDetails("Wooden Plank"),
            getLootDetails("Fork"),
            getLootDetails("Spoon"), 
            getLootDetails("Bent Crowbar"),
            getLootDetails("Rolling Pin"),
            getLootDetails("Long Stick"),
            getLootDetails("Lute"),
            getLootDetails("Slingshot"),
    
            -- Common Items (4)
            getLootDetails("Pot Helmet"),
            getLootDetails("Claymore"),
            getLootDetails("Woodchopper's Axe"),
            getLootDetails("Round Shield"),
    
            -- Rare Item (1)
            getLootDetails("Blade of Missed Opportunities")
        },
        desc = "A stained burlap sack containing someone else's regrets."
    },

    AdventurersGambit = {
        name = "Adventurer's Gambit",     -- 9 Junk, 6 Common, 3 Uncommon, 1 Rare
        price = 200,
        isUnlocked = true,
        lootItems = {
            -- Junk Items (9)
            getLootDetails("Fork"),
            getLootDetails("Spoon"),
            getLootDetails("Broken Dagger"),
            getLootDetails("Rusty Spoon"),
            getLootDetails("Long Stick"),
            getLootDetails("Torn Sack"),
            getLootDetails("Dull Hatchet"),
            getLootDetails("Wooden Plank"),
            getLootDetails("Bent Crowbar"),
            
            -- Common Items (6)
            getLootDetails("Training Sword"),
            getLootDetails("Woodchopper's Axe"),
            getLootDetails("Leather Armor"),
            getLootDetails("Round Shield"),
            getLootDetails("Bullwhip"),
            getLootDetails("Pot Helmet"),
            
            -- Uncommon Items (3)
            getLootDetails("Serrated Dirk"),
            getLootDetails("Brigandine Vest"),
            getLootDetails("Tower Shield"),
            
            -- Rare Item (1)
            getLootDetails("Morningstar")
        },
        desc = "A balanced loot box for aspiring adventurers. Contains mostly junk with a chance for something truly valuable."
    }
}

return lootBoxes