-- Kyle Boulay
-- Grade 3's App
-- App Development
-- This Program's Idea Was All Done By The Grade 3's

GameStartScreen = class()

local moveToGameScene

function GameStartScreen:init()
    
    moveToGameScene = Button("Dropbox:Green Forward Circle Button", vec2(WIDTH/2, HEIGHT/2 -125))
    
    
    
end

function GameStartScreen:draw()
    
    
    
    sprite("Documents:Grade 3 Game Background", 384, 512, 768, 1024)
    
    
    fill(0, 0, 0, 255)
    rect(100, 300, 575, 575)
    fill(0, 0, 255, 255)
    rect(102, 302, 570, 570)
    fill(0, 255, 0, 255)
    fontSize(45)
    text("You Start With 30", 295, 825)
    text("Seconds To Spell A", 315, 775)
    text("Short Word, And Every", 350, 725)
    text("Word You Get Right,", 330, 675)
    text("Another Word Shows", 335, 625)
    text("Up, Try To Spell", 280, 575)
    text("As Many Words As", 315, 525)
    text("You Can In 30 Seconds", 360, 475)
    
    moveToGameScene:draw()
    
end

function GameStartScreen:touched(touch)
    
    moveToGameScene:touched(touch)
    if(moveToGameScene.selected == true) then
        Scene.Change("game")
    end
    
end
