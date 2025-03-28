-----------------------------------------------------------------------------------------
--
-- view2.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()
local inventory = require("module_inventory")

-- Function to handle receiving a free loot box

local function onReceiveFreeLootBox()

    local freeLootBox = {
        name = "Free Loot Box",
        value = 50, -- Example value
        imagePath = "button2@2x.png" -- Replace with your image path
    }

	inventory.addLootBox(freeLootBox) -- Add the loot box to the inventory
    print("Received a free loot box: " .. freeLootBox.name)
end

function scene:create( event )
	local sceneGroup = self.view
	
	-- Called when the scene's view does not exist.
	-- 
	-- INSERT code here to initialize the scene
	-- e.g. add display objects to 'sceneGroup', add touch listeners, etc.
	
	-- create a white background to fill screen
	local background = display.newRect( display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight )
	background:setFillColor( 1 )	-- white
	
	-- create some text
	local title = display.newText( "Store View", display.contentCenterX, 125, native.systemFont, 32 )
	title:setFillColor( 0 )	-- black

	-- Create a button for receiving a free loot box
    local receiveButton = display.newRoundedRect(display.contentCenterX, display.contentCenterY, 200, 50, 12)
    receiveButton:setFillColor(0.2, 0.6, 0.8) -- Button color

	local buttonText = display.newText("Receive Free Loot Box", display.contentCenterX, display.contentCenterY, native.systemFont, 20)
    buttonText:setFillColor(1, 1, 1) -- Text color

    -- Add a touch listener to the button
    receiveButton:addEventListener("tap", onReceiveFreeLootBox)

	
	-- all objects must be added to group (e.g. self.view)
	sceneGroup:insert( background )
	sceneGroup:insert( title )
	sceneGroup:insert(receiveButton)
    sceneGroup:insert(buttonText)
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
