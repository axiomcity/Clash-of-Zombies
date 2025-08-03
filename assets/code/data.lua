-- Fichier data qui contient les libraires du jeu.

truc = {
  
  bg = 1,
  
  truc = {
    
    bg = 3,
    },
  
  }



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
<<<<<<< HEAD
  sprite            = love.graphics.newImage('assets/world/ennemie.png')
=======
  sprite            = love.graphics.newImage('assets/world/images/ennemie.png'),
>>>>>>> 5e291a5feee59c4f73577fc18cd0a953281543d9
  
}

world           = {
  
<<<<<<< HEAD
  scr        = love.graphics.newImage('assets/world/bg/bg_play.jpg'),
  
  -- Charger les fonds d'ecrans
  bg = {

    loaded     = 1, -- 1 menu, 2 jeu, 3 parametres, 4 pause, 5 mort, leaderboard.
    cha        = love.graphics.newImage('assets/world/bg/bg_challenge.jpg'),
    bon        = love.graphics.newImage('assets/world/bg/bg_bonus.jpg'),
    pla        = love.graphics.newImage('assets/world/bg/bg_play.jpg'),
    tit        = love.graphics.newImage('assets/world/bg/bg_titre.jpg'),
    pln        = love.graphics.newImage('assets/world/bg/bg_play_night.jpg'),
    par        = love.graphics.newImage('assets/world/bg/bg_parametres.png'),
    jic        = love.graphics.newImage('assets/world/bg/bg_jicle.jpg'),
    qui        = love.graphics.newImage('assets/world/bg/bg_quitter.png'),
    sco        = love.graphics.newImage('assets/world/bg/bg_scores.png'),
    pau        = love.graphics.newImage('assets/world/bg/bg_pause.png'),
    sta        = love.graphics.newImage('assets/world/bg/bg_start.png'),
    
  },
  
    -- données joueur
  joueur = {
    
    survole           = 0,
    score             = 0, -- score de la derniere partie
    screen            = "nil",
    
  },
  
  -- Charger les actifs du jeu.
  assets = {

    icon       = love.graphics.newImage('assets/world/icon.png'),
    cursor     = love.graphics.newImage('assets/world/cursor.png'),
    score      = love.graphics.newImage('assets/world/elem/score.jpg'),
    lamp       = love.graphics.newImage('assets/world/elem/lamp.png'),
    tree_1     = love.graphics.newImage('assets/world/elem/tree_01.png'),
    tree_2     = love.graphics.newImage('assets/world/elem/tree_02.png'),
    tree_3     = love.graphics.newImage('assets/world/elem/tree_03.png'),
    tree_4     = love.graphics.newImage('assets/world/elem/tree_04.png'),
    tree_5     = love.graphics.newImage('assets/world/elem/tree_05.png'),

    },

  -- Reglages des paramtres graphiques et audio
  param           = {
=======
  -- le fond d'ecran et la musique
  bg                = love.graphics.newImage('assets/world/images/bg/bg_jicle.jpg'),
  cursor            = love.graphics.newImage('assets/world/images/cursor.png'),
  screen            = "nil",
  pleinecran        = "plein ecran",
  redim             = true,
  vol           = {
>>>>>>> 5e291a5feee59c4f73577fc18cd0a953281543d9
      
        name        = "musique du jeu",
        bgm         = love.audio.newSource("assets/sounds/jicle.mp3", "stream"),
        sfx         = love.audio.newSource("assets/sounds/effects/sfx_test.mp3", "static"),
<<<<<<< HEAD
        son         = 1, -- Choix des paramtres sonores, de 1 a 4
        ecr         = true,
        ecrname     = "plein ecran",
=======
        set         = 1, -- Choix des paramtres sonores, de 1 a 4
>>>>>>> 5e291a5feee59c4f73577fc18cd0a953281543d9
        
      }      
}

content, size = love.filesystem.read("settings.txt")

hey = (string.sub(content,20,22))


if #content >= 12 then
    set_1 = tonumber(string.sub(content,20,20))
    set_2 = tonumber(string.sub(content,22,22))
    set_3 = tonumber(string.sub(content,20,20))
    
<<<<<<< HEAD
    world.param.bgm:setVolume(set_1)
    world.param.sfx:setVolume(set_2)
    world.param.set = set_3
=======
    world.vol.bgm:setVolume(set_1)
    world.vol.sfx:setVolume(set_2)
    world.vol.set = set_3
>>>>>>> 5e291a5feee59c4f73577fc18cd0a953281543d9
    
end

-- config par defaut
success, message = love.filesystem.write("settings.txt", "[ USER SETTINGS ]\n\n1\n1")

<<<<<<< HEAD
print("donnée enregistrees", world.param.bgm:getVolume(), world.param.sfx:getVolume())

-- Police d'ecriture mour le menu et intro
--interface du jeu
fonts               = {}
fonts.game          = {}
fonts.game.title    = love.graphics.newFont("assets/fonts/LoveCraft2.ttf", 20)
fonts.game.message  = love.graphics.newFont("assets/fonts/VT323.ttf", 14)
fonts.game.button   = love.graphics.newFont("assets/fonts/RussoOne.ttf", 14)

fonts.perso         = {}
fonts.perso.damage  = love.graphics.newFont("assets/fonts/RussoOne.ttf", 12)
fonts.perso.name    = love.graphics.newFont("assets/fonts/RussoOne.ttf", 14)

fonts.object        = {}
fonts.object.info   = love.graphics.newFont("assets//fonts/RussoOne.ttf", 10)
fonts.object.name   = love.graphics.newFont("assets/fonts/RussoOne.ttf", 14)
=======
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
>>>>>>> 5e291a5feee59c4f73577fc18cd0a953281543d9

-- Everything that need to be refresh and is constant
function love.update()
  scr = {
    -- GET screensize SIZE
    X                 = love.graphics.getWidth(),
    Y                 = love.graphics.getHeight(),
    ratio_X           = love.graphics.getWidth()/world.scr:getWidth(),
    ratio_Y           = love.graphics.getHeight()/world.scr:getHeight(),
}

  mouse = {
    sprite            = love.graphics.newImage('assets/world/cursor.png'),
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