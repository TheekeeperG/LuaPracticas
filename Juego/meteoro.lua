meteoro={}
meteoro.__index=meteoro

function meteoro:new(x,y,diff)
self= setmetatable({},meteoro)    
    self.x=x
    self.y=y
    self.w=10
    self.h=10
    self.v=60+diff
    return self
end
function meteoro:update(dt)
self.y=self.y-self.v*dt    
end

function meteoro:draw()
    love.graphics.rectangle("fill",self.x,self.y,self.w,self.h)
    end