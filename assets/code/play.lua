function ft_play()
    
  world.screen = "game"
  world.bg = love.graphics.newImage('assets/world/images/bg/bg_day.jpg')
  print(world.screen)
  
  function love.draw()
      
    love.graphics.draw(world.bg,0, 0,r, scr.ratio_X, scr.ratio_Y)
  
  end

end