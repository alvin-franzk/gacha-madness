local audioModule = {}

-- Define a table to map audio types to file paths
local lootBoxSoundFiles = {
    Junk = "assets/sounds/opening_junk.mp3",      -- Replace with your actual file path
    Common = "assets/sounds/opening_common.mp3",  -- Replace with your actual file path
    Uncommon = "assets/sounds/opening_uncommon.mp3",
    Rare = "assets/sounds/opening_rare.mp3",
    Epic = "assets/sounds/opening_epic.mp3",
    Legendary = "assets/sounds/opening_legendary.mp3",
    Mythical = "assets/sounds/opening_mythical.mp3",
    Arcane = "assets/sounds/opening_arcane.mp3",
    Demonic = "assets/sounds/opening_demonic.mp3",
    Voidlike = "assets/sounds/opening_voidlike.mp3",
    Divine = "assets/sounds/opening_divine.mp3",
    Cosmic = "assets/sounds/opening_cosmic.mp3",

    noCurrency = "assets/sounds/no_currency.mp3",
    openLootBox = "assets/sounds/open_lootbox.mp3"
}

-- Function to play an audio file based on the type
function audioModule.playAudio(audioType)

    -- Get the file path based on the audio type
    local filePath = lootBoxSoundFiles[audioType]

    -- Check if the file path exists
    if filePath then
        -- Load the audio file
        local sound = audio.loadSound(filePath)

        -- Check if the sound was loaded successfully
        if sound then
            -- Play the audio
            audio.play(sound)
        else
            print("Error: Could not load audio file: " .. filePath)
        end
    else
        print("Error: Invalid audio type: " .. audioType)
    end
end

return audioModule