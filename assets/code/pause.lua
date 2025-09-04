-- Fichier pour tester un bout de code

-- Creer une metatable.
---[[
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