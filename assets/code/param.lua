-- Fichier param contenant tout les ecrans de parametres pause etc d'experience utilisateur.

function ft_pause(state)
  
  love.audio.stop(world.mus.pla)

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
    end
  
  if key == 'P' then
    ft_parametres()
  end

end

end


------------- fonction pour afficher l'ecran de sortie du jeu.
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

  function love.keypressed(key)
      if key == 'return' then
        love.event.quit('quit')
      end
      
      if key == 'escape' then
        ft_menu()
      end
  end
  
end


----------------- Fonction debug
function ft_debug()
  
  -- display screensize
  love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )
  
  love.audio.pause()
  
  print("debug")
  test = love.audio.newSource('assets/sounds/bgm_play.ogg', "stream")
  i = 1
  --love.audio.play(test)

end



-- Exo 1 : Creer une metatable.
--[[
mytable = setmetatable( {key1="value1"}, {__index=function( mytable, key, otherkey ) 
    
      --Check key
      if key == "mem" then
        memory = 64
        for i=1,4,1 do
          memory = memory*2
        end
        
        return memory .. "KB"
      else
        return nil
      end
    end
    
  }
)
print(mytable.mem)
io.write("Hello world, from ",_VERSION,"!\n")
--]]


----------------- prochaine fonction ici

----