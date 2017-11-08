function love.load()
    
    require "personaje"
    
    personaje:init(100,100)
    end
function love.update(dt)
    end 
function love.draw()
    personaje:draw()
    end
