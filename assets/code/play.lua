function ft_play(state)
    
  world.screen = "game"
  world.bg = love.graphics.newImage('assets/world/images/bg/bg_day.jpg')
  print(world.screen)
  love.audio.play(world.vol.bgm)
  love.audio.play(world.vol.sfx)
  
  function love.draw()
      
    love.graphics.draw(world.bg,0, 0,r, scr.ratio_X, scr.ratio_Y)
  
end
<<<<<<< HEAD

  
function ft_pause(state)

  world.bg = love.graphics.newImage('assets/world/images/bg/bg_pause.png')
  world.vol.bgm = .3
  world.vol.sfx = .3

  function love.draw()
      
    love.graphics.draw(world.bg,0, 0,r, scr.ratio_X, scr.ratio_Y)
    love.graphics.print("Revenir au jeu touche Echap ",scr.X/20,scr.Y/2,r,scr.ratio_X,scr.ratio_Y)
    love.graphics.print("Aller au menu touche M ",scr.X/20,scr.Y/2.2,r,scr.ratio_X,scr.ratio_Y)
    love.graphics.print("Aller aux parametres touche P",scr.X/20,scr.Y/2.2,r,scr.ratio_X,scr.ratio_Y)
  
end

function love.keypressed(key)

  if key == 'escape' then
    if state == 1 then
      ft_pause()
    end
  
  if key == 'P' then
    ft_parametres()
  end

=======

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
>>>>>>> 5e291a5feee59c4f73577fc18cd0a953281543d9
end
end

end
<<<<<<< HEAD
end
=======
>>>>>>> 5e291a5feee59c4f73577fc18cd0a953281543d9
--