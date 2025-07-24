function ft_menu()
  
  world.screen = "menu"
  world.bg            = love.graphics.newImage('assets/world/images/bg/bg_menu.jpg')
  world.bgm           = love.audio.newSource('assets/sounds/bgm_menu.ogg', "stream")
love.audio.play(world.bgm)

function love.draw()
    
    -- Dessiner le fond et les boutons de jeu.
    love.graphics.draw(world.bg,0, 0,r, screensize.ratio_X, screensize.ratio_Y)
    
    -- Dessiner les instructions
    love.graphics.print("Appuiez sur espace pour Jouer", screensize.X/2.5, screensize.Y/1.4,r,screensize.ratio_X/2, screensize.ratio_Y/2)
    love.graphics.print("Menu des parametres touche P", screensize.X/2.5, screensize.Y/1.5,r,screensize.ratio_X/2, screensize.ratio_Y/2)
    love.graphics.print("Quitter touche Echap", screensize.X/2.5, screensize.Y/1.3,r,screensize.ratio_X/2, screensize.ratio_Y/2)
  
  -- Dessiner la souris
  love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
  love.mouse.setVisible(false)
  
  end

function love.keypressed(key)
  
  if key == 'escape' then
    ft_quit()
  end
  
  if key == 'space' then
    world.bg = love.graphics.newImage('assets/world/images/bg/bg_day.jpg')
  end
  
  if key == 'p' then
    ft_parametres()
  end

end
end

function ft_parametres()
  
  world.bg = love.graphics.newImage('assets/world/images/bg/bg_parametres.jpg')

  
  function love.draw()
  
    love.graphics.draw(world.bg,0, 0,r, screensize.ratio_X, screensize.ratio_Y)
    
    love.graphics.print("Regler le volume touches haut et bas", screensize.X/3, screensize.Y/1.3,r,screensize.ratio_X/2, screensize.ratio_Y/2)
    love.graphics.print("Regler l'affichage touches gauche et droite", screensize.X/3, screensize.Y/1.4,r,screensize.ratio_X/2, screensize.ratio_Y/2)
    
    -- Dessiner la souris
    love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
    love.mouse.setVisible(false)  
    
  end
  
  function love.keypressed(key)
  
  if key == 'up' then
    music = music + 1
    print("music :", music)
  end
  
  if key == 'down' then
    music = music - 1
    print("music :", music)
  end
  
  
  if key == 'right' then
    love.window.setMode( 360, 200, {fullscreen = false, vsync = true, resizable = true } ) 
  end

  if key == 'left' then
    love.window.setMode( 360, 200, {fullscreen = true, vsync = true, resizable = true } ) 
  end


  if key == 'space' then
    world.bg = love.graphics.newImage('assets/world/images/bg/bg_day.jpg')
  end
  
  if key == 'p' then
    ft_parametres()
  end

  if key = 'escape' then
    ft_menu()
  end
  
end
  
end
