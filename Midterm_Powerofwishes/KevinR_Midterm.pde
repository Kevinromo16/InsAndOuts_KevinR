String gameState;
PImage dragonball;
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

void setup(){
 size(900, 850);
 dragonball = loadImage("dragonball.png");
 shenron = loadImage("shenron.png");
 ball1 = loadImage("ball1.png");
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
  } else if (gameState == "WIN") {
    winGame();
  } else if  (gameState == "LOSE") {
    loseGame();
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


void winGame(){
  
}

void loseGame(){
  
}

void resetGame(){

}
