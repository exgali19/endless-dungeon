local Map = require 'core/map'

function love.load()
  x = 400
  y = 300
  a = 400
  b = 300
  playerImg = love.graphics.newImage('assets-1/player/base/octopode_1.png')
  playerImg1 = love.graphics.newImage('assets-1/player/base/tengu_wingless_brown_male.png')

    floorTile = love.graphics.newImage('assets-1/dungeon/floor/black_cobalt_5.png')
    altar     = love.graphics.newImage('assets-1/dungeon/floor/bog_green_1.png')
    template = { --a 3 x 3 map with the altar texture in the middle
                 {floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile,},
                 {floorTile, altar, floorTile,floorTile, altar, floorTile,floorTile, altar, floorTile,floorTile, altar,},
                 {floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, },
                 {floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, },
                 {floorTile,  altar, floorTile,floorTile,  altar, floorTile,floorTile, floorTile, floorTile,floorTile, },
                 {floorTile, floorTile, floorTile,floorTile, floorTile, floorTile, altar, floorTile, floorTile,floorTile, },
                 {floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, },
                 {floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, },
                 {floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, },
                 {floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, },
                 {floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, },
                 {floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, },
                 {floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, floorTile, floorTile,floorTile, },
               }
    map = Map:new(template)


end

function love.update(dt)
 if love.keyboard.isDown('up')then
 y = y - 5
 end
 if love.keyboard.isDown('down')then
 y = y + 5
 end
 if love.keyboard.isDown('right')then
 x = x + 5
end
 if love.keyboard.isDown('left')then
 x = x - 5
 end

 if love.keyboard.isDown('w')then
 b = b - 5
 end
 if love.keyboard.isDown('s')then
 b = b + 5
 end
 if love.keyboard.isDown('d')then
 a = a + 5
end
 if love.keyboard.isDown('a')then
 a = a - 5
 end
 end
function love.draw()
   map:draw()
  love.graphics.print('Hello, world!', 0, 0)
  love.graphics.draw(playerImg, x, y)
  love.graphics.draw(playerImg1, a, b)

end
