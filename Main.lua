-- Kyle Boulay
-- Grade 3's App
-- App Development
-- This Program's Idea Was Done All By The Grade 3's


-- Use this function to perform your initial setup

wordWallWordList = {}

function setup()
    
    supportedOrientations(PORTRAIT_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    

    table.insert(wordWallWordList, "independent")
    table.insert(wordWallWordList, "about")
    table.insert(wordWallWordList, "their")
    table.insert(wordWallWordList, "with")
    table.insert(wordWallWordList, "friendly")
    print(#wordWallWordList)
     
    -- create the scenes
    
    
    
    Scene("prestart", GameStartScreen)
    Scene("game", GameScene)
    Scene("timeup", TimeUpScene)
    Scene("pause", GamePause)
    
    Scene.Change("prestart")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(0, 0, 255, 255)

    Scene.Draw()
    
end

function touched (touch)
    
    Scene.Touched(touch)
    
end