-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- show default status bar (iOS)
display.setStatusBar( display.DefaultStatusBar )

-- include Corona's "widget" library
local widget = require "widget"
local composer = require "composer"


-- event listeners for tab buttons:
local function showLootBoxesView( event )
	composer.gotoScene( "view_lootboxes" )
end

local function showInventoryView( event )
	composer.gotoScene( "view_inventory" )
end

local function showStoreView( event )
	composer.gotoScene( "view_store" )
end

local function showStatsView( event )
	composer.gotoScene( "view_stats" )
end


-- create a tabBar widget with two buttons at the bottom of the screen

-- table to setup buttons
local tabButtons = {
	{ label="Open Crates", defaultFile="button1.png", overFile="button1-down.png", width = 32, height = 32, onPress=showLootBoxesView, selected=true },
	{ label="Inventory", defaultFile="button2.png", overFile="button2-down.png", width = 32, height = 32, onPress=showInventoryView },
	{ label="Store", defaultFile="button2.png", overFile="button2-down.png", width = 32, height = 32, onPress=showStoreView },
	{ label="Stats", defaultFile="button2.png", overFile="button2-down.png", width = 32, height = 32, onPress=showStatsView },
}

-- create the actual tabBar widget
local tabBar = widget.newTabBar{
	top = display.contentHeight - 50,	-- 50 is default height for tabBar widget
	buttons = tabButtons
}

showLootBoxesView()	-- invoke first tab button's onPress event manually
