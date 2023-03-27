// This game is called The Journey all of the instructions are in the game 
import processing.sound.*;

SoundFile file;


String gameState;
String[] lose = {"YOU LOST", "YOU DIED", "YOU WERE SELFISH", "YOU FAIL"};
int index = int(random(lose.length));
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
PImage thumbsup;
PImage angry;

void setup(){
 size(900, 850);
 file = new SoundFile(this,"chala.mp3");
 file.play();
 file.loop();
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
 thumbsup = loadImage("thumbsup.png");
 angry = loadImage("angry.jpg");
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
  if (gameState == "PLAY" && mouseX > ballX && mouseX < ballX + 146 && mouseY > ballY && mouseY < ballY + 155){
    gameState = "PLAY2";
  } else if (gameState == "PLAY2" && mouseX > 700 && mouseX < ballX + 785 && mouseY > 200 && mouseY < ballY + 287) {
    gameState = "PLAY3";
  } else if (gameState == "PLAY3" && mouseX > 160 && mouseX < ballX + 228 && mouseY > 660 && mouseY < ballY + 736){
    gameState = "PLAY4";  
  } else if (gameState == "PLAY4" && mouseX > ballX && mouseX < ballX + 146 && mouseY > ballY && mouseY < ballY + 155){
     gameState = "PLAY5"; 
  } else if (gameState == "PLAY5" && mouseX > 620 && mouseX < ballX + 757 && mouseY > 100 && mouseY < ballY + 239){
     gameState = "PLAY6"; 
  } else if (gameState == "PLAY6" && mouseX > 450 && mouseX < ballX + 519 && mouseY > 150 && mouseY < ballY + 208){
     gameState = "PLAY7";
  } else if (gameState == "PLAY7" && mouseX > 630 && mouseX < ballX + 742 && mouseY > 400 && mouseY < ballY + 513){
     gameState = "PLAY8";
  } else if (gameState == "PLAY8" && mouseX > 500 && mouseX < ballX + 772 && mouseY > 400 && mouseY < ballY + 664){
    gameState = "PLAY9";  
  }
}

void startGame() {
  background(235,52,107);
  image (dragonball,100,50);
  textSize(30);
  text("Now Playing: Cha-La Head Cha-La", 2,50);
  text("Majestic right?", 2, 690);
  text("These are the dragonballs you can grant any wish you want with them.", 2, 740);
  text("However they are lost and you must find them.", 2, 790);
  text("press right arrow to continue.", 2, 840);
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
  fill(0);
  text("To play this game click on the dragon ball with your mouse", 5, 750);
  text("You are home", 5, 100);
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
  text("Whoa where are we?", 250, 650);
  
  
}  
  
void playGame3(){
  image(player,0,0);
  image(ball3,160, 660);
  fill(0);
  text("WHAT? Are we in the real world", 5, 100);
  
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
  fill(0);
  text("YES! we are back in my world", 5, 100);
}

void playGame5(){
  background(basketball);
  image(ball5, 620, 100);
  text("OH NO, what is this?", 5, 50);
  
}

void playGame6(){
  background(135,206,250);
  image(goku, 0, 0);
  image(ball6, 450, 150);
  fill(196, 164, 132);
  rect(0, 600, 900, 850);
  fill(0);
  text("Is that Goku and Vegeta?", 5, 500);
}

void playGame7(){
  background(space);
  image(ball7, 630, 400);
  fill(0);
  text("PLEASE, take me home", 5, 50);

  
  
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
  fill(0);
  text("Finally, back home", 5, 50);
  text("I have all the dragon balls, time to summon it.", 5, 100);
  text("Eternal dragon rise and grant me my wish.", 5, 150);



}

void playGame9(){
  background(0);
  image(shenron, 0, 0);
  fill(0);
  text("I am the eternal dragon", 5, 25);
  text("I will grant you any wish", 5, 65);
  text("Immortality",50,700);
  text("Cure the world", 650, 700);
  fill(255, 0, 0);
  text("For inmortality press down", 5, 800);
  fill(0, 255, 0);
  text("For cure press up", 650, 800);

  if (key == CODED ){
    if(keyCode == UP){
   gameState = "WIN"; 
  }else if (keyCode == DOWN){
   gameState = "LOSE"; 
 }}
}

void winGame(){
  background(255);
  fill(0);
  text("Goku congratulates you for what you did", 5 , 760);
  text("YOU WIN", 5 , 820);
  text("To restart press r", 600, 800);
  image(thumbsup, 0, 0);
  if(keyPressed){
  if (key == 'r' || key == 'R'){
    gameState = "START";
  
  }
    
  }
  
  
}

void loseGame(){
  background(250);
  fill(0);
  text(lose[index], 5, 800);
  text("Goku did not like your decision, He is powering up to fight you", 5,650);
  text("To restart press r", 600, 800);
  image(angry,0,0);
  if(keyPressed){
  if (key == 'r' || key == 'R'){
    gameState = "START";
  }
    
  }
  
  
}
