monito={}
function monito:load(x,y)
   monito.x=x
    monito.y=y
    monito.vel=150
        monito.image=love.graphics.newImage("foto.png") 
    end

function monito:update(dt)
    if monito.x>=love.graphics.getWidth() then 
    monito.x=-300  
    end
    monito.x=monito.x+monito.vel*dt
    end

function monito:draw()
  love.graphics.draw(monito.image, monito.x,monito.y)
    end