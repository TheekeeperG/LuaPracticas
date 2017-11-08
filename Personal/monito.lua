monito={}
function monito:load(x,y)
   monito.x=x
    monito.y=y
        monito.image=love.graphics.newImage("foto.png") 
    end

function monito:update(dt)
    
    end

function monito:draw()
  love.graphics.draw(monito.image, monito.x,monito.y)
    end