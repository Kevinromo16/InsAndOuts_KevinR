String gameState;
PImage dragonball;
PImage dragonballs;
PImage shenron;
float ballX;
float ballY;
PImage ball1;
PImage ball2;
PImage ball3;
PImage ball4;
PImage ball5;
PImage ball6;
PImage ball7;
PImage player;
PImage igloo;
PImage basketball;
PImage goku;
PImage space;

void setup(){
 size(900, 850);
 dragonball = loadImage("dragonball.png");
 shenron = loadImage("shenron.png");
 ball1 = loadImage("ball1.png");
 ball2 = loadImage("ball2.png");
 ball3 = loadImage("ball3.png");
 ball4 = loadImage("ball4.png");
 ball5 = loadImage("ball5.png");
 ball6 = loadImage("ball6.png");
 ball7 = loadImage("ball7.png");
 player = loadImage("soccerplayer.jpg");
 igloo = loadImage("igloo.png");
 basketball = loadImage("basketball.png");
 dragonballs = loadImage("dragonballs.png");
 goku = loadImage("goku.png");
 space = loadImage("astrounaut.jpg");
 ballX = random(0, width);
 ballY = random(0,height);
 gameState = "START";
}

void draw() {
  background(0);
  if(gameState == "START"){
    startGame();
  }  else if (gameState == "PLAY") {
    playGame();
  } else if (gameState == "PLAY2") {
    playGame2();
  } else if (gameState == "PLAY3"){
    playGame3();  
  } else if (gameState == "PLAY4"){
    playGame4();  
  } else if (gameState == "PLAY5"){
    playGame5();
  } else if (gameState == "PLAY6"){
    playGame6();
  } else if (gameState == "PLAY7"){  
    playGame7();
  } else if (gameState == "PLAY8"){ 
    playGame8();
  } else if (gameState == "PLAY9"){
    playGame9();  
  }else if (gameState == "WIN") {
    winGame();
  } else if  (gameState == "LOSE") {
    loseGame();
  }
  
}

void mousePressed(){
  if (gameState == "PLAY"){
    gameState = "PLAY2";
  } else if (gameState == "PLAY2") {
    gameState = "PLAY3";
  } else if (gameState == "PLAY3"){
    gameState = "PLAY4";  
  } else if (gameState == "PLAY4"){
     gameState = "PLAY5"; 
  } else if (gameState == "PLAY5"){
     gameState = "PLAY6"; 
  } else if (gameState == "PLAY6"){
     gameState = "PLAY7";
  } else if (gameState == "PLAY7"){
     gameState = "PLAY8";
  } else if (gameState == "PLAY8"){
    gameState = "PLAY9";  
  }
}

void startGame() {
  background(235,52,107);
  image (dragonball,100,50);
  textSize(30);
  text("Majestic right?", 2, 690);
  text("These are the dragonballs you can grant any wish you want with them.", 2, 740);
  text("However they are lost and you must find them.", 2, 790);
  text("press right click to continue.", 2, 840);
  fill(0);
  if (key == CODED ){
    if(keyCode == RIGHT){
   gameState = "PLAY"; 
 }}  
}

void playGame(){
  fill(51, 255, 255);
  rect(0,0,1080,850);
  fill(0, 255, 150);
  rect(0, 320, 1080, 600);
  fill (255, 255, 51);
  circle(800, 100, 100);
  fill(255, 153, 255);
  rect(100, 400, 200, 200);
  fill(160,160,160);
  triangle(100,400,300,400,200,250);
  fill(102, 51, 0);
  rect(225, 525, 50, 75);
  fill(255, 255, 51);
  circle(260, 565, 10);
  fill(224, 224, 224);
  rect(140, 420, 60, 60);
  fill(0, 0, 0);
  line(140, 450, 200, 450);
  fill(102, 51, 0);
  image(ball1, ballX, ballY);
  
  }

void playGame2(){
  background(255,220,200);
  for(int i=1; i<=900; i+=2){
  rect(0, i, 200,i);
  }
  line (550,0,550,850);
  line(200,425,900,425);
  ellipse(400, 200, 275, 200);
  triangle(850, 700, 600, 700, 725, 500);
  if (mouseX < 550 && mouseY < 850){
    fill(255,100,100);
  } else if ( mouseX < 800 && mouseY < 850){
    fill(100, 210, 12);
  }
  image(ball2, 700, 200);
  
}  
  
void playGame3(){
  image(player,0,0);
  image(ball3,160, 660);
  
}

void playGame4(){
  background(173, 216, 230);
  fill(255);
  rect(0, 400, 900, 850);
  ellipse(0,650, 100, 200);
  fill(255,255,0);
  ellipse(650,100, 100, 100);
  image(igloo, 650, 500 );
  image(ball4, ballX, ballY);
}

void playGame5(){
  background(basketball);
  image(ball5, 620, 100);
  
}

void playGame6(){
  background(135,206,250);
  image(goku, 0, 0);
  image(ball6, 450, 150);
  fill(196, 164, 132);
  rect(0, 600, 900, 850);
}

void playGame7(){
  background(space);
  image(ball7, 630, 400);
  
  
}

void playGame8(){
  
  fill(51, 255, 255);
  rect(0,0,1080,850);
  fill(0, 255, 150);
  rect(0, 320, 1080, 600);
  fill (255, 255, 51);
  circle(800, 100, 100);
  fill(255, 153, 255);
  rect(100, 400, 200, 200);
  fill(160,160,160);
  triangle(100,400,300,400,200,250);
  fill(102, 51, 0);
  rect(225, 525, 50, 75);
  fill(255, 255, 51);
  circle(260, 565, 10);
  fill(224, 224, 224);
  rect(140, 420, 60, 60);
  fill(0, 0, 0);
  line(140, 450, 200, 450);
  fill(102, 51, 0);
  image(dragonballs, 500, 400);

}

void playGame9(){
  image(shenron, 0, 0);
  if (key == CODED ){
    if(keyCode == UP){
   gameState = "WIN"; 
  }else if (keyCode == DOWN){
   gameState = "LOSE"; 
 }}
}

void winGame(){
  background(255);
}

void loseGame(){
  background(135,206,250);
  
}

void resetGame(){

}
