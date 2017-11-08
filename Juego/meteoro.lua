meteoro={}
meteoro.__index=meteoro

function meteoro:new(x,y)
self= setmetatable({},meteoro)    
    self.x=x
    self.y=y
    self.w=10
    self.h=10
    return self
end

function meteoro:draw()
    love.graphics.rectangle("fill",self.x,self.y,self.w,self.h)
    end