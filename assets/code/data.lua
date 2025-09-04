-- Fichier data qui contient les libraires du jeu.

world       = {}
scr         = {}

world           = {
  
  player          = {
    
    vie             = 100, -- vie du hero
    armure          = 0, -- armmure du hero
    attaques        = 2, -- degat du click
    score           = 0, -- Recupere le score en ligne par requete web
    score_local     = 0, -- recupere le score enregistré en local exportable.
    sobriquet       = "", -- nom que le joueur choisit a l'ecran titre
    survole         = 0, --animation du hero ay survole de la souris
    score           = 0, -- score de la derniere partie
    screen          = "nil", -- ?
    blessures       = 0, -- ?

},

zb         = {
  
  vie                    = 10, -- vie du zombie
  degat                  = 1, -- degat du zombie lorsqu'il a attein le hero
  sprite = {
  carrerouge           = love.graphics.newImage('assets/world/ennemie.png'), -- apparence physique du zombie spawné
  carrevert            = love.graphics.newImage('assets/world/joueur.png'), -- apparence physique du zombie spawné
  male                 = love.graphics.newImage('assets/world/sprites/character-sheet.png'), -- apparence physique du zombie spawné

  },
  
},
  
  -- Charger les fonds d'ecrans
  bg = {

    loaded     = 1, -- 1 menu, 2 jeu, 3 parametres, 4 pause, 5 mort, leaderboard.
    pla        = love.graphics.newImage('assets/world/bg/bg_play.jpg'),
    cha        = love.graphics.newImage('assets/world/bg/bg_challenge.jpg'),
    bon        = love.graphics.newImage('assets/world/bg/bg_bonus.jpg'),
    tit        = love.graphics.newImage('assets/world/bg/bg_titre.jpg'),
    pln        = love.graphics.newImage('assets/world/bg/bg_play_night.jpg'),
    par        = love.graphics.newImage('assets/world/bg/bg_parametres.png'),
    jic        = love.graphics.newImage('assets/world/bg/bg_jicle.jpg'),
    qui        = love.graphics.newImage('assets/world/bg/bg_quitter.png'),
    sco        = love.graphics.newImage('assets/world/bg/bg_scores.png'),
    pau        = love.graphics.newImage('assets/world/bg/bg_pause.png'),
    sta        = love.graphics.newImage('assets/world/bg/bg_start.png'),
    
},

  mus = {
    
    men         = love.audio.newSource('assets/sounds/bgm_menu.ogg', "stream"),
    nig         = love.audio.newSource('assets/sounds/bgm_night.ogg', "stream"),
    pau = love.audio.newSource('assets/sounds/bgm_pause.ogg', "stream"),
    pla = love.audio.newSource('assets/sounds/bgm_play.ogg', "stream"),
    jic = love.audio.newSource('assets/sounds/bgm_jicle.ogg', "stream"),
    oxo = love.audio.newSource('assets/sounds/bgm_oxo.ogg', "stream"),
    sou = love.audio.newSource('assets/sounds/bgm_soup.ogg', "stream"),
    sfx = {
      
      bde = love.audio.newSource('assets/sounds/effects/sfx_boss_death.mp3', "static"),
      bsp = love.audio.newSource('assets/sounds/effects/sfx_boss_spawn.mp3', "static"),
      lup = love.audio.newSource('assets/sounds/effects/sfx_levelup.ogg', "static"),
      tst = love.audio.newSource('assets/sounds/effects/sfx_test.mp3', "static"),
      zb01 = love.audio.newSource('assets/sounds/effects/sfx_zb_01.mp3', "static"),
      zb02 = love.audio.newSource('assets/sounds/effects/sfx_zb_02.mp3', "static"),
      zb03 = love.audio.newSource('assets/sounds/effects/sfx_zb_03.mp3', "static"),
      zb04 = love.audio.newSource('assets/sounds/effects/sfx_zb_04.mp3', "static"),
      zb05 = love.audio.newSource('assets/sounds/effects/sfx_zb_05.mp3', "static"),
      zb06 = love.audio.newSource('assets/sounds/effects/sfx_zb_06.mp3', "static"),
      zb07 = love.audio.newSource('assets/sounds/effects/sfx_zb_07.mp3', "static"),
      zb08 = love.audio.newSource('assets/sounds/effects/sfx_zb_08.mp3', "static"),
      zb09 = love.audio.newSource('assets/sounds/effects/sfx_zb_09.mp3', "static"),
      zb10 = love.audio.newSource('assets/sounds/effects/sfx_zb_10.mp3', "static"),
      
      },
    
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
  param      = {
      
        name        = "musique du jeu",
        bgm         = love.audio.newSource("assets/sounds/bgm_oxo.ogg", "stream"),
        sfx         = love.audio.newSource("assets/sounds/effects/sfx_test.mp3", "static"),
        son         = 1, -- Choix des paramtres sonores, de 1 a 4
        ecr         = true,
        ecrname     = "plein ecran",
        set         = 1, -- Choix des paramtres sonores, de 1 a 4
        
},

  -- initaliser le sprite de la souris
  mouse         = love.graphics.newImage('assets/world/cursor.png'),
  -- Initaliser la taille de l'ecran base sur une image
  scr           = love.graphics.newImage('assets/world/bg/bg_play.jpg'),

}

content, size = love.filesystem.read("settings.txt")

hey = (string.sub(content,20,22))


if #content >= 12 then
    set_1 = tonumber(string.sub(content,20,20))
    set_2 = tonumber(string.sub(content,22,22))
    set_3 = tonumber(string.sub(content,20,20))
    
    world.param.bgm:setVolume(set_1)
    world.param.sfx:setVolume(set_2)
    world.param.set = set_3
    
end

-- config par defaut
success, message = love.filesystem.write("settings.txt", "[ USER SETTINGS ]\n\n1\n1")

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

-- Mettre a jour la taille d'ecran, position souris.
function love.update()
  scr = {
    -- GET screensize SIZE
    X                 = love.graphics.getWidth(),
    Y                 = love.graphics.getHeight(),
    ratio_X           = love.graphics.getWidth()/world.scr:getWidth(),
    ratio_Y           = love.graphics.getHeight()/world.scr:getHeight(),
}
  mouse = {
    X                 = love.mouse.getX(),
    Y                 = love.mouse.getY()
}
end


--[[

NOM DU PROJET : CLash of zombies

BUT DE CE PROJET : Developper de A a Z, un zombie tower defense.

Fonctionnalitées : generation aleatoire de zombies, palier de difficluté, bonus hero, choix de personnage, tableau de score.


QUESTIONS : est ce que Clash of zombie est un roguelike ?
est ce un clicker game ?

Faire d'abord les 5 taches en priorité une fois celles ci terminées, 
trier dans le reste les quelles seront des taches a faire en priorité

]]

--[[

Jeu Clash of Zombies

Taches a faire en priorité :

- Programmer pour chaque type de zombie, une fonction vie, degat, vitesse, lieu de spawn, score, probabilité de spawn
- Programmer un pathfinding ennemi interagissant avec le decor.
- Programmer des effets visuels de degats, regain de vie du hero, attaque,
- Programmer un systeme de palier de 1 a 12 avec 1 boss par niveau, avec systeme de score
- Programmer demo d'introduction en jeu.

---

Taches a faire plus tard :

Programmer 12 paliers de difficulté.
Programmer un mode multijoueur
Programmer les animations.
Programmer un easter egg
Programmer des transition

Ajouter liens de contact
Partager les technique de programmation utilisée dans clash of zombies.
Ajouter les musique.
Ajouter un menu de parametres
Programmer bonus du hero

Jeu en anglais, et plus...
Programmer un tableau des scores
Deployer le jeu, crazygames.com, itch.io gamejolt.com, new
Programmer jouable en ligne depuis nimprte quel plateforme, pc mobile, console.
Programmer score enregistrable en ligne.

Rendre le jeu jouable sur ecran tactile
Ajouter une description sur les personnages. 
Partager le code source du jeu au format mind map.


]]

--[[

Rappelle de code LOVE2D

sound = love.audio.newSource("pling.wav", "static")
--Charger le fichier audio en memoire.

music = love.audio.newSource("techno.ogg", "stream")
--Lire le fichier audio en direct sur le disque dur

]]