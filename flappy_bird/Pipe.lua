Pipe = Class{}

local PIPE_IMAGE = love.graphics.newImage('sprites/pipe.png')

function Pipe:init(orientation, y)
    self.x = VIRTUAL_WIDTH
    self.y = y
    self.orientation = orientation
    self.width = PIPE_IMAGE:getWidth()
end

function Pipe:render()
    love.graphics.draw(PIPE_IMAGE, self.x, 
        (self.orientation == 'top' and self.y + PIPE_HEIGHT or self.y), 
        0, 1, self.orientation == 'top' and -1 or 1)
end