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
local playerCurrency = require "scripts.player.playerCurrency"
local playerInventory = require "scripts.player.playerInventory"

math.randomseed(os.time()) -- rng seed

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
		defaultFile = "assets/ui/view_lootboxes.png",
		overFile = "button1-down.png",
		width = 32,
		height = 32,
		onPress = showLootBoxesView,
		selected = true
	},
	{
		label = "Inventory",
		defaultFile = "assets/ui/view_inventory.png",
		overFile = "button2-down.png",
		width = 32,
		height = 32,
		onPress = showInventoryView
	},
	{
		label = "Stats",
		defaultFile = "assets/ui/view_stats.png",
		overFile = "button2-down.png",
		width = 32,
		height = 32,
		onPress = showStatsView
	}
}

-- create the actual tabBar widget
local tabBar = widget.newTabBar{
	top = display.contentHeight - 7,	-- 50 is default height for tabBar widget
	buttons = tabButtons
}

-- Top bar group
local topBar = display.newGroup()

local barBackground = display.newRect(topBar, display.contentCenterX, -20, display.contentWidth, 50)
barBackground:setFillColor(0.5)

local coinIcon = display.newImageRect(topBar, "assets/ui/currency.png", 30, 30)
coinIcon.x, coinIcon.y = 20, -20

local currencyText = display.newText({
    parent = topBar,
    text = tostring(playerCurrency.getBalance()),
    x = 70,
    y = -20,
    font = native.systemFontBold,
    fontSize = 28
})
currencyText:setFillColor(0)

local projectedLootValueText = display.newText({
    parent = topBar,
    text = tostring(playerInventory.getTotalValue()),
    x = 250,
    y = -20,
    font = native.systemFontBold,
    fontSize = 28
})
projectedLootValueText:setFillColor(0)

showLootBoxesView()	-- invoke first tab button's onPress event manually

-- Global function to update the currency text
function updateCurrencyText()
    currencyText.text = tostring(playerCurrency.getBalance())  -- Update the text with the current balance
end

-- Global function to update the currency text
function updateProjectedLootValueText()
    projectedLootValueText.text = tostring(playerInventory.getTotalValue())  -- Update the text
end
