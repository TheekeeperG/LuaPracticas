function love.load()
   cuadrado={}
    for i=1,100 do 
        cuadrado[i]={
            x=math.random(0,800),
            y=math.random(0,600)
        }
    end
    
    end

function love.update(dt)
    
    end

function love.draw()
  for i=1,100 do 
       love.graphics.rectangle("fill",cuadrado[i].x,cuadrado[i].y,30,30) 
    end
    end