function ft_menu()
  
  world.screen = "menu"
  world.bg = love.graphics.newImage('assets/world/images/bg/bg_menu.jpg')
  world.bgm = love.audio.newSource('assets/sounds/bgm_menu.ogg', "stream")
  world.video:pause()
  print("screen : ", world.screen)
  love.audio.play(world.bgm)
  i = 2

  function love.draw()
    
    local btn_play = {
      sprite = love.graphics.newImage('assets/world/images/items/btn_play.png'),
      posx = screensize.X/2,
      posy = screensize.Y/2,
      ratio = screensize.ratio_X*2
    }
    local btn_pseudo = {
      sprite = love.graphics.newImage('assets/world/images/items/btn_pseudo.png'),
      posx = screensize.X/2.5,
      posy = screensize.Y/12,
      ratio = screensize.ratio_X*2
    }

    if ( mouse.X > btn_play.posx and mouse.X < btn_play.posx+64 and mouse.Y > btn_play.posy and mouse.Y < btn_play.posy+64 ) 
      then
      btn_play.sprite = love.graphics.newImage('assets/world/images/items/btn_play_light.png')
    end
    
      if ( mouse.X > btn_pseudo.posx and mouse.X < btn_pseudo.posx+256 and mouse.Y > btn_pseudo.posy and mouse.Y < btn_pseudo.posy+64 ) 
      then
      btn_pseudo.sprite = love.graphics.newImage('assets/world/images/items/btn_pseudo_light.png')
    end
    
    -- Dessiner le fond et les boutons de jeu.
    love.graphics.draw(world.bg,0, 0,r, screensize.ratio_X, screensize.ratio_Y)
    love.graphics.draw(btn_play.sprite, btn_play.posx, btn_play.posy ,r, btn_play.ratio )
    love.graphics.draw(btn_pseudo.sprite, btn_pseudo.posx, btn_pseudo.posy,r, btn_pseudo.ratio,btn_pseudo.ratio)  
    
    -- Dessiner la souris
    love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
    love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
    love.mouse.setVisible(false)
    
    -- Dessiner le pseudo
    love.graphics.print("Veuillez entrer votre prénom avec les touches haut,bas, espace de votre clavier", screensize.X/10, screensize.Y/1.05,r,2,2)
    love.graphics.print(world.alphabet[i], screensize.X/2, screensize.Y/12, r,2,2)
  end

function love.keypressed(key)
      
    if key == 'escape' then
      ft_quit()
    end        
      if key == "up" then
        if (i>35) then i=i-1 end
        i = i + 1
        print(world.alphabet[i], i)
    end      
      if key == "down" then
        if (i<2) then i=i+1 end
        i = i - 1
        print(world.alphabet[i], i)
    end
      if key == "space" then
      player.username = player.username
    end
    if key == "return" then
      print("The game start !!")
    end


      
  end
end
--
