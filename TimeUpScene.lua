TimeUpScene = class()

local moveBackToGame

function TimeUpScene:init()
    -- you can accept and set parameters here
    
    moveBackToGame = Button("Dropbox:Green Return Button", vec2(WIDTH/2, HEIGHT/2 -120))
    
end

function TimeUpScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Documents:Grade 3 Game Background", 384, 512, 768, 1024)
    fill(0, 0, 0, 255)
    rect(100, 300, 575, 575)
    fill(0, 0, 255, 255)
    rect(102, 302, 570, 570)
    moveBackToGame:draw()
    
end

function TimeUpScene:touched(touch)
    -- Codea does not automatically call this method
    
    moveBackToGame:touched(touch)
    if(moveBackToGame.selected == true) then
        Scene.Change("game")
    end
    
end
