function ft_menu()
  
  world.screen = "menu"
  world.bg            = love.graphics.newImage('assets/world/images/bg/bg_menu.jpg')
  world.bgm           = love.audio.newSource('assets/sounds/bgm_menu.ogg', "stream")
  love.audio.pause()
  love.audio.play(world.vol.bgm_test)
  love.audio.play(world.vol.sfx_test)
  print(world.screen)
  love.graphics.setFont(fonts.game.message)

function love.draw()
    
    -- Dessiner le fond et les boutons de jeu.
    love.graphics.draw(world.bg,0, 0,r, scr.ratio_X, scr.ratio_Y)
    
    -- Dessiner les instructions
    love.graphics.print("Appuiez sur espace pour Jouer \n Appuiez sur P pour aller aux parametres \n Appuiez sur Echap pour Quitter",              scr.X/20, scr.Y/2,r,scr.ratio_X*2, scr.ratio_Y*2)
  
  -- Dessiner la souris
  love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
  love.mouse.setVisible(false)
  
  end

function love.keypressed(key)
  
  if key == 'escape' then
    ft_quit()
  end
  
  if key == 'space' then
    ft_play()
  end
  
  if key == 'p' then
    ft_parametres()
  end

end
end

function ft_parametres()
  
  world.bg = love.graphics.newImage('assets/world/images/bg/bg_parametres.png')
  love.audio.pause()
  love.graphics.setFont(fonts.game.button)

  
  function love.draw()
  
    love.graphics.draw(world.bg,0, 0,r, scr.ratio_X, scr.ratio_Y)
    
    love.graphics.print("Son : Haut et Bas ",     scr.X/20, scr.Y/5,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print("Image Gauche et Droite ",     scr.X/2, scr.Y/5,r,scr.ratio_X*2, scr.ratio_Y*2)
    
    love.graphics.print(" Choisir les sons joues en jeu\n " .. world.vol.name,                   scr.X/20, scr.Y/2,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print(" Choisir le mode d'affichage de l'ecran\n " .. world.pleinecran,            scr.X/2, scr.Y/2,r,scr.ratio_X*2, scr.ratio_Y*2)
    
    -- Dessiner la souris
    love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
    love.mouse.setVisible(false)  
    
  end
  
  function love.keypressed(key)
  
  if key == 'up' then
    
    if world.vol.set >= 4 then
      world.vol.set = world.vol.set - 1
    end
    
    world.vol.set = world.vol.set + 1
    love.audio.play(world.vol.bgm_test)
    love.audio.play(world.vol.sfx_test)
    print(world.vol.set)
  end
  
  if key == 'down' then
    
    if world.vol.set <= 1 then
        world.vol.set = world.vol.set + 1
      end
    
    world.vol.set = world.vol.set - 1
    love.audio.play(world.vol.bgm_test)
    love.audio.play(world.vol.sfx_test)
    print(world.vol.set)
  
  end
    
  if world.vol.set == 1 then
  
    world.vol.bgm_test:setVolume(0)
    world.vol.sfx_test:setVolume(0)
    world.vol.name = "Aucun sons" 
    
  elseif world.vol.set == 2 then
  
    world.vol.bgm_test:setVolume(1)
    world.vol.sfx_test:setVolume(0)
    world.vol.name = "Juste la musique" 
    
  elseif world.vol.set == 3 then
  
    world.vol.bgm_test:setVolume(0)
    world.vol.sfx_test:setVolume(1)
    world.vol.name = "Juste les effets sonores" 
    
  elseif world.vol.set == 4 then
  
    world.vol.bgm_test:setVolume(1)
    world.vol.sfx_test:setVolume(1)
    world.vol.name = "Musique plus les effets sonores"

  end
  
  if key == 'right' then
    
    love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } ) 
    world.pleinecran = "fenetré"
  
  end

  if key == 'left' then
    
    love.window.setMode( 1280, 720, {fullscreen = true, vsync = true, resizable = true } ) 
    world.pleinecran = "plein ecran"
  
  end

  if key == 'space' then
    world.bg = love.graphics.newImage('assets/world/images/bg/bg_day.jpg')
  end
  
  if key == 'p' then
    ft_parametres()
  end

  if key == 'escape' then
    ft_menu()
  end
  
end
  
end
