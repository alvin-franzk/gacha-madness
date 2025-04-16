-----------------------
--view_lootboxes.lua---
-----------------------
local widget = require("widget")
local composer = require( "composer" )
local scene = composer.newScene()
local lootBoxes = require("scripts.loot.lootBoxes")
local core = require("scripts.core.loot_mechanics")
local audioCue = require("scripts.audio.audio_cues")

local currentSortOrder = "Highest Value"
local scrollView, lootPopup

-- Helper function for rarity colors
local function getRarityColor(rarity)
    local colors = {
        Junk = {0.5, 0.5, 0.5},
        Common = {1, 1, 1},
        Uncommon = {0, 1, 0},
        Rare = {0, 0.5, 1},
        Epic = {0.6, 0, 1},
        Legendary = {1, 0.5, 0},
        Mythical = {1, 0, 0.5},
        Arcane = {0.8, 0, 0.8},
        Demonic = {0.8, 0.2, 0},
        Voidlike = {0.1, 0.1, 0.3},
        Divine = {1, 0.9, 0},
        Cosmic = {0.4, 0, 0.8}
    }
    return colors[rarity] or {1, 1, 1}
end

-- Scroll listener function
local function scrollListener(event)
    return true
end

-- Function to handle sort button tap
local function onSortTap()
    native.showAlert("Sort by", "Choose a sort option", { "Highest Value", "Lowest Value", "Alphabetical" }, function(event)
        if event.action == "clicked" then
            local index = event.index
            if index == 1 then
                currentSortOrder = "Highest Value"
            elseif index == 2 then
                currentSortOrder = "Lowest Value"
            elseif index == 3 then
                currentSortOrder = "Alphabetical"
            end
            scene.sortText.text = "Sort by: " .. currentSortOrder
        end
    end)
end

-- Create individual loot box item
local function createLootBoxItem(parentGroup, lootBox, yOffset)
    local container = display.newGroup()
    parentGroup:insert(container)

    -- Visual elements
    local lootBoxDiv = display.newRoundedRect(container, 150, yOffset, 280, 90, 10)
    lootBoxDiv:setFillColor(0.2, 0.2, 0.3)
    lootBoxDiv.lootBox = lootBox  -- Store reference here

    -- Text elements
    local lootBoxName = display.newText({
        parent = container,
        text = lootBox.name,
        x = 150,
        y = yOffset - 15,
        font = native.systemFontBold,
        fontSize = 20,
        width = 260
    })
    lootBoxName:setFillColor(1, 1, 1)

    local lootBoxPrice = display.newText({
        parent = container,
        text = "Price: " .. tostring(lootBox.price),
        x = 150,
        y = yOffset + 20,
        font = native.systemFont,
        fontSize = 16,
        width = 260
    })
    lootBoxPrice:setFillColor(0.8, 0.8, 0.8)

    -- Return both container AND touchArea
    return container, yOffset + 100
end

-- Show loot reward popup
function scene:showLootReward(reward)
    local rarityColor = getRarityColor(reward.rarity)

    lootPopup = display.newGroup()
    self.view:insert(lootPopup)
    local isPopupVisible = true

    -- Store reward in the popup group so it persists
    lootPopup.reward = reward

    -- Popup background
    local bg = display.newRoundedRect(lootPopup, display.contentCenterX, display.contentCenterY, 320, 360, 12)
    bg:setFillColor(0.15, 0.15, 0.2)
    bg.strokeWidth = 4
    bg:setStrokeColor(unpack(rarityColor))
    bg:addEventListener("tap", function() return true end)  -- Block taps
    bg:addEventListener("touch", function() return true end)  -- Block scrolls

    -- Reward content
    local rewardText = display.newText(lootPopup, "You received:", display.contentCenterX, bg.y - 120, native.systemFontBold, 24)
    rewardText:setFillColor(1, 1, 1)

    local itemName = display.newText(lootPopup, reward.name, display.contentCenterX, bg.y - 70, native.systemFontBold, 28)
    itemName:setFillColor(unpack(getRarityColor(reward.rarity)))

    local itemType = display.newText(lootPopup, reward.itemType, display.contentCenterX, bg.y - 40, native.systemFont, 18)
    itemType:setFillColor(0.8, 0.8, 0.8)

    local itemDesc = display.newText({
        parent = lootPopup,
        text = reward.desc,
        x = display.contentCenterX,
        y = bg.y + 20,
        width = 260,
        font = native.systemFont,
        fontSize = 14
    })
    itemDesc:setFillColor(0.9, 0.9, 0.9)

    -- Close button handler
    local function onClose(event)
        if not isPopupVisible then return true end  -- Prevent double-taps
        isPopupVisible = false
        transition.to(lootPopup, {
            time = 200,
            alpha = 0,
            onComplete = function()
                if lootPopup then
                    lootPopup:removeSelf()
                    lootPopup = nil
                end
            end
        })
        return true  -- Stops event propagation
    end
    
    -- Close button
    local closeBtn = display.newRoundedRect(lootPopup, display.contentCenterX, bg.y + 120, 120, 40, 8)
    closeBtn:setFillColor(0.3, 0.6, 0.3)
    closeBtn:addEventListener("tap", onClose)

    local btnText = display.newText(lootPopup, "OK", closeBtn.x, closeBtn.y, native.systemFontBold, 20)
    btnText:setFillColor(1, 1, 1)
end

local function onLootBoxTap(event)
    local lootBox = event.target.lootBox
    if event.phase == "ended" and not scrollView.isScrolling then
        local reward = core.openLootBox(lootBox)
        if reward then
            scene:showLootReward(reward)
        end
    end
    return true
end

function scene:create(event)
    local sceneGroup = self.view
    
    -- Background (inserted first)
    local background = display.newRect(sceneGroup, display.contentCenterX, display.contentCenterY, 
                                     display.contentWidth, display.contentHeight)
    background:setFillColor(0.1, 0.1, 0.15)
    sceneGroup:insert(background)

    -- Title (inserted after background)
    local title = display.newText(sceneGroup, "Loot Boxes", display.contentCenterX, 40, 
                                native.systemFontBold, 32)
    title:setFillColor(1, 1, 1)
    sceneGroup:insert(title)

    -- Sort button (inserted after title)
    local sortButton = display.newRoundedRect(sceneGroup, display.contentCenterX, 90, 200, 40, 8)
    sortButton:setFillColor(0.2, 0.4, 0.6)
    sceneGroup:insert(sortButton)
    
    local sortText = display.newText(sceneGroup, "Sort: "..currentSortOrder, 
                                   sortButton.x, sortButton.y, native.systemFont, 18)
    sortText:setFillColor(1, 1, 1)
    sceneGroup:insert(sortText)

    -- Store references for later access
    scene.sortButton = sortButton
    scene.sortText = sortText
    
    -- Create scroll view (inserted last to appear on top)
    scrollView = widget.newScrollView({
        top = 140,
        left = 20,
        width = display.contentWidth - 40,
        height = display.contentHeight - 180,
        scrollWidth = display.contentWidth - 40,
        scrollHeight = 600,
        horizontalScrollDisabled = true,
        backgroundColor = {0.15, 0.15, 0.2}
    })
    scrollView:addEventListener("touch", function(event)
        scrollView.isScrolling = (event.phase == "moved")
        return false
    end)
    sceneGroup:insert(scrollView)

    -- Add loot boxes to scroll view
    local yOffset = 30
    for _, lootBox in pairs(lootBoxes) do
        local itemGroup, newY = createLootBoxItem(scrollView, lootBox, yOffset)
    itemGroup:addEventListener("touch", onLootBoxTap) 
    yOffset = newY
    end

    -- Set scroll height based on content
    scrollView:setScrollHeight(yOffset + 20)

    -- Add event listeners
    sortButton:addEventListener("tap", onSortTap)
end

function scene:show(event)
    local phase = event.phase
    if phase == "will" then
        -- Scene is about to appear
    elseif phase == "did" then
        -- Scene is now on screen
    end
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then
		-- Called when the scene is still off screen and is about to move on screen
		
	elseif phase == "did" then
		-- Called when the scene is now on screen
		-- 
		-- INSERT code here to make the scene come alive
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then
		-- Called when the scene is on screen and is about to move off screen
		--
		-- INSERT code here to pause the scene
		-- e.g. stop timers, stop animation, unload sounds, etc.)
	elseif phase == "did" then
		-- Called when the scene is now off screen
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
	
	-- Called prior to the removal of scene's "view" (sceneGroup)
	-- 
	-- INSERT code here to cleanup the scene
	-- e.g. remove display objects, remove touch listeners, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene