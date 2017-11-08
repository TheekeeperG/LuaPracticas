personaje={}

function personaje:init(x,y)
    self.x=x
    self.y=y
    self.w=30
    self.h=30
    end
function personaje:draw()
    love.graphics.rectangle("fill",self.x,self.y,self.w,self.h)
    end