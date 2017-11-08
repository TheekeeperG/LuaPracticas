function love.load()
    require "monito"
   monito:load(100,20)

    end

function love.update(dt)
    monito:update(dt)
    end

function love.draw()
    monito:draw()
    end