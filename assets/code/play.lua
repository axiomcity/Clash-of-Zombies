function ft_play()
    
  world.screen = "game"
  world.bg = love.graphics.newImage('assets/world/images/bg/bg_day.jpg')
  print(world.screen)
  love.audio.play(world.vol.bgm)
  love.audio.play(world.vol.sfx)
  
  function love.draw()
      
    love.graphics.draw(world.bg,0, 0,r, scr.ratio_X, scr.ratio_Y)
  
end

function love.keypressed(key)
  
  if key == 'escape' then
  
  ft_pause()

end


function ft_pause()

  world.bg = love.graphics.newImage('assets/world/images/bg/bg_day.jpg')
  world.vol.bgm = .3
  world.vol.sfx = .3

  function love.draw()
      
    love.graphics.draw(world.bg,0, 0,r, scr.ratio_X, scr.ratio_Y)
  
end
end
end

end
--