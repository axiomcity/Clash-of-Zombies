-- Fichier main.lua d'ou part le programme.


------------------- importer les librairies
require       'assets.code.data'
require       'assets.code.menu'
require       'assets.code.play'
require       'assets.code.param'
require       'assets.code.pause'


------------------ debut
--ft_debug()
-- display screen
love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )
-- fonction d'attente socket.sleep
socket = require'socket'
love.graphics.setFont(fonts.game.title)


-------------------------- fonction logo
function ft_logo()
  -- Gestion du clavier -> quitter, ecran coz
  function love.keypressed(key)
        
    if key == 'escape' then
      love.event.quit('quit')
    end
    if key == "space" then
      ft_menu()
    end
  end
  world.screen = "logo"
  print(world.screen)
  love.audio.play(world.mus.jic)
  function love.draw()
    love.graphics.draw(world.bg.jic,0,0,r,scr.ratio_X,scr.ratio_Y)
  end
end
ft_logo()
  
  
-------------------------- fonction menu
function ft_menu()

-- code de test
-- blah blah

-- Gestion du clavier -> quitter, lancer une partie, parametres.
function love.keypressed(key)
  if key == 'escape' then
    ft_quit()
  end
  if key == 'space' then
    love.audio.pause(world.param.bgm)
    ft_play()
  end
  if key == 'p' then
    ft_param()
  end
end  

world.screen = "menu"
print(world.screen)
love.audio.pause()
love.audio.play(world.mus.men)

function love.draw()

    love.graphics.draw(world.bg.pla,0,0,r, scr.ratio_X, scr.ratio_Y)
    love.graphics.print(world.player.score,scr.X/2, scr.Y/20,r, scr.ratio_X, scr.ratio_Y)
    love.graphics.print("Appuiez sur espace pour Jouer \n Appuiez sur P pour aller aux parametres \n Appuiez sur Echap pour Quitter", scr.X/20, scr.Y/2,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print("Clash of Zombies",scr.X/2.8, scr.Y/20,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print("Press Space",scr.X/2.5, scr.Y/1.1,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.draw(world.mouse, love.mouse.getX(), love.mouse.getY())
    love.mouse.setVisible(false)
  
  end
end


-------------------------- fonction quit
function ft_quit()
  
  escape = false
  world.bg          = love.graphics.newImage('assets/world/bg/bg_quitter.png')
  love.audio.pause()
  
function love.draw()
  
  -- Dessiner le message qui demande si le joueur veut vraiment quitter ?
  love.graphics.draw(world.bg,0, 0,r, scr.ratio_X, scr.ratio_Y)
  love.graphics.print("Voulez vous vraiment quitter ? \n oui entrée, non echap", scr.X/20, scr.Y/1.2,r,scr.ratio_X*2,scr.ratio_Y*2)

    -- Dessiner la souris
  love.graphics.draw(world.mouse, love.mouse.getX(), love.mouse.getY())
  love.mouse.setVisible(false)
  
end

-- Gestion du clavier
function love.keypressed(key)
    if key == 'return' then
      love.event.quit('quit')
    end
    
    if key == 'escape' then
      ft_menu()
    end
end
  
end


--------------------------- Fonction debug
function ft_debug()
  
  -- display screensize
  love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )
  
  love.audio.pause()
  
  print("debug")
  test = love.audio.newSource('assets/sounds/bgm_play.ogg', "stream")
  i = 1
  --love.audio.play(test)

end


------------------------- fonction pause
function ft_pause()
  
  -- Gestion du clavier -> reprendre la partie
function love.keypressed(key)
  if key == 'escape' then
      ft_play(user) -- Reprendre la partie en cours.
    end
end

love.audio.stop()

function love.draw()
  love.graphics.draw(world.bg.pau,0, 0,r, scr.ratio_X, scr.ratio_Y)
  love.graphics.print("Revenir au jeu touche Echap ",scr.X/20,scr.Y/2,r,scr.ratio_X,scr.ratio_Y)
  love.graphics.print("Aller au menu touche M ",scr.X/20,scr.Y/2.2,r,scr.ratio_X,scr.ratio_Y)
  love.graphics.print("Aller aux parametres touche P",scr.X/20,scr.Y/2.2,r,scr.ratio_X,scr.ratio_Y)
end
end

io.stdout:setvbuf("no")
	