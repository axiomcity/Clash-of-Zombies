-- Fichier data qui contient les libraires du jeu.

fonts       = {}
joueur      = {}
ennemie     = {}
world       = {}
scr         = {}

joueur          = {
    
    vie             = 100,
    attaques        = 2,
    blessures       = 0,
    score           = 0,
    score_local     = 0,
    sobriquet       = "",

}

ennemie         = { 
  
  vie               = 10,
  degat             = 1,
  sprite            = love.graphics.newImage('assets/world/images/ennemie.png'),
  
}

world           = {
  
  -- le fond d'ecran et la musique
  bg                = love.graphics.newImage('assets/world/images/bg/bg_jicle.jpg'),
  cursor            = love.graphics.newImage('assets/world/images/cursor.png'),
  screen            = "nil",
  pleinecran        = "plein ecran",
  redim             = true,
  vol           = {
      
        name        = "musique du jeu",
        bgm         = love.audio.newSource("assets/sounds/jicle.mp3", "stream"),
        sfx         = love.audio.newSource("assets/sounds/effects/sfx_test.mp3", "static"),
        set         = 1, -- Choix des paramtres sonores, de 1 a 4
        
      }      
}

content, size = love.filesystem.read("settings.txt")

hey = (string.sub(content,20,22))


if #content >= 12 then
    set_1 = tonumber(string.sub(content,20,20))
    set_2 = tonumber(string.sub(content,22,22))
    set_3 = tonumber(string.sub(content,20,20))
    
    world.vol.bgm:setVolume(set_1)
    world.vol.sfx:setVolume(set_2)
    world.vol.set = set_3
    
end

-- config par defaut
success, message = love.filesystem.write("settings.txt", "[ USER SETTINGS ]\n\n1\n1")

print("donnée enregistrees", world.vol.bgm:getVolume(), world.vol.sfx:getVolume())

-- Police d'ecriture mour le menu et intro
--interface du jeu
fonts.game = {}
fonts.game.title = love.graphics.newFont("assets/fonts/LoveCraft2.ttf", 20)
fonts.game.message = love.graphics.newFont("assets/fonts/VT323.ttf", 14)
fonts.game.button = love.graphics.newFont("assets/fonts/RussoOne.ttf", 14)

fonts.perso = {}
fonts.perso.damage = love.graphics.newFont("assets/fonts/RussoOne.ttf", 12)
fonts.perso.name = love.graphics.newFont("assets/fonts/RussoOne.ttf", 14)

fonts.object = {}
fonts.object.info = love.graphics.newFont("assets//fonts/RussoOne.ttf", 10)
fonts.object.name = love.graphics.newFont("assets/fonts/RussoOne.ttf", 14)

-- Everything that need to be refresh and is constant
function love.update()
  
  scr = {
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

--[[

Rappelle de code LOVE2D

sound = love.audio.newSource("pling.wav", "static")
--Charger le fichier audio en memoire.

music = love.audio.newSource("techno.ogg", "stream")
--Lire le fichier audio en direct sur le disque dur

]]