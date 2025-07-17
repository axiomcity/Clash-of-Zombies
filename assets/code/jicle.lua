-- Ecran de jicle Studio Maloute

world.bg = love.graphics.newImage('assets/world/images/bg/bg_jicle.jpg')
world.bgm = love.audio.newSource('assets/sounds/jicle.mp3', "stream")


function ft_jicle()

  love.audio.play(world.bgm)
  function love.draw()
    love.graphics.draw(world.bg,0,0,r, screensize.ratio_X, screensize.ratio_Y)
    love.graphics.print("Press 'Space Bar'", screensize.X/2.5, screensize.Y/1.1,r,2,2)
  end

end
--
