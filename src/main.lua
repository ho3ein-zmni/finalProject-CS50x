function love.load()
    song = love.audio.newSource("cant.mp3", "stream")
    song:setLooping(true)
    song:play()
    block = love.graphics.newImage("block.png")
    grr = love.graphics.newImage("ground.png")
    arr = love.graphics.newImage("around.png")
    chicken = love.graphics.newImage("chicken.png")
    chick = love.graphics.newImage("chick.png")
    i=0
    width = grr:getWidth()
    height = grr:getHeight()
    create_pl(3,7)


    tilemap1 = {
        {0, 6, 6, 6, 6, 6, 6, 6,6,6,6,6,6,6,6,6,6,0,0,0,0,0,0,0,0,0},
        {0, 6, 1, 1, 1, 1, 1, 1,1,1,1,1,1,1,1,1,6,6,6,6,6,6,6,0,6,6},
        {0, 6, 1, 1, 0, 0, 0, 0,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,0,1,6},
        {0, 6, 1, 1, 0, 1, 1, 0,1,1,1,1,0,1,1,0,0,0,0,0,0,0,1,0,1,6},
        {0, 6, 6, 1, 0, 1, 1, 0,1,1,1,1,0,1,1,1,1,1,0,1,1,0,1,0,1,6},
        {0, 0, 6, 1, 0, 1, 1, 0,0,0,0,0,0,1,1,0,1,1,0,1,1,0,1,0,1,6},
        {0, 6, 0, 0, 0, 1, 1, 1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,6},
        {0, 0, 6, 0, 1, 1, 1, 1,1,1,1,1,0,0,0,0,1,1,1,0,0,0,1,1,1,6},
        {0, 6, 6, 0, 1, 1, 1, 0,0,0,0,0,0,1,1,1,1,1,1,0,1,1,1,0,0,0},
        {0, 6, 1, 0, 1, 1, 1, 0,1,1,1,0,1,1,0,0,0,0,0,0,1,0,1,0,1,6},
        {0, 6, 1, 0, 1, 1, 1, 0,1,1,1,0,1,1,0,1,1,1,1,1,1,0,0,0,1,6},
        {0, 6, 1, 0, 1, 1, 1, 0,1,1,1,0,1,1,0,0,0,0,0,1,1,1,1,1,1,6},
        {0, 6, 1, 0, 1, 1, 1, 0,1,1,1,0,1,1,1,1,1,1,0,1,1,1,1,1,6,6},
        {0, 6, 1, 0, 0, 0, 0, 0,1,1,1,0,1,1,1,1,1,1,0,1,1,1,1,1,6,0},
        {0, 6, 1, 1, 1, 1, 1, 1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,6,0},
        {0, 6, 1, 1, 1, 1, 1, 0,0,0,1,1,1,1,1,6,6,6,6,6,6,1,1,0,0,0},
        {0, 6, 6, 6, 6, 6, 6, 6,6,6,6,6,6,6,6,6,0,0,0,0,6,6,6,6,6,0}
        
        
    }
     tilemap2= {{0, 6, 6, 6, 6, 6, 6, 6,6,6,6,6,6,6,6,6,6,0,0,0,0,0,0,6,6,6},
        {0, 6, 1, 1, 1, 1, 1, 1,1,1,1,1,1,1,1,1,6,6,6,6,6,6,6,0,6,6,6},
        {0, 6, 1, 1, 0, 0, 0, 0,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,0,1,6,6},
        {0, 6, 1, 1, 0, 1, 1, 0,1,1,1,1,0,1,1,0,1,1,1,1,1,1,1,0,1,6,6},
        {0, 6, 6, 1, 0, 1, 1, 0,1,1,1,1,0,1,1,0,1,1,0,0,0,0,0,0,1,6,6},
        {0, 0, 6, 1, 0, 1, 1, 0,0,0,0,0,0,1,1,0,1,1,0,1,1,0,1,0,1,6,6},
        {0, 6, 1, 0, 0, 1, 1, 1,1,0,1,1,1,1,1,0,0,0,0,1,1,0,1,1,1,6,6},
        {0, 0, 1, 0, 1, 1, 1, 1,1,0,1,1,0,0,0,0,1,1,1,1,1,0,1,1,1,6,6},
        {0, 1, 0, 0, 1, 1, 1, 0,0,0,0,0,0,1,0,1,1,1,1,0,1,0,1,0,0,11,11},
        {0, 6, 1, 0, 1, 1, 1, 0,1,1,1,0,1,1,0,0,0,0,0,0,0,0,1,0,11,6,6},
        {0, 6, 1, 0, 1, 1, 1, 0,1,1,1,0,1,1,0,1,1,1,1,1,1,0,1,0,11,6,6},
        {0, 6, 1, 0, 1, 1, 1, 0,0,0,0,0,1,1,0,0,0,0,0,1,1,0,0,1,11,6,6},
        {6, 0, 0, 0, 1, 1, 1, 0,1,1,1,0,1,1,1,1,1,1,0,1,1,1,1,11,11,6,6},
        {0, 6, 1, 0, 0, 0, 0, 0,1,1,1,0,1,1,1,1,1,1,0,1,1,1,1,11,6,6},
        {0, 11, 1, 1, 1, 1, 1, 1,1,0,0,0,0,0,0,1,1,1,1,0,0,0,0,11,11,6},
        {0, 11, 1, 1, 1, 1, 1, 0,0,0,1,1,1,1,1,6,6,6,0,6,6,1,1,0,11,6},
        {0, 11,11, 11, 11,11, 11, 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,6,6}
        
        
    }

        

    tilemapp={}
    
    
      table.insert(tilemapp,tilemap1)
      table.insert(tilemapp,tilemap2)
      table.insert(tilemapp,tilemap3)
      table.insert(tilemapp,tilemap4)    --Create our player
      tilemap=tilemapp[1]

    opp={
      
      chick = love.graphics.newImage("chick.png"),
      op_x=26,
      op_y=16
      
      }
end

function create_pl(x,y)
      player = {
        chicken = love.graphics.newImage("chicken.png"),
        tile_x = x,
        tile_y = y
    }
end
  

function love.keypressed(key)
    local x = player.tile_x
    local y = player.tile_y

    if key == "left" then
        x = x - 1
    elseif key == "right" then
        x = x + 1
    elseif key == "up" then
        y = y - 1
    elseif key == "down" then
        y = y + 1
    end
    

      

    if isEmpty(x, y) then
        player.tile_x = x
        player.tile_y = y
    end
    if check_col(opp,player) then
        i=i+1
        if i<2 then 
          tilemap=tilemapp[2]
          create_pl(2,13)
          opp.op_x=27
          opp.op_y=9
        else
          love.event.quit("restart")
        end
    end
end
function isEmpty(x, y)
    return tilemap[y][x] == 0 or tilemap[y][x]==11
end

function love.draw()
    for i,row in ipairs(tilemap) do
        for j,tile in ipairs(row) do
            if tile == 0 then
                --Draw the image with the correct quad
                love.graphics.draw(grr, j * width, i * height)
            elseif tile==1 then
              love.graphics.draw(block, j * width, i * height)
              

            end 
        end
    end
        for i,row in ipairs(tilemap) do
        for j,tile in ipairs(row) do
            if tile == 6 or tile==11 then
                
                love.graphics.draw(arr, j * width, i * height)

            end 
        end
    end

    
    love.graphics.draw(player.chicken, player.tile_x * width, player.tile_y * height)
    love.graphics.draw(opp.chick, opp.op_x * width, opp.op_y * height)
    
end
function check_col(ob1,ob2)
  if i==1 then
    
    if ob1.op_x==ob2.tile_x then
    
      return true
    end
  elseif i<1 then
    if ob1.op_x==ob2.tile_x+1 then
      return true
    
 
    
  end
end
end    