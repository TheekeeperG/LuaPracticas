personaje={}

function personaje:init(x,y)
    self.x=x
    self.y=y
    self.w=30
    self.h=30
    self.v=125
    end
function personaje:update(dt)
    if love.keyboard.isDown("d") then 
        self.x=self.x+self.v*dt
        end
    if love.keyboard.isDown("a") then 
        self.x=self.x-self.v*dt
        end
end
function personaje:draw()
    love.graphics.rectangle("fill",self.x,self.y,self.w,self.h)
    end