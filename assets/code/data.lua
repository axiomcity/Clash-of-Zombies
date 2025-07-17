-- Fichier data qui contient les libraires du jeu.

player = {
    
    score = 0,
    character = 0,
    username = "",
    online_score = 0

}

world = {
  
  -- world images
  video = love.graphics.newVideo('assets/sounds/opening.ogv'),
  cursor = love.graphics.newImage('assets/world/images/cursor.png'),
  bgm = "nil",
  bg = "nil",
  screen = "nil",
  
  -- world langues
  language = "fr",
  titles = "5",
  txt_4 = "4",
  txt_3 = "3",
  txt_2 = "2",
  
  -- user settings
  alphabet = {"a","b","c","d","e","f","g","h","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y",1,2,3,4,5,6,7,8,9,"-","_","@"}
  
}
  