-- Bienvenue dans la fonction de debug

function ft_debug()
  
  -- display screensize
  love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )
  
  love.audio.pause()
  
  print("debug")
  test = love.audio.newSource('assets/sounds/bgm_play.ogg', "stream")
  i = 1
  love.audio.play(test)

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