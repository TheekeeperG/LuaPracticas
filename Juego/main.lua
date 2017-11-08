function love.load()
    
    require "personaje"
    require "meteoro"
    math.randomseed(os.time())
    personaje:init(100,100)
    mts={}
    tiempodegeneracion=20
    txt="col"
    end

function love.update(dt)
   if tiempodegeneracion==20 then 
    local x=math.random(1,400)
    local y=math.random(300,600)
    tiempodegeneracion=40
    table.insert(mts, meteoro:new(x,y))
  
else 
    tiempodegeneracion=tiempodegeneracion-1
    end
    for i,v in ipairs(mts) do
    v:update(dt)
    end
    for i,v in ipairs(mts) do
    if colision(personaje, v) then 
           txt="col"
            break
        else
            txt="no col"
        end
    end
    personaje:update(dt)
    end 

function love.draw()
    personaje:draw()
    for i,v in ipairs(mts) do
    v:draw()
    end
    love.graphics.print(txt)
    end
function colision(a,b) 
    return a.x<b.x+b.w and
        a.x+a.w>b.x and
        a.y<b.y+b.h and 
        a.y + a.h>b.y 
        
        
    
    end
