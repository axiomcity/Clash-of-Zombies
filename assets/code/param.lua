function ft_param()
  
  -- Gestion du clavier -> musique de fond, effets sonores, taille d'ecran
  --
  function love.keypressed(key)
    
  if key == 'left' then
    love.window.setMode( 1280, 720, {fullscreen = true, vsync = true, resizable = true } ) 
    world.pleinecran = "plein ecran"
  end
  
  if key == 'right' then
    love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } ) 
    world.pleinecran = "fenetré"
  end
  
  if key == 'escape' then
  -- Enregistrer les preferences
  success, message = love.filesystem.write("settings.txt", "[ USER SETTINGS ]\n\n")
  success, message = love.filesystem.append("settings.txt", world.param.bgm:getVolume() .. "\n")
  success, message = love.filesystem.append("settings.txt", world.param.bgm:getVolume() .. "\n")
  local save_directory = love.filesystem.getSaveDirectory()
  print("Le répertoire de sauvegarde est : " .. save_directory)
  print("vol sfx = ", world.param.sfx:getVolume())
  print("vol bgm = ", world.param.bgm:getVolume())
  ft_pause()
end
if imgame == true then ft_play(state)
end
    
  if key == 'down' then
    
    -- Empecher d'aller en dessous de 0
    if world.param.son <= 1 then
        world.param.son = world.param.son + 1
      end
    world.param.son = world.param.son - 1
    love.audio.play(world.param.bgm)
    love.audio.play(world.param.sfx)
    print("Ecouter les sons", world.param.sfx:getVolume(), world.param.bgm:getVolume())
  end
  
  if key == 'up' then
    
    -- Empecher d'aller au dessus de 4
    if world.param.son >= 4 then
      world.param.son = world.param.son - 1
    end
    world.param.son = world.param.son + 1
    love.audio.play(world.param.bgm)
    love.audio.play(world.param.sfx)
    print("Ecouter les sons", world.param.sfx:getVolume(), world.param.bgm:getVolume())
  end
    
  if world.param.son == 1 then
    
    -- Ce gros bloc de code applique les parametres 
    -- sonores des effets et de la musique avec setvolume
    world.param.bgm:setVolume(0)
    world.param.sfx:setVolume(0)
    world.param.name = "Aucun sons" 
    world.param.set = world.param.set - 1 
    elseif world.param.set == 1 then
    world.param.bgm:setVolume(0)
    world.param.sfx:setVolume(0)
    world.param.name = "Aucun sons" 
    elseif world.param.son == 2 then
    world.param.bgm:setVolume(1)
    world.param.sfx:setVolume(0)
    world.param.name = "Juste la musique" 
    elseif world.param.son == 3 then
    world.param.bgm:setVolume(0)
    world.param.sfx:setVolume(1)
    world.param.name = "Juste les effets sonores" 
    elseif world.param.son == 4 then
    world.param.bgm:setVolume(1)
    world.param.sfx:setVolume(1)
    world.param.name = "Musique plus les effets sonores"
  end
  
---
  
love.audio.pause()
love.graphics.setFont(fonts.game.button)

  function love.draw()
    love.graphics.draw(world.bg.par,0, 0,r, scr.ratio_X, scr.ratio_Y)
    love.graphics.print("Son : Haut et Bas ",                     scr.X/20, scr.Y/5,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print("Image Gauche et Droite ",                scr.X/2, scr.Y/5,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print(" Choisir les sons joues en jeu\n " .. world.param.name,                        scr.X/20, scr.Y/2,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print(" Choisir le mode d'affichage de l'ecran\n " .. world.param.ecrname,            scr.X/2, scr.Y/2,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.draw(world.mouse, love.mouse.getX(), love.mouse.getY())
    love.mouse.setVisible(false)  
  end
end
end

---
