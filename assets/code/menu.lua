function ft_menu()
  
  world.screen = "menu"
  world.bg            = love.graphics.newImage('assets/world/images/bg/bg_menu.jpg')
  world.bgm           = love.audio.newSource('assets/sounds/bgm_menu.ogg', "stream")
  love.audio.play(world.bgm)
  print(world.screen)

function love.draw()
    
    -- Dessiner le fond et les boutons de jeu.
    love.graphics.draw(world.bg,0, 0,r, scr.ratio_X, scr.ratio_Y)
    
    -- Dessiner les instructions
    love.graphics.print("Appuiez sur espace pour Jouer",              scr.X/20, scr.Y/1.5,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print("Appuiez sur P pour aller aux parametres",    scr.X/20, scr.Y/1.4,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print("Appuiez sur Echap pour Quitter",             scr.X/20, scr.Y/1.3,r,scr.ratio_X*2, scr.ratio_Y*2)
  
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

  
  function love.draw()
  
    love.graphics.draw(world.bg,0, 0,r, scr.ratio_X, scr.ratio_Y)
    
    love.graphics.print("Clavier : haut, bas, gauche, droite, 1, et 2",     scr.X/20, scr.Y/1.8,r,scr.ratio_X*2, scr.ratio_Y*2)
    
    love.graphics.print("Regler musique " .. world.vol.bgm,                  scr.X/20, scr.Y/1.1,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print("Regler effets " .. world.vol.sfx,                   scr.X/20, scr.Y/1.2,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print("Tester le son " .. world.vol.name,                 scr.X/20, scr.Y/1.3,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print("Regler affichage " .. world.pleinecran,            scr.X/20, scr.Y/1.4,r,scr.ratio_X*2, scr.ratio_Y*2)
    
    -- Dessiner la souris
    love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
    love.mouse.setVisible(false)  
    
  end
  
  function love.keypressed(key)
  
  if key == 'up' then

    world.vol.lvl = world.vol.lvl + .1
    world.vol.test:setVolume(world.vol.lvl)
    print(world.vol.lvl)
    
    if world.vol.lvl >= 1 then
      world.vol.lvl = world.vol.lvl - .1
    end
  end
  
  if key == 'down' then
    
    world.vol.lvl = world.vol.lvl - .1
    world.vol.test:setVolume(world.vol.lvl)
    print(world.vol.lvl)
        
    if world.vol.lvl <= .1 then
      love.audio.pause()
      world.vol.lvl = 0
    end
  end
  
  if key == '1' then
    
    world.vol.bgm = world.vol.lvl
    love.audio.pause()
    world.vol.test = love.audio.newSource('assets/sounds/bgm_play.ogg', "stream")
    love.audio.play(world.vol.test)
    world.vol.name = "Musique"
  
  end
  
  if key == '2' then
  
    world.vol.sfx = world.vol.lvl
    love.audio.pause()
    world.vol.test = love.audio.newSource('assets/sounds/effects/sfx_zombie_11.mp3', "stream")
    love.audio.play(world.vol.test)
    world.vol.name = "effets sonores"
  
  end
  
  if key == 'right' then
    
    world.plein_ecran = "fenetré"
    love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } ) 
  
  end

  if key == 'left' then
    
    world.plein_ecran = "plein ecran"
    love.window.setMode( 1280, 720, {fullscreen = true, vsync = true, resizable = true } ) 
  
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
