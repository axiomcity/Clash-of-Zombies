-- Fichier data qui contient les libraires du jeu.

joueur          = {
    
    vie         = 100,
    attaques    = 2,
    blessures   = 0,
    score       = 0,
    score_local = 0,
    sobriquet   = "",
    sfx         = love.audio.newSource("assets/sounds/bgm_soupes.mp3", "static"),

}

ennemie         = { 
  
  vie           = 10,
  degat         = 1,
  sprite        = love.graphics.newImage('assets/world/images/ennemie.png'),
  sfx           = love.audio.newSource("assets/sounds/effects/sfx_zombie_04.mp3", "static"),
  
}

world           = {
  
  -- le fond d'ecran et la musique
  bg            = love.graphics.newImage('assets/world/images/bg/bg_jicle.jpg'),
  bgm           = love.audio.newSource('assets/sounds/jicle.mp3', "stream"),
  cursor        = love.graphics.newImage('assets/world/images/cursor.png'),
  screen        = "nil",
  pleinecran   = "plein ecran",
  redim         = true,
  vol = {
      
        test      = love.audio.newSource('assets/sounds/bgm_play.ogg', "stream"),
        name      = "musique du jeu",      
        bgm       = 1,
        sfx       = 1,
        lvl       = 1,
      }      
}

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