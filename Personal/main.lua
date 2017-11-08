function love.load()
    x=100 
    y=100 
    w=30
    h=30
    
    bx=300 
    by=100
    bw=50
    bh=100
    
    cx=true
    cy=true
    cxm=true
    cym=true
    
    msg=":D"
    end
function love.update(dt)
    
    
   if love.keyboard.isDown("right") then 
    x=x+100*dt
    end 
    if love.keyboard.isDown("left")  then 
    x=x-100*dt
    end 
    if love.keyboard.isDown("up")  then 
    y=y-100*dt
    end 
    if love.keyboard.isDown("down")then 
    y=y+100*dt
    end 
    if x<bx+bw and
        x+w>bx and
        y<by+bh and 
        y + h>by then 
        msg = "Auch :c"
        
    else 
        msg="Mejor :D"
    end
    end
function love.draw()
   love.graphics.rectangle("fill",x,y,w,h)
    love.graphics.rectangle("fill",bx,by,bw,bh)
        
    love.graphics.print(msg)
    end