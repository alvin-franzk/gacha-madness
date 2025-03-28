-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------

local widget = require("widget")
local composer = require( "composer" )
local scene = composer.newScene()
local lootbox = require("module_lootboxLogic")
local currency = require("module_currency")
local inventory = require("module_inventory")

-- Function to create a loot box button
local function createLootBoxButton(lootBox, x, y)
    local button = display.newRoundedRect(x, y, 100, 100, 12) -- Button for the loot box
    button:setFillColor(0.2, 0.6, 0.8)
    local lootBoxImage = display.newImageRect(lootBox.imagePath, 80, 80) -- Assuming lootBox has an imagePath
    lootBoxImage.x = button.x
    lootBoxImage.y = button.y

    local function onLootBoxTap()
        print("Loot box tapped: " .. lootBox.name)
		local cost = 100 -- Define the cost to open a loot box
		local result = lootbox.openLootBox(cost) -- Call the function from the loot module
		print(result) -- Print the result to the console (or display it in your UI)
		inventory.removeLootBox(lootBox.name)
		print("Current Balance: " .. currency.getBalance()) -- Display the current balance
        -- Add logic to open the loot box
    end

    button:addEventListener("tap", onLootBoxTap)
    return button, lootBoxImage
end

-- Function to display loot boxes
local function displayLootBoxes(sceneGroup)
    local lootBoxes = inventory.getLootBoxes() -- Assuming this returns a list of loot boxes
    local numLootBoxes = #lootBoxes
    if numLootBoxes == 0 then
        local noLootBoxesText = display.newText(
			sceneGroup,
			"You have no loot boxes to open. \nVisit the store to buy.",
			display.contentCenterX,
			display.contentCenterY,
			native.systemFont, 16
		)
        noLootBoxesText:setFillColor(1, 0, 0) -- Red color for the message
    else
        local scrollView = widget.newScrollView({
            top = display.contentCenterY - 100,
            left = display.contentCenterX - 150,
            width = 300,
            height = 200,
            scrollWidth = 300,
            scrollHeight = 400,
            horizontalScrollDisabled = true,
            backgroundColor = {1, 1, 1, 0.5} -- Semi-transparent background
        })
        for i = 1, numLootBoxes do
            local lootBox = lootBoxes[i]
            local x = (i - 1) % 2 * 150 + 75 -- Calculate x position for 2 columns
            local y = math.floor((i - 1) / 2) * 120 + 75 -- Calculate y position for rows
            local button, lootBoxImage = createLootBoxButton(lootBox, x, y)
            scrollView:insert(button)
            scrollView:insert(lootBoxImage)
        end


        sceneGroup:insert(scrollView) -- Insert the scroll view into the scene group

    end

end

-- Example function to open a loot box when a button is tapped
local function onOpenCratesButtonTap()
    local cost = 100 -- Define the cost to open a loot box
    local result = lootbox.openLootBox(cost) -- Call the function from the loot module
    print(result) -- Print the result to the console (or display it in your UI)
    print("Current Balance: " .. currency.getBalance()) -- Display the current balance
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
	
	-- create some text
	local title = display.newText( "First View", display.contentCenterX, 125, native.systemFont, 32 )
	title:setFillColor( 0 )	-- black

	-- all objects must be added to group (e.g. self.view)
	sceneGroup:insert( background )
	sceneGroup:insert( title )
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then
		-- Called when the scene is still off screen and is about to move on screen
		displayLootBoxes(sceneGroup)
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