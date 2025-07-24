-- Fichier principal d'execution du jeu ne contient pas les librairies.

--[[
Liste des 5 elements qui constituent vraiment des prioritées absolues :

- Programmer un systeme de points de vie du joueur, et des ennemis.
- Programmer Tous les ecrans : principal, pause, quitter, parametres, fin, jeu, gagné, perdu.
- Programmer visuel des degats, vie du hero, des zombies.
- Programmer parametres du son, des commandes, et affichage.
- Programmer demo d'aide au jeu.
]]

--import required modules for the game.
require       'assets.code.data'
require       'assets.code.menu'
require       'assets.code.quit'

-- display screensize
love.window.setMode( 360, 200, {fullscreen = false, vsync = true, resizable = true } )

-- fonction d'attente socket.sleep
socket = require'socket'

-- Everything that need to be refresh and is constant
function love.update()
  
  screensize = {
    -- GET screensize SIZE
    wallpaper         = love.graphics.newImage('assets/world/images/bg/bg_day.jpg'),
    X                 = love.graphics.getWidth(),
    Y                 = love.graphics.getHeight(),
    ratio_X           = love.graphics.getWidth()/world.bg:getWidth(),
    ratio_Y           = love.graphics.getHeight()/world.bg:getHeight(),
}

  mouse = {
    sprite            = love.graphics.newImage('assets/world/images/cursor.png'),
    X                 = love.mouse.getX(),
    Y                 = love.mouse.getY()
}
  
end

  function love.keypressed(key)
        
    if key == 'escape' then
      love.event.quit('quit')
    end
    
    if key == "space" then
      ft_menu()
    end
    
  end
  
  --Start screen function
function ft_start()
    
    world.bg = love.graphics.newImage('assets/world/images/bg/bg_start.png')
    
    function love.draw()
      
    love.graphics.print("Press Space", screensize.X/2.2, screensize.Y/1.1,r,screensize.ratio_X/2, screensize.ratio_Y/2)
    love.graphics.print("Vous allez jouer a Clash of Zombies", screensize.X/3, screensize.Y/20,r,screensize.ratio_X/2, screensize.ratio_Y/2)
  
    -- Dessiner la souris
  love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
  love.mouse.setVisible(false)
  
  end
  
end

function ft_jicle()
  
  world.bg = love.graphics.newImage('assets/world/images/bg/bg_jicle.jpg')
  world.screen = "jicle"
  
  function love.draw()
  
    love.graphics.draw(world.bg, 0,0,r,screensize.ratio_X,screensize.ratio_Y)
  
  end
  
end

-- Initialiser le deroulement du jeu par la fonction ft_jicle l"ecran de demarrage en quelque sorte.
ft_jicle()
--
io.stdout:setvbuf("no")
	