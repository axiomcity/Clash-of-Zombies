function ft_intro()
  
  world.screen = "intro"
  print("screen : ", world.screen)
  
  -- Play the video opening
  world.video:play()
  
  -- Display the screen and text intro
  function love.draw()
    love.graphics.draw(world.video,0,0,r, screensize.ratio_X, screensize.ratio_Y)
    love.graphics.print("'P' to pause", screensize.X/20, screensize.Y/4,r,2,2)
    love.graphics.print("'R' to rewind", screensize.X/20, screensize.Y/5,r,2,2)
    love.graphics.print("Press 'Space Bar'", screensize.X/2.5, screensize.Y/1.1,r,2,2)
  
  function love.keypressed(key)
  if key == 'p' then
    if (world.video:isPlaying()) then
      world.video:pause()
      else
    world.video:play()
  end
  end

  if key == 'escape' then
    world.bg = love.graphics.newImage('assets/world/images/bg/bg_quitter.png')
    --love.event.quit('quit')
  end

  if key == 'r' then
    world.video:rewind()
  end
  
  if key == 'space' then
    ft_menu()
  end

end

end

end