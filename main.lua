-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- show default status bar (iOS)
display.setStatusBar( display.HiddenStatusBar )

-- include Corona's "widget" library
local widget = require "widget"
local composer = require "composer"

-- Function to transition to the intro scene
local function showIntro()
	composer.gotoScene( "scenes.intro" )
end

-- event listeners for tab buttons:
local function showLootBoxesView()
	composer.gotoScene( "scenes.view_lootboxes" )
end

local function showInventoryView()
	composer.gotoScene( "scenes.view_inventory" )
end

local function showStatsView()
	composer.gotoScene( "scenes.view_stats" )
end

-- table to setup buttons
local tabButtons = {
	{ 
		label = "Open Crates",
		defaultFile = "button1.png",
		overFile = "button1-down.png",
		width = 32,
		height = 32,
		onPress = showLootBoxesView,
		selected = true
	},
	{
		label = "Inventory",
		defaultFile = "button2.png",
		overFile = "button2-down.png",
		width = 32,
		height = 32,
		onPress = showInventoryView
	},
	{
		label = "Stats",
		defaultFile = "button2.png",
		overFile = "button2-down.png",
		width = 32,
		height = 32,
		onPress = showStatsView
	}
}

-- create the actual tabBar widget
local tabBar = widget.newTabBar{
	top = display.contentHeight - 50,	-- 50 is default height for tabBar widget
	buttons = tabButtons
}

showLootBoxesView()	-- invoke first tab button's onPress event manually
