-- Kyle Boulay
-- Grade 3's App
-- App Development
-- This Program's Idea Was Done All By The Grade 3's


GamePause = class()

local moveBackToGame


function GamePause:init()
    
    moveBackToGame = Button("Dropbox:Green Redo Button", vec2(WIDTH/2, HEIGHT/2 -120))
end

function GamePause:draw()
    
    sprite("Documents:Grade 3 Game Background", 384, 512, 768, 1024)
    fill(0, 0, 0, 255)
    rect(100, 300, 575, 575)
    fill(0, 0, 255, 255)
    rect(102, 302, 570, 570)
    moveBackToGame:draw()
    
end

function GamePause:touched(touch)
    
    moveBackToGame:touched(touch)
    if(moveBackToGame.selected == true) then
        Scene.Change("game")
    end
    
end
