function ft_play(state)
    
  world.screen = "game"
  print(world.screen)
  love.audio.play(world.mus.pla)
  love.audio.play(world.mus.sfx.zb01)
  
  function love.draw()
      
    love.graphics.draw(world.bg.pla,0, 0,r, scr.ratio_X, scr.ratio_Y)
  
end
end
-- end