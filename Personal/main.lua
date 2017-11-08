function love.load()
    X=200
    Y=100
    end
function love.update(dt)
    if love.keyboard.isDown("right") then 
    X=X+2    
    end
    if love.keyboard.isDown("left") then 
    X=X-2    
    end
    if love.keyboard.isDown("up") then 
    Y=Y-2    
    end
    if love.keyboard.isDown("down") then 
    Y=Y+2    
    end
    end
function love.draw()
    love.graphics.rectangle("fill", X,Y,50,70)
    
    end