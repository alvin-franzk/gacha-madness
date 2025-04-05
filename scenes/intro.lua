local composer = require("composer")
local scene = composer.newScene()

-- Forward declarations
local logo, companyText, timerHandle

-- Function to transition to the next scene
local function goToNextScene(nextScene)
    composer.gotoScene(nextScene, { effect = "fade", time = 1000 })
end

-- Scene creation
function scene:create(event)
    local sceneGroup = self.view

    -- Background
    local background = display.newRect(sceneGroup, display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight)
    background:setFillColor(0) -- Black background

    -- Company Logo (replace with actual image or font)
    logo = display.newText({
        parent = sceneGroup,
        text = "Evil Biscuit Studios",
        x = display.contentCenterX,
        y = display.contentCenterY - 50,
        font = native.systemFontBold,
        fontSize = 36
    })
    logo.alpha = 0 -- Start invisible

    -- Company Name
    companyText = display.newText({
        parent = sceneGroup,
        text = "Presents",
        x = display.contentCenterX,
        y = display.contentCenterY + 20,
        font = native.systemFont,
        fontSize = 24
    })
    companyText.alpha = 0 -- Start invisible
end

-- Scene show event
function scene:show(event)
    if event.phase == "will" then
        -- Fade in effect for both logo and text
        transition.to(logo, { time = 1000, alpha = 1 })
        transition.to(companyText, { time = 1000, delay = 500, alpha = 1 })
        
        -- Wait before transitioning to the next scene
        timerHandle = timer.performWithDelay(2500, function() 
            goToNextScene("scenes.view_lootboxes")  -- Replace "scenes.menu" with any scene you want to go to
        end)
    end
end

-- Scene hide event
function scene:hide(event)
    if event.phase == "did" then
        -- Cancel the timer if the scene is hidden before it finishes
        if timerHandle then
            timer.cancel(timerHandle)
        end
    end
end

-- Scene destroy event
function scene:destroy(event)
    -- Clean up any resources here if necessary
    if logo then
        logo:removeSelf()
    end
    if companyText then
        companyText:removeSelf()
    end
end

-- Event listener setup
scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)

return scene
