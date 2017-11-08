function love.load()
    
    require "personaje"
    require "meteoro"
    personaje:init(100,100)
    meteoro1 =meteoro:new(10,10)
    end

function love.update(dt)
    personaje:update(dt)
    end 

function love.draw()
    personaje:draw()
    meteoro1:draw()
    end
