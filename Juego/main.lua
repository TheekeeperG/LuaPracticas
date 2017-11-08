function love.load()
    
    require "personaje"
    require "meteoro"
    math.randomseed(os.time())
    personaje:init(100,100)
    mts={}
    tiempodegeneracion=20
    end

function love.update(dt)
   if tiempodegeneracion==20 then 
    local x=math.random(1,400)
    local y=math.random(1,300)
    tiempodegeneracion=20
    table.insert(mts, meteoro:new(x,y))
  
else 
    tiempodegeneracion=tiempodegeneracion-1
    end
   
    end 

function love.draw()
    personaje:draw()
    for i,v in ipairs(mts) do
    v:draw()
    end
    
    end
