-- Fichier principal d'execution du jeu ne contient pas les librairies.
--[[
Liste des 5 elements qui constituent vraiment des prioritées absolues :
  
  - Programmer un systeme de points de vie du joueur, et des ennemis.
  - Programmer l'affichage des menus : principal, pause, quitter, parametres, fin, jeu, gagné, perdu.
  - Programmer visuel des degats, vie du hero, des zombies.
  - Programmer parametres du son, des commandes, et affichage.
  - Programmer demo d'aide au jeu.

Details des taches
programmer l'ecran de menu : 
  - pas de bouton tout au clavier, 
  - presenter les entités du jeu depuis le menu -> hero, ennemies, power ups, el de decor
  
programmer l'ecran de jeu :
  - jauges et infos du hero -> vie, armure, force de click, progression, pourcentage boss.


Taches terminées
  - ecran d'intro, menu
  
  
]]


--import required modules for the game.
require       'assets.code.data'
require       'assets.code.menu'
require       'assets.code.quit'
require       'assets.code.play'
require       'assets.code.debug'

-- appeler la fonction debug
--ft_debug()

-- display screen
love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )

-- fonction d'attente socket.sleep
socket = require'socket'

function love.keypressed(key)
        
    if key == 'escape' then
      love.event.quit('quit')
    end
    
    if key == "space" then
      ft_start()
    end
  end
  
  --Start screen function
function ft_start()
    
    world.screen = "start"
    print(world.joueur.screen)
    love.graphics.setFont(fonts.game.title)

    function love.draw()
    
    love.graphics.print("Clash of Zombies",scr.X/2.8, scr.Y/20,r,scr.ratio_X*2, scr.ratio_Y*2)
    love.graphics.print("Press Space",scr.X/2.5, scr.Y/1.1,r,scr.ratio_X*2, scr.ratio_Y*2)
  
    -- Dessiner la souris
  love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
  love.mouse.setVisible(false)
  
  end
  
    function love.keypressed(key)
        
    if key == 'escape' then
      ft_quit()
    end
    
    if key == "space" then
<<<<<<< HEAD
      love.audio.pause(world.param.bgm)
=======
      love.audio.pause(world.vol.bgm)
>>>>>>> 5e291a5feee59c4f73577fc18cd0a953281543d9
      ft_menu()
    end
    
  end
  
end

function ft_jicle()
    
<<<<<<< HEAD
  world.param.bgm = love.audio.newSource("assets/sounds/jicle.mp3", "stream")
  world.screen = "jicle"
  print(world.screen)
  love.audio.play(world.param.bgm)
=======
  world.vol.bgm = love.audio.newSource("assets/sounds/jicle.mp3", "stream")
  world.screen = "jicle"
  print(world.screen)
  love.audio.play(world.vol.bgm)
>>>>>>> 5e291a5feee59c4f73577fc18cd0a953281543d9
  
  function love.draw()
  
    love.graphics.draw(world.bg.jic,0,0,r,scr.ratio_X,scr.ratio_Y)
  
  end
  
end

-- Initialiser le deroulement du jeu par la fonction ft_jicle l"ecran de demarrage en quelque sorte.
ft_jicle()
--
io.stdout:setvbuf("no")
	