--fichier quit.lua d'ecran de sortie du jeu.

-- fonction pour afficher l'ecran de sortie du jeu.
function ft_quit()
  
  escape = false
  world.bg          = love.graphics.newImage('assets/world/images/bg/bg_quit.jpg')
  love.audio.pause()
  
function love.draw()
  
  -- Dessiner le message qui demande si le joueur veut vraiment quitter ?
  love.graphics.draw(world.bg,0, 0,r, screensize.ratio_X, screensize.ratio_Y)
  love.graphics.print("Voulez vous vraiment quitter ?", screensize.X/2.5, screensize.Y/1.3,r,screensize.ratio_X/2,screensize.ratio_Y/2)
  love.graphics.print("oui entrée, non echap", screensize.X/2.5, screensize.Y/1.2,r,screensize.ratio_X/2,screensize.ratio_Y/2)

    -- Dessiner la souris
  love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
  love.mouse.setVisible(false)
  
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