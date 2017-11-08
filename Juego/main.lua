function love.load()
    
    require "personaje"
    require "meteoro"
    math.randomseed(os.time())
    personaje:init(100,100)
    mts={}
    tiempodegeneracion=20
    txt="col"
    puntuacion=0
    cont=50
    diff=0
    game=true
    game1=false
    lose = love.graphics.newImage("perdi3.png")
    end

function love.update(dt)
    if game==false and love.keyboard.isDown("w") then 
        love.load()
    end
    if game then
    if cont ==0 then 
    puntuacion=puntuacion+1
    cont=50
    else    
        cont=cont-1
    end
   if tiempodegeneracion==0 then 
    if diff < 40 then 
            diff=diff+1
        end
    local x=math.random(1,400)
    local y=math.random(300,600)
    tiempodegeneracion=51-diff
    table.insert(mts, meteoro:new(x,y,diff))
  
else 
    tiempodegeneracion=tiempodegeneracion-1
    end
    for i,v in ipairs(mts) do
    v:update(dt)
    end
    for i,v in ipairs(mts) do
    if colision(personaje, v) then 
           game=false
            break
       
        end
    end
    personaje:update(dt)
    end 
    end

function love.draw()
    if game1 then 
    game1=false 
    love.graphics.clear() 
    end
    if game then
    personaje:draw()
    for i,v in ipairs(mts) do
    v:draw()
    end
    love.graphics.print(puntuacion,0,0)
    love.graphics.print(diff,100,0)
    else
    love.graphics.clear() 
    love.graphics.draw(lose,0,0)
    love.graphics.printf(puntuacion,100, 100, 250,"center") 
    end
    end
function colision(a,b) 
    return a.x<b.x+b.w and
        a.x+a.w>b.x and
        a.y<b.y+b.h and 
        a.y + a.h>b.y 
  
    end
