-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------

local widget = require("widget")
local composer = require( "composer" )
local scene = composer.newScene()
local lootBoxes = require("scripts.loot.lootBoxes")
local core = require("scripts.core.loot_mechanics")

local currentSortOrder = "Highest Value"

-- Functions for sort orders
local function getCurrentSortOrder()
	return currentSortOrder
end

local function setCurrentSortOrder(sortOrder)
	currentSortOrder = sortOrder;
end

-- Function to handle sort button tap
local function onSortTap()
    native.showAlert("Sort by", "Choose a sort option", { "Highest Value", "Lowest Value", "Alphabetical" }, function(event)
        if event.action == "clicked" then
            local index = event.index
            -- Call sort function based on index
            if index == 1 then
				-- Call your sorting function here
                setCurrentSortOrder("Highest Value")
            elseif index == 2 then
                -- Call your sorting function here
				setCurrentSortOrder("Lowest Value")
            elseif index == 3 then
                -- Call your sorting function here
				setCurrentSortOrder("Alphabetically")
            end
			-- Update the sortText after the sort order is set
            scene.sortText.text = "Sort by: " .. getCurrentSortOrder()
        end
    end)
end

local function onLootBoxTap(event)
    if event.phase == "ended" then
        -- Get the loot box name from the tapped object
        local lootBox = event.target.lootBox
        print("Tapped on: " .. lootBox.name)  -- Replace this with your desired action
        -- Call your function here, e.g., redirect to another scene or show details
		core.openLootBox(lootBox)
        -- composer.gotoScene("sceneName") -- Example of changing scenes
    end
    return true
end

function scene:create( event )
	local sceneGroup = self.view
	
	-- Called when the scene's view does not exist.
	-- 
	-- INSERT code here to initialize the scene
	-- Load assets (images, text, buttons, UI), static content that doesn’t change often.
	-- e.g. add display objects to 'sceneGroup', add touch listeners, etc.
	
	-- create a white background to fill screen
	local background = display.newRect( display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight )
	background:setFillColor( 1 )	-- white

	-- Create sort button
    self.sortButton = display.newRoundedRect(display.contentCenterX, 50, 220, 40, 10)
    self.sortButton:setFillColor(0.95)
	-- Sort Text
    self.sortText = display.newText({
        text = "Sort by: " .. getCurrentSortOrder(),
        x = self.sortButton.x,
        y = self.sortButton.y,
        fontSize = 18
    })
    self.sortText:setFillColor(0)

	-- Create the scroll view
    local scrollView = widget.newScrollView({
        top = 80,
        left = 10,
        width = 300,
        height = 350,
        scrollWidth = 300,
        scrollHeight = 600, -- Adjust based on the number of loot boxes
        listener = function(event)
            return true
        end,
		horizontalScrollDisabled = true, -- Disable horizontal scrolling
    })

	-- Create loot box items
    local yOffset = 50
    for key, lootBox in pairs(lootBoxes) do
        local lootBoxDiv = display.newRect(scrollView, 150, yOffset, 280, 90) -- Example item
        lootBoxDiv:setFillColor(0.5, 0.5, 0.5) -- Example color

		-- Store the loot box name in the rectangle for later use
		lootBoxDiv.lootBox = lootBox

		-- Add event listener for the loot box
		lootBoxDiv:addEventListener("touch", onLootBoxTap)

        local lootBoxName = display.newText({
            text = lootBox.name,
            x = lootBoxDiv.x,
            y = lootBoxDiv.y - 10,
            font = native.systemFont,
            fontSize = 20
        })
		local lootBoxPrice = display.newText({
            text = tostring(lootBox.price),
            x = lootBoxDiv.x,
            y = lootBoxDiv.y + 15,
            font = native.systemFont,
            fontSize = 20
        })


        -- Insert items into the scroll view
        scrollView:insert(lootBoxDiv)
        scrollView:insert(lootBoxName)
		scrollView:insert(lootBoxPrice)

        -- Update yOffset for the next loot box
        yOffset = yOffset + 100 -- Adjust based on the height of each item
    end

	sceneGroup:insert( background )						-- all objects must be added to group (e.g. self.view)
    self.sortButton:addEventListener("tap", onSortTap)	-- Add event listener to the sort button
    sceneGroup:insert(self.sortButton)					-- Insert button and text into the scene group
    sceneGroup:insert(self.sortText)
	sceneGroup:insert(scrollView)						-- Insert the scroll view into the scene group
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