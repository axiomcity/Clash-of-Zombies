-- Fichier data qui contient les libraires du jeu.

player = {
    
    vie = 100,
    attaques = 2,
    blessures = 0,
    score = 0,
    score_local = 0,
    sobriquet = ""
}

ennemie = {
  
  vie = 10,
  degat = 1,
  sprite = love.graphics.newImage('assets/world/images/ennemie.png')
  
}

world = {
  
  -- le fond d'ecran et la musique
  bg = "nil",
  bgm = "nil",
  cursor = love.graphics.newImage('assets/world/images/cursor.png'),
  screen = "nil"

}

parametres = {
  
  music = 1,
  sons = 1,
  plein_ecran = false,
  redim = true

}

