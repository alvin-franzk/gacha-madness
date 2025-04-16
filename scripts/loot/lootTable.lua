local lootTable = {
    Junk = {
        {
            name = "Fork",
            itemType = "Dagger",
            rarity = "Junk",
            value = 2,
            desc = "Great for stabbing salads—or eyes, if you’re *really* committed."
        },
        {
            name = "Spoon",
            itemType = "Dagger",
            rarity = "Junk",
            value = 2,
            desc = "The weapon of a starving poet. Deals 1 damage (emotional)."
        },
        {
            name = "Butterknife",
            itemType = "Dagger",
            rarity = "Junk",
            value = 3,
            desc = "Spreadable doom. Might cut bread, if the bread cooperates."
        },
        {
            name = "Rolling Pin",
            itemType = "Mace",
            rarity = "Junk",
            value = 2,
            desc = "For bashing skulls or dough. Either way, someone’s getting flattened."
        },
        {
            name = "Cast Iron Pan",
            itemType = "Mace",
            rarity = "Junk",
            value = 10,
            desc = "Heirloom-quality face-smashing. Grandma would be proud (or horrified)."
        },
        {
            name = "Long Stick",
            itemType = "Staff",
            rarity = "Junk",
            value = 5,
            desc = "Nature’s ‘magic wand.’ Casts *Bonk* and *Trip Over Roots* at will."
        },
        {
            name = "Lute",
            itemType = "Mace",
            rarity = "Junk",
            value = 20,
            desc = "Doubles as a weapon—because nothing says ‘adventurer’ like bludgeoning a goblin with a D-minor chord."
        },
        {
            name = "Slingshot",
            itemType = "Sling",
            rarity = "Junk",
            value = 10,
            desc = "For when you want to annoy a squirrel—or *almost* hit a dragon’s eye."
        },
        {
            name = "Broken Dagger",
            itemType = "Dagger",
            rarity = "Junk",
            value = 5,
            desc = "More hilt than blade. Perfect for stabbing butter, or your dignity."
        },
        {
            name = "Rusty Spoon",
            itemType = "Dagger",
            rarity = "Junk",
            value = 1,
            desc = "A ‘treasure’ dug from a goblin latrine. Smells like regret."
        },
        {
            name = "Wooden Plank",
            itemType = "Shield",
            rarity = "Junk",
            value = 8,
            desc = "Splinters are the real threat. Blocks sunlight, not swords."
        },
        {
            name = "Torn Sack",
            itemType = "Clothing",
            rarity = "Junk",
            value = 3,
            desc = "Fashionable? No. Breathable? Also no. Free? Sadly, yes."
        },
        {
            name = "Bent Crowbar",
            itemType = "Warpick",
            rarity = "Junk",
            value = 20,
            desc = "Opens doors—if you’re okay with the door opening *you* first."
        },
        {
            name = "Dull Hatchet",
            itemType = "Axe",
            rarity = "Junk",
            value = 15,
            desc = "Chop wood… slowly. Very slowly. Like, ‘give up’ slowly."
        }
    },
    Common = {
        {
            name = "Training Sword",
            itemType = "Sword",
            rarity = "Common",
            value = 20,
            desc = "Blunt enough to teach discipline, sharp enough to bruise egos."
        },
        {
            name = "Woodchopper's Axe",
            itemType = "Axe",
            rarity = "Common",
            value = 25,
            desc = "Chops wood, orcs, and dreams of becoming a ‘real’ weapon someday."
        },
        {
            name = "Quarterstaff",
            itemType = "Staff",
            rarity = "Common",
            value = 50,
            desc = "The go-to weapon for monks, wizards, and people who hate sharp objects."
        },
        {
            name = "Claymore",
            itemType = "Greatsword",
            rarity = "Common",
            value = 80,
            desc = "Less a sword, more a ‘personal statement.’ Statement: ‘I overcompensate.’"
        },
        {
            name = "Battleaxe",
            itemType = "Greataxe",
            rarity = "Common",
            value = 100,
            desc = "For when you need to cleave skulls *and* your party’s patience in half."
        },
        {
            name = "Bullwhip",
            itemType = "Whip",
            rarity = "Common",
            value = 25,
            desc = "Cracks loudly, hurts mildly. Mostly used to intimidate interns."
        },
        {
            name = "Chain Flail",
            itemType = "Flail",
            rarity = "Common",
            value = 60,
            desc = "The weapon of choice for people who hate their wrists—and physics."
        },
        {
            name = "Shepherd’s Sling",
            itemType = "Sling",
            rarity = "Common",
            value = 20,
            desc = "Killed Goliath. Won’t kill much else. Pebbles sold separately."
        },
        {
            name = "Duelist's Rapier",
            itemType = "Rapier",
            rarity = "Common",
            value = 75,
            desc = "For poking holes in enemies—and your own inflated reputation."
        },
        {
            name = "Heavy Crossbow",
            itemType = "Crossbow",
            rarity = "Common",
            value = 90,
            desc = "Reloads slower than a tax refund. Hits like a drunken mule."
        },
        {
            name = "Leather Armor",
            itemType = "Chestplate",
            rarity = "Common",
            value = 40,
            desc = "Stylishly rugged. Ruggedly flammable. Protects against glances, not swords."
        },
        {
            name = "Pot Helmet",
            itemType = "Helmet",
            rarity = "Common",
            value = 20,
            desc = "Doubles as cookware. Smells like soup and poor financial planning."
        },
        {
            name = "Chainmail Coif",
            itemType = "Helmet",
            rarity = "Common",
            value = 60,
            desc = "Protects your head—and guarantees you’ll never hear compliments again."
        },
        {
            name = "Iron Gauntlets",
            itemType = "Gauntlets",
            rarity = "Common",
            value = 45,
            desc = "Great for punching. Terrible for knitting. Choose violence."
        },
        {
            name = "Studded Pauldrons",
            itemType = "Pauldrons",
            rarity = "Common",
            value = 55,
            desc = "Adds +2 Intimidation. -5 to fitting through doorways."
        },
        {
            name = "Traveler's Boots",
            itemType = "Boots",
            rarity = "Common",
            value = 30,
            desc = "Walk miles in these! (Blisters, regrets, and sole separation included.)"
        },
        {
            name = "Round Shield",
            itemType = "Shield",
            rarity = "Common",
            value = 50,
            desc = "Blocks attacks, sunlight, and meaningful social interactions."
        }
    },
    Uncommon = {
        {
            name = "Bludgeon",
            itemType = "Mace",
            rarity = "Uncommon",
            value = 100,
            desc = "A ‘refined’ club. The craftsmanship says ‘artisan,’ the bloodstains say ‘barbarian.’"
        },
        {
            name = "Scimitar",
            itemType = "Sword",
            rarity = "Uncommon",
            value = 125,
            desc = "Curved. Elegant. Perfect for slicing fruit—or femoral arteries."
        },
        {
            name = "Short Bow",
            itemType = "Shortbow",
            rarity = "Uncommon",
            value = 150,
            desc = "For rangers who value speed over dignity. Arrows sold separately (and expensively)."
        },
        {
            name = "Halberd",
            itemType = "Polearm",
            rarity = "Uncommon",
            value = 175,
            desc = "Part axe, part spear, all ‘get off my lawn.’ Reach advantage, cleaning disadvantage."
        },
        {
            name = "War Hammer",
            itemType = "Greathammer",
            rarity = "Uncommon",
            value = 200,
            desc = "Sends foes flying—and your chiropractor’s kids to college."
        },
        {
            name = "Monkey King Bar",
            itemType = "Staff",
            rarity = "Uncommon",
            value = 200,
            desc = "A legendary size-changing staff owned by the Monkey King. A tag is attached that says: *Made in China.*"
        },
        {
            name = "Serrated Dirk",
            itemType = "Dagger",
            rarity = "Uncommon",
            value = 120,
            desc = "For when you want your backstabs to *hurt*—not just physically, but spiritually."
        },
        {
            name = "Repeating Crossbow",
            itemType = "Crossbow",
            rarity = "Uncommon",
            value = 180,
            desc = "Fires three bolts before jamming. Perfect for overconfidence and sudden regret."
        },
        {
            name = "Glaive",
            itemType = "Polearm",
            rarity = "Uncommon",
            value = 160,
            desc = "Sweeps legs like a bard sweeps regrets under the tavern floorboards."
        },
        {
            name = "Flame Tongue Rapier",
            itemType = "Rapier",
            rarity = "Uncommon",
            value = 190,
            desc = "The blade glows! (Note: Glow does not equal ‘actually on fire.’ Manage expectations.)"
        },
        {
            name = "Spiked Chain",
            itemType = "Flail",
            rarity = "Uncommon",
            value = 140,
            desc = "A weapon for those who think ‘whip’ and ‘porcupine’ had a baby. A *violent* baby."
        },
        {
            name = "Brigandine Vest",
            itemType = "Chestplate",
            rarity = "Uncommon",
            value = 150,
            desc = "Leather outside, metal plates inside. Like a sandwich, but for avoiding death."
        },
        {
            name = "Sallet Helm",
            itemType = "Helmet",
            rarity = "Uncommon",
            value = 130,
            desc = "Covers your face so enemies can’t see you weep after missing your attack."
        },
        {
            name = "Tower Shield",
            itemType = "Shield",
            rarity = "Uncommon",
            value = 170,
            desc = "Doubles as a portable wall. Triples as a sled if you’re desperate."
        },
        {
            name = "Wyvern Hide Boots",
            itemType = "Boots",
            rarity = "Uncommon",
            value = 110,
            desc = "Made from ‘wyvern’ (read: angry lizard). Waterproof. Pride-proof. Not claw-proof."
        },
        {
            name = "Gauntlets of Grip",
            itemType = "Gauntlets",
            rarity = "Uncommon",
            value = 120,
            desc = "Never drop your weapon! (Disclaimer: May also never *release* your weapon. Seek help.)"
        }
    },
    Rare = {
        {
            name = "Morningstar",
            itemType = "Mace",
            rarity = "Rare",
            value = 200,
            desc = "Spikes forged from fallen stars. Or maybe just really pointy iron. Either way, it *hurts*."
        },
        {
            name = "Tanto",
            itemType = "Dagger",
            rarity = "Rare",
            value = 250,
            desc = "A blade so sharp it cuts through armor—and your patience when you misplace it."
        },
        {
            name = "Daikyu",
            itemType = "Longbow",
            rarity = "Rare",
            value = 300,
            desc = "Fires arrows with the grace of a crane—and the stopping power of a charging ox."
        },
        {
            name = "Arbalest",
            itemType = "Crossbow",
            rarity = "Rare",
            value = 350,
            desc = "Punches through castle walls. Reloads at the speed of bureaucracy."
        },
        {
            name = "Katana",
            itemType = "Sword",
            rarity = "Rare",
            value = 400,
            desc = "Folded a thousand times to slice fate itself. Also good for chopping vegetables."
        },
        {
            name = "Executioner's Axe",
            itemType = "Greataxe",
            rarity = "Rare",
            value = 380,
            desc = "Heavy enough to split a man in two—light enough to make you *wish* you were stronger."
        },
        {
            name = "Glaive of Winds",
            itemType = "Polearm",
            rarity = "Rare",
            value = 320,
            desc = "Whistles ominously when swung. Enemies find it less amusing than you do."
        },
        {
            name = "Venomfang Rapier",
            itemType = "Rapier",
            rarity = "Rare",
            value = 280,
            desc = "Dripping with poison (metaphorically). The actual poison costs extra."
        },
        {
            name = "Thunder Maul",
            itemType = "Greathammer",
            rarity = "Rare",
            value = 360,
            desc = "Crackles with latent lightning. Not enough to stun—just enough to tingle."
        },
        {
            name = "Shadowstrike Bow",
            itemType = "Shortbow",
            rarity = "Rare",
            value = 310,
            desc = "Silent as moonlight. Deadly as a tax audit. Arrows phase through cover (sometimes)."
        },
        {
            name = "Dragonhide Cuirass",
            itemType = "Chestplate",
            rarity = "Rare",
            value = 390,
            desc = "Scales tougher than a dragon's ego. Smells like one too."
        },
        {
            name = "Griffon-Feather Cloak",
            itemType = "Clothing",
            rarity = "Rare",
            value = 220,
            desc = "Grants +10% chance to impress nobles—and 100% chance to anger griffons."
        },
        {
            name = "Tower Shield of the Bulwark",
            itemType = "Shield",
            rarity = "Rare",
            value = 370,
            desc = "Legend says it once blocked a giant's club. The dent says otherwise."
        },
        {
            name = "Helm of the Lone Wolf",
            itemType = "Helmet",
            rarity = "Rare",
            value = 260,
            desc = "Grants unparalleled focus—and a crippling fear of teamwork."
        },
        {
            name = "Gauntlets of the Iron Grip",
            itemType = "Gauntlets",
            rarity = "Rare",
            value = 290,
            desc = "Crush rocks, skulls, and—occasionally—your own drink. No refunds."
        },
        {
            name = "Blade of Missed Opportunities",
            itemType = "Greatsword",
            rarity = "Rare",
            value = 380,
            desc = "Crits only when you don't need it. The universe finds this hilarious."
        },
        {
            name = "Staff of the Prismatic Chicken",
            itemType = "Staff",
            rarity = "Rare",
            value = 320,
            desc = "Once belonged to a wizard who polymorphed himself into a rooster. Still clucks when dropped."
        },
        {
            name = "Whip of the Guilty",
            itemType = "Whip",
            rarity = "Rare",
            value = 270,
            desc = "Cracks with the sound of a judge's gavel. Perfect for courtroom drama—or dungeon drama."
        },
        {
            name = "Axe of the Shattered Moon",
            itemType = "Greataxe",
            rarity = "Rare",
            value = 390,
            desc = "Legend claims it can cleave celestial bodies. Reality: It's just *really* shiny."
        },
        {
            name = "Crossbow of the Overcompensator",
            itemType = "Crossbow",
            rarity = "Rare",
            value = 360,
            desc = "Fires bolts the size of fence posts. Comes with a free hernia."
        },
        {
            name = "Boots of Blistering Speed",
            itemType = "Boots",
            rarity = "Rare",
            value = 220,
            desc = "You're fast, but oh god, the chafing. Worth it? Debatable."
        },
        {
            name = "Pauldrons of the Inferiority Complex",
            itemType = "Pauldrons",
            rarity = "Rare",
            value = 310,
            desc = "Grants +5 Intimidation. Also +5 to accidentally doorframes."
        },
        {
            name = "Chestplate of the Martyr",
            itemType = "Chestplate",
            rarity = "Rare",
            value = 340,
            desc = "Absorbs damage for allies—and their insults. 'Take the hit' takes on new meaning."
        },
        {
            name = "Gauntlets of the Pacifist",
            itemType = "Gauntlets",
            rarity = "Rare",
            value = 290,
            desc = "Deals nonlethal damage automatically. Great for cops, bad for assassins."
        },
        {
            name = "Helm of the Unseen Nose",
            itemType = "Helmet",
            rarity = "Rare",
            value = 260,
            desc = "Your face is invisible. Your sneezes are *alarmingly loud*."
        },
        {
            name = "Sword of a Thousand Papercuts",
            itemType = "Sword",
            rarity = "Rare",
            value = 400,
            desc = "Each swing deals 1 damage… a thousand times. The ultimate war crime."
        },
        {
            name = "Shield of the Klutz",
            itemType = "Shield",
            rarity = "Rare",
            value = 210,
            desc = "Blocks all attacks—when you're not tripping over it."
        }
    },
    Epic = {
        {
            name = "Excalibur",
            itemType = "Greatsword",
            rarity = "Epic",
            value = 400,
            desc = "Pulled from a stone by a king, now stuck in a dungeon chest. How the mighty have fallen."
        },
        {
            name = "Tenskwatawa",
            itemType = "Staff",
            rarity = "Epic",
            value = 600,
            desc = "Channel the wrath of storms—or just use it to poke things from a safe distance."
        },
        {
            name = "Masamune",
            itemType = "Greatsword",
            rarity = "Epic",
            value = 800,
            desc = "Forged by a master smith who never smiled. Cuts so cleanly, your enemies won't even realize they're dead."
        },
        {
            name = "Bow of Artemis",
            itemType = "Longbow",
            rarity = "Epic",
            value = 650,
            desc = "Never misses… unless you're aiming at something important. Then it's a coin flip."
        },
        {
            name = "Blade of the Phoenix",
            itemType = "Sword",
            rarity = "Epic",
            value = 700,
            desc = "Burns with eternal flames. Scabbard sold separately (and is highly recommended)."
        },
        {
            name = "Gungnir",
            itemType = "Polearm",
            rarity = "Epic",
            value = 550,
            desc = "Odin's spear. Always hits its mark—unless you're the one throwing it."
        },
        {
            name = "Dagger of Time",
            itemType = "Dagger",
            rarity = "Epic",
            value = 500,
            desc = "Rewinds time by 3 seconds after each stab. Mostly used to undo embarrassing misses."
        },
        {
            name = "Cursed Shield of the Gods",
            itemType = "Shield",
            rarity = "Epic",
            value = 800,
            desc = "Blocks all mortal attacks. Does not block existential dread."
        },
        {
            name = "Armor of the Titan",
            itemType = "Chestplate",
            rarity = "Epic",
            value = 750,
            desc = "Makes you nigh-invulnerable—and nigh-immobile. Hope you like standing still."
        },
        {
            name = "Helm of the All-Seeing",
            itemType = "Helmet",
            rarity = "Epic",
            value = 600,
            desc = "See everything, know everything… and still make terrible decisions."
        },
        {
            name = "Boots of Hermes",
            itemType = "Boots",
            rarity = "Epic",
            value = 700,
            desc = "Run faster than the wind—and trip harder than a drunkard."
        },
        {
            name = "Gauntlets of the Titan",
            itemType = "Gauntlets",
            rarity = "Epic",
            value = 650,
            desc = "Lift mountains… or just really heavy chests. Either way, your back is safe."
        },
        {
            name = "Sword of a Thousand Truths",
            itemType = "Greatsword",
            rarity = "Epic",
            value = 800,
            desc = "It whispers secrets to you. Mostly about how bad your swordplay is."
        },
        {
            name = "Cloak of Invisibility",
            itemType = "Clothing",
            rarity = "Epic",
            value = 500,
            desc = "Turns you invisible—except to anyone with a decent Perception check. So, basically just pets and toddlers."
        }
    },
    Legendary = {
        {
            name = "Ruyi Jingu Bang",
            itemType = "Staff",
            rarity = "Legendary",
            value = 1600,
            desc = "Extends to pierce the heavens. Collapses to stub your toe. The Monkey King's favorite prank."
        },
        {
            name = "Mjölnir",
            itemType = "Greathammer",
            rarity = "Legendary",
            value = 1400,
            desc = "Worthy? No. But you can still use it to hammer tent stakes… if you can lift it."
        },
        {
            name = "Shamsir-e Zomorrodnegar",
            itemType = "Sword",
            rarity = "Legendary",
            value = 1200,
            desc = "Cuts through lies, armor, and the fourth wall. Handle with care (and meta-awareness)."
        },
        {
            name = "Zeus' Thunderbolt",
            itemType = "Sling",
            rarity = "Legendary",
            value = 1000,
            desc = "Unleashes divine wrath. Battery not included (and Olympus doesn't offer replacements)."
        },
        {
            name = "Sharur",
            itemType = "Mace",
            rarity = "Legendary",
            value = 800,
            desc = "Talks. Argues. Judges your life choices. Hits like a therapist's invoice."
        },
        {
            name = "Gáe Bulg",
            itemType = "Polearm",
            rarity = "Legendary",
            value = 1500,
            desc = "Strikes with the fury of a cursed destiny. Also makes a decent fishing spear."
        },
        {
            name = "Kusanagi-no-Tsurugi",
            itemType = "Sword",
            rarity = "Legendary",
            value = 1300,
            desc = "Controls the winds. Doesn't control your impulse to dramatically sheathe it mid-battle."
        },
        {
            name = "Vajra",
            itemType = "Mace",
            rarity = "Legendary",
            value = 1100,
            desc = "Indra's lightning in mace form. Warning: Do not use during thunderstorms (yes, really)."
        },
        {
            name = "Dáinsleif",
            itemType = "Sword",
            rarity = "Legendary",
            value = 900,
            desc = "Cursed to kill every time it's drawn. Also cursed to get stuck in its scabbard at the worst moment."
        },
        {
            name = "Bow of Odysseus",
            itemType = "Longbow",
            rarity = "Legendary",
            value = 1200,
            desc = "Only the worthy can string it. Everyone else just looks foolish trying."
        },
        {
            name = "Aegis",
            itemType = "Shield",
            rarity = "Legendary",
            value = 1600,
            desc = "Bears the head of Medusa. Stares optional, petrification highly likely."
        },
        {
            name = "Armor of Achilles",
            itemType = "Chestplate",
            rarity = "Legendary",
            value = 1400,
            desc = "Invulnerable, except for that *one spot* you keep forgetting to cover."
        },
        {
            name = "Helm of Hades",
            itemType = "Helmet",
            rarity = "Legendary",
            value = 1300,
            desc = "Turns you invisible. Also turns your voice eerily echoey. Stealth checks not guaranteed."
        },
        {
            name = "Tarnhelm",
            itemType = "Helmet",
            rarity = "Legendary",
            value = 1100,
            desc = "Shape-shifts the wearer. Side effects may include existential dysphoria."
        },
        {
            name = "Greaves of the Seven-League Stride",
            itemType = "Boots",
            rarity = "Legendary",
            value = 900,
            desc = "Seven leagues per step. Zero coordination per landing. Trees hate this trick."
        },
        {
            name = "Sword of Plot Convenience",
            itemType = "Greatsword",
            rarity = "Legendary",
            value = 1500,
            desc = "Deals exactly enough damage to win the fight. DM's patience not included."
        },
        {
            name = "Cloak of Dramatic Billowing",
            itemType = "Clothing",
            rarity = "Legendary",
            value = 800,
            desc = "Billows on command. No wind required. Villains *hate* this one simple trick."
        }
    },
    Mythical = {
        {
            name = "Daedalus",
            itemType = "Crossbow",
            rarity = "Mythical",
            value = 2400,
            desc = "Fires bolts that rewrite trajectories mid-flight. Also occasionally opens portals to embarrassing moments in your past."
        },
        {
            name = "Crystalys",
            itemType = "Sword",
            rarity = "Mythical",
            value = 2000,
            desc = "A blade forged from crystallized time. Cuts through enemies—and occasionally their *future descendants*."
        },
        {
            name = "Octarine Core",
            itemType = "Artifact",
            rarity = "Mythical",
            value = 1600,
            desc = "The color of magic. Also the color of existential dread when you realize you've been holding it upside down."
        },
        {
            name = "The Ouroboros Blade",
            itemType = "Greatsword",
            rarity = "Mythical",
            value = 3200,
            desc = "A serpentine sword that devours its own damage. Each strike heals the enemy... then retroactively undoes the healing. Yes, it's confusing."
        },
        {
            name = "Singularity Bow",
            itemType = "Longbow",
            rarity = "Mythical",
            value = 2800,
            desc = "Fires arrows that collapse into black holes. Ammunition not recoverable. Arrows not refundable. Reality not guaranteed."
        },
        {
            name = "The Grandfather Paradox",
            itemType = "Dagger",
            rarity = "Mythical",
            value = 2600,
            desc = "Stab someone so hard, they were *never born*. Warning: May cause timeline audits."
        },
        {
            name = "The Schrödinger's Axe",
            itemType = "Greataxe",
            rarity = "Mythical",
            value = 3000,
            desc = "Simultaneously exists and doesn't exist. Deals double damage until observed, then deals *emotional* damage."
        },
        {
            name = "The Prism of Infinite Reflection",
            itemType = "Staff",
            rarity = "Mythical",
            value = 2200,
            desc = "Casts every spell ever. Also casts spells that *haven't been invented yet*. Side effects include déjà vu and copyright lawsuits."
        },
        {
            name = "Armor of Quantum Uncertainty",
            itemType = "Chestplate",
            rarity = "Mythical",
            value = 3200,
            desc = "You're both hit and not hit until the DM rolls. Schrodinger's defense."
        },
        {
            name = "The Boots of Backwards Momentum",
            itemType = "Boots",
            rarity = "Mythical",
            value = 2400,
            desc = "Walk forward in time, backward in space. Stairs become a *conceptual nightmare*."
        },
        {
            name = "The Crown of the Absolute",
            itemType = "Helmet",
            rarity = "Mythical",
            value = 2800,
            desc = "Grants omniscience. Also grants the crushing realization that the DM's notes make no sense."
        },
        {
            name = "The Shield of Negative Probability",
            itemType = "Shield",
            rarity = "Mythical",
            value = 2600,
            desc = "Has a 120% chance to block attacks. The extra 20% comes from *next Tuesday*."
        },
        {
            name = "The Tesseract Core",
            itemType = "Artifact",
            rarity = "Mythical",
            value = 3000,
            desc = "Contains a universe. Battery life: 1d20 aeons. User manual: *lost to time*."
        },
        {
            name = "The Dice of Divine Intervention",
            itemType = "Artifact",
            rarity = "Mythical",
            value = 2000,
            desc = "Roll a d100. On a 1, the DM *rewrites your backstory*. On a 100, the DM cries."
        },
        {
            name = "The Hourglass of Entropy",
            itemType = "Artifact",
            rarity = "Mythical",
            value = 1800,
            desc = "Speeds up time for enemies. Slows down time for you. Does nothing to deadlines."
        }
    },
    Arcane = {
        {
            name = "Fractal Horns of Inner Abysm",
            itemType = "Helmet",
            rarity = "Arcane",
            value = 6400,
            desc = "Grants infinite knowledge. Also grants infinite migraines. The universe whispers to you—mostly complaints."
        },
        {
            name = "Demon Eater",
            itemType = "Greatsword",
            rarity = "Arcane",
            value = 6000,
            desc = "Feasts on demon souls. Occasionally belches hellfire. Comes with a demonic weight-loss plan."
        },
        {
            name = "Blades of Voth Domosh",
            itemType = "Sword",
            rarity = "Arcane",
            value = 5600,
            desc = "Twin blades that cut through dimensions. Warning: May accidentally sever your own timeline."
        },
        {
            name = "Manifold Paradox",
            itemType = "Dagger",
            rarity = "Arcane",
            value = 3200,
            desc = "Stabs all versions of the target simultaneously. Including the ones you *liked*."
        },
        {
            name = "The Godslayer's Guillotine",
            itemType = "Greataxe",
            rarity = "Arcane",
            value = 6400,
            desc = "Axe so sharp it severs divine portfolios. Killing a god of war? Congrats, you're now the god of *awkward silences*."
        },
        {
            name = "Eventide Reaper",
            itemType = "Scythe",
            rarity = "Arcane",
            value = 5800,
            desc = "Harvests souls like wheat. Comes with a free existential crisis (yours or theirs)."
        },
        {
            name = "The Omniversal Keyblade",
            itemType = "Sword",
            rarity = "Arcane",
            value = 5400,
            desc = "Unlocks any door—including the ones reality *really* wants to keep closed."
        },
        {
            name = "Singularity Gauntlet",
            itemType = "Gauntlets",
            rarity = "Arcane",
            value = 5000,
            desc = "Punches with the mass of a collapsing star. Also crushes snacks *by accident*."
        },
        {
            name = "Armor of the Forgotten Pantheon",
            itemType = "Chestplate",
            rarity = "Arcane",
            value = 6200,
            desc = "Bears the sigils of dead gods. Grants their power—and their unfinished business."
        },
        {
            name = "Boots of the Event Horizon",
            itemType = "Boots",
            rarity = "Arcane",
            value = 4800,
            desc = "Walk so fast, time slows down. Unfortunately, light *also* slows down. Welcome to Perpetual Twilight."
        },
        {
            name = "Crown of the First and Final King",
            itemType = "Helmet",
            rarity = "Arcane",
            value = 5200,
            desc = "You were always the ruler. You will always be the ruler. The rebellion is *part of the script*."
        },
        {
            name = "Shield of the Broken Covenant",
            itemType = "Shield",
            rarity = "Arcane",
            value = 4600,
            desc = "Blocks all damage. Also blocks divine intervention. Gods *hate* this one trick."
        },
        {
            name = "The Tome of Absolute Zero",
            itemType = "Artifact",
            rarity = "Arcane",
            value = 6400,
            desc = "Contains the spell that ends all spells. The last page is just a recipe for soup."
        },
        {
            name = "The Loom of Fate",
            itemType = "Artifact",
            rarity = "Arcane",
            value = 6000,
            desc = "Weave destiny like yarn. Tangle it like headphones. The Fates are *judging you*."
        },
        {
            name = "The Black Monolith",
            itemType = "Artifact",
            rarity = "Arcane",
            value = 5600,
            desc = "Answers any question with 100% accuracy. Answers are in a language *no one remembers*."
        }
    },
    Demonic = {
        {
            name = "Great Sage's Reckoning",
            itemType = "Staff",
            rarity = "Demonic",
            value = 12800,
            desc = "A staff forged from the spine of a god who asked too many questions. Now it whispers the answers—usually in screams."
        },
        {
            name = "Call of the Bladeform Legacy",
            itemType = "Sword",
            rarity = "Demonic",
            value = 12800,
            desc = "This blade remembers every kill—including the ones *you haven't committed yet*. It's very impatient."
        },
        {
            name = "The Soulforged Maw",
            itemType = "Greatsword",
            rarity = "Demonic",
            value = 12800,
            desc = "A sentient blade that devours souls. It critiques your technique. Loudly. In front of your enemies."
        },
        {
            name = "Apocalypse's Trigger",
            itemType = "Crossbow",
            rarity = "Demonic",
            value = 11200,
            desc = "Fires bolts tipped with dying stars. Reloading requires a sacrifice (a snack won't cut it)."
        },
        {
            name = "The Infernal Accordion",
            itemType = "Mace",
            rarity = "Demonic",
            value = 9600,
            desc = "Crush skulls while playing a jaunty tune. Demons love polka. Who knew?"
        },
        {
            name = "The Blood-Tyrant's Claw",
            itemType = "Gauntlets",
            rarity = "Demonic",
            value = 10400,
            desc = "Your fists drip with the blood of a thousand tyrants. Also, they're *really* hard to wash."
        },
        {
            name = "Armor of the Damned Choir",
            itemType = "Chestplate",
            rarity = "Demonic",
            value = 12800,
            desc = "Plated with the wails of the eternally tortured. Grants +10 Intimidation, -10 to Silence checks."
        },
        {
            name = "Horns of the Endless Conquest",
            itemType = "Helmet",
            rarity = "Demonic",
            value = 11200,
            desc = "Grows taller with every victory. Eventually, you'll need to duck through *realms*."
        },
        {
            name = "Boots of the Forsaken March",
            itemType = "Boots",
            rarity = "Demonic",
            value = 9600,
            desc = "Each step echoes with the footsteps of a dead army. Great for intimidation, terrible for naptime."
        },
        {
            name = "Shield of the Vanquished Sun",
            itemType = "Shield",
            rarity = "Demonic",
            value = 10400,
            desc = "Absorbs light. Absorbs hope. Does *not* absorb criticism."
        },
        {
            name = "The Black Contract",
            itemType = "Artifact",
            rarity = "Demonic",
            value = 12800,
            desc = "Sign in blood to rewrite reality. Fine print includes *eternal servitude* and *mandatory snack sacrifices*."
        },
        {
            name = "The Infernal Core",
            itemType = "Artifact",
            rarity = "Demonic",
            value = 11200,
            desc = "A pulsating heart of pure chaos. Grants unlimited power—and unlimited indigestion."
        },
        {
            name = "The Abyssal Tome",
            itemType = "Artifact",
            rarity = "Demonic",
            value = 9600,
            desc = "Contains spells that *should not exist*. Also contains doodles of demons in silly hats."
        }
    },
    Voidlike = {
        {
            name = "Planetfall",
            itemType = "Greathammer",
            rarity = "Voidlike",
            value = 25600,
            desc = "A hammer forged from the core of a dead star. Swings with the weight of a collapsing galaxy. Leaves craters where enemies *used to be*."
        },
        {
            name = "Claszian Apostasy",
            itemType = "Mace",
            rarity = "Voidlike",
            value = 24000,
            desc = "A weapon that exists in all timelines simultaneously. Hitting an enemy also hits their past, future, and alternate-reality selves. *Somehow, this is fair.*"
        },
        {
            name = "The Event Horizon Cleaver",
            itemType = "Greataxe",
            rarity = "Voidlike",
            value = 25600,
            desc = "Cuts so deep, it creates temporary black holes. Warning: May accidentally delete your save file."
        },
        {
            name = "Singularity Spear",
            itemType = "Polearm",
            rarity = "Voidlike",
            value = 22400,
            desc = "Stabs through dimensions. Also stabs through time. Occasionally stabs through *the fourth wall*."
        },
        {
            name = "The Null Reaper",
            itemType = "Scythe",
            rarity = "Voidlike",
            value = 20800,
            desc = "Harvests not just souls, but the *concept of existence* from its victims. Leaves behind perfect emptiness."
        },
        {
            name = "Oblivion's Fist",
            itemType = "Gauntlets",
            rarity = "Voidlike",
            value = 19200,
            desc = "Punches erase matter from reality. Comes with a complimentary existential crisis."
        },
        {
            name = "Armor of the Voidwalkers",
            itemType = "Chestplate",
            rarity = "Voidlike",
            value = 25600,
            desc = "Woven from the fabric of nothingness. Grants invulnerability—but also makes you *forgettable* to allies."
        },
        {
            name = "Helm of the Unmaker",
            itemType = "Helmet",
            rarity = "Voidlike",
            value = 24000,
            desc = "Grants omniscience. Also grants the crushing realization that *nothing matters*."
        },
        {
            name = "Boots of the Quantum Path",
            itemType = "Boots",
            rarity = "Voidlike",
            value = 22400,
            desc = "Walk all possible paths at once. Collapse into a single reality *only when observed*. Stairs are now your nemesis."
        },
        {
            name = "Shield of the Absent",
            itemType = "Shield",
            rarity = "Voidlike",
            value = 20800,
            desc = "Blocks attacks by *removing them from history*. Does not block *taxes* or *regret*."
        },
        {
            name = "The Paradox Core",
            itemType = "Artifact",
            rarity = "Voidlike",
            value = 25600,
            desc = "Contains the power to rewrite the universe. Also contains a sticky note that says *'Do Not Touch'* in divine script."
        },
        {
            name = "The Tome of the Unwritten",
            itemType = "Artifact",
            rarity = "Voidlike",
            value = 24000,
            desc = "A book filled with spells that *could have existed*. Using them may *unwrite* parts of reality. (DM discretion *strongly* advised.)"
        },
        {
            name = "The Hourglass of Entropy's End",
            itemType = "Artifact",
            rarity = "Voidlike",
            value = 22400,
            desc = "When flipped, stops time. Permanently. *Some assembly required.*"
        }
    },
    Divine = {
        {
            name = "The Divine Rapier",
            itemType = "Rapier",
            rarity = "Divine",
            value = 51200,
            desc = "A blade so perfect it cuts through fate itself. Drops on death—along with your dignity."
        },
        {
            name = "The Resurrection of Shendelzare",
            itemType = "Scythe",
            rarity = "Divine",
            value = 51200,
            desc = "Harvests life to restore life. The wielder becomes death, life, and the tax collector of souls."
        },
        {
            name = "Eternity's Edge",
            itemType = "Greatsword",
            rarity = "Divine",
            value = 51200,
            desc = "A sword forged from the first dawn. Each swing rewrites history—usually in your favor."
        },
        {
            name = "The Omnipotent Bow",
            itemType = "Longbow",
            rarity = "Divine",
            value = 48000,
            desc = "Fires arrows that always hit their mark—even if the target is in another timeline."
        },
        {
            name = "The Creator's Forgehammer",
            itemType = "Greathammer",
            rarity = "Divine",
            value = 51200,
            desc = "Strikes with the force of a newborn star. Also excellent for blacksmithing divine artifacts."
        },
        {
            name = "The Infinite Paradox",
            itemType = "Dagger",
            rarity = "Divine",
            value = 48000,
            desc = "Exists in all possible states at once. Somehow still gets stuck in its sheath."
        },
        {
            name = "Armor of the First Light",
            itemType = "Chestplate",
            rarity = "Divine",
            value = 51200,
            desc = "Worn by the first deity. Grants invincibility—and crippling divine responsibilities."
        },
        {
            name = "Crown of Absolute Dominion",
            itemType = "Helmet",
            rarity = "Divine",
            value = 48000,
            desc = "Commands the fabric of reality. Does not command respect."
        },
        {
            name = "Boots of the Divine Dance",
            itemType = "Boots",
            rarity = "Divine",
            value = 48000,
            desc = "Step across heavenly bodies in a single stride. Tripping still possible (but divinely embarrassing)."
        },
        {
            name = "Shield of the Unbreakable Covenant",
            itemType = "Shield",
            rarity = "Divine",
            value = 51200,
            desc = "Blocks all damage—past, present, and future. Does not block divine paperwork."
        },
        {
            name = "The Tome of Creation",
            itemType = "Artifact",
            rarity = "Divine",
            value = 51200,
            desc = "Contains the blueprints of existence. Last page reads: 'Good luck!'"
        },
        {
            name = "The Hourglass of Eternity",
            itemType = "Artifact",
            rarity = "Divine",
            value = 48000,
            desc = "Controls the flow of time. Sand is always stuck at the top when you need it most."
        },
        {
            name = "The Divine Paradox",
            itemType = "Artifact",
            rarity = "Divine",
            value = 51200,
            desc = "A gemstone that answers all questions with another question. Usually: 'Why?'"
        },
        {
            name = "Cloak of Divine Comedy",
            itemType = "Clothing",
            rarity = "Divine",
            value = 51200,
            desc = "Wear it to stroll through the Nine Hells unscathed—or to reduce archdevils to punchlines. Warning: Virgil's ghost will *judge your life choices*."
        }
    },
    Cosmic = {
        {
            name = "Eye of Cthulhu",
            itemType = "Artifact",
            rarity = "Cosmic",
            value = 102400,
            desc = "A pulsing orb of pure cosmic horror. Staring into it grants infinite knowledge—and infinite madness. Comes with a free existential crisis (non-refundable)."
        },
        {
            name = "Azhorra-Tha's Fury",
            itemType = "Sword",
            rarity = "Cosmic",
            value = 51200,
            desc = "Forged from the dying scream of a star. Each swing births a supernova. Sheathe not included (it burned away)."
        },
        {
            name = "The Omnislash",
            itemType = "Greatsword",
            rarity = "Cosmic",
            value = 102400,
            desc = "Cuts through all possible realities simultaneously. Wielder must pass a SAN check to avoid realizing *they're fictional*."
        },
        {
            name = "The Infinity Bow",
            itemType = "Longbow",
            rarity = "Cosmic",
            value = 76800,
            desc = "Fires arrows that exist in all timelines at once. Targets are hit *retroactively*—even if they dodged."
        },
        {
            name = "The Grandfather Paradox Hammer",
            itemType = "Greathammer",
            rarity = "Cosmic",
            value = 89600,
            desc = "Hits so hard, it erases the target's ancestors. Comes with a free time paradox (terms and conditions apply)."
        },
        {
            name = "The Quantum Dagger",
            itemType = "Dagger",
            rarity = "Cosmic",
            value = 64000,
            desc = "Exists in 13 states at once. Somehow still gets lost in your inventory."
        },
        {
            name = "Armor of the Multiverse",
            itemType = "Chestplate",
            rarity = "Cosmic",
            value = 102400,
            desc = "Woven from the fabric of alternate realities. Grants immunity to all damage—except from *your alternate selves*, who hate you."
        },
        {
            name = "Helm of the Cosmic Jester",
            itemType = "Helmet",
            rarity = "Cosmic",
            value = 76800,
            desc = "Grants omniscience. Also grants the crushing realization that *the universe is a joke*—and you're the punchline."
        },
        {
            name = "Boots of the Astral Dance",
            itemType = "Boots",
            rarity = "Cosmic",
            value = 89600,
            desc = "Step between dimensions as easily as breathing. Warning: May accidentally leave your soul in another plane."
        },
        {
            name = "Shield of the Absolute",
            itemType = "Shield",
            rarity = "Cosmic",
            value = 64000,
            desc = "Blocks all damage—including *narrative damage* from bad plot twists."
        },
        {
            name = "The Tome of Everything",
            itemType = "Artifact",
            rarity = "Cosmic",
            value = 102400,
            desc = "Contains all knowledge that ever was or will be. Last chapter is just a doodle of a cat wearing a crown."
        },
        {
            name = "The Cosmic Paradox Core",
            itemType = "Artifact",
            rarity = "Cosmic",
            value = 76800,
            desc = "A gemstone that answers all questions with *another question*. The ultimate cosmic 'U up?' text."
        }
    }
}

return lootTable