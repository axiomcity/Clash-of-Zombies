-- Fichier principal d'execution du jeu ne contient pas les librairies.

--import required modules for the game.
require'assets.code.intro'
require'assets.code.data'
require'assets.code.menu'
require'assets.code.jicle'

-- display screensize
love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )

-- fonction d'attente socket.sleep
socket = require'socket'

-- initialise le demarrage du jeu automatiquement dans l'ecran d'introduction.
ft_jicle()

-- Everything that need to be refresh and is constant
function love.update()
  
  screensize = {
    -- GET screensize SIZE
    wallpaper = love.graphics.newImage('assets/world/images/bg/bg_day.jpg'),
    X = love.graphics.getWidth(),
    Y = love.graphics.getHeight(),
    ratio_X = love.graphics.getWidth()/world.bg:getWidth(),
    ratio_Y = love.graphics.getHeight()/world.bg:getHeight(),
}

  mouse = {
    sprite = love.graphics.newImage('assets/world/images/cursor.png'),
    X = love.mouse.getX(),
    Y = love.mouse.getY()
}

end

  function love.keypressed(key)
        
    if key == 'escape' then
      love.event.quit('quit')
    end
    
    if key == "space" then
      love.audio.pause()
      ft_intro()
    end
    
  end
  
-- ecran de sortie quitter
function ft_quit()
  
  escape = false
  love.audio.pause()
  world.bg = love.graphics.newImage('assets/world/images/bg/bg_quit.png')
  
function love.draw()
  love.graphics.draw(world.bg,0, 0,r, screensize.ratio_X, screensize.ratio_Y)
  love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
  love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
  love.graphics.print("Voulez vous vraiment quitter ?", screensize.X/2.5, screensize.Y/1.3,r,2,2)
  love.graphics.print("oui entrée, non echap", screensize.X/2.5, screensize.Y/1.2,r,2,2)
end

  function love.keypressed(key)
      if key == 'return' then
        love.event.quit('quit')
      end
      
      if key == 'escape' then
        ft_menu()
      end
  end
  
end

--
io.stdout:setvbuf("no")
	