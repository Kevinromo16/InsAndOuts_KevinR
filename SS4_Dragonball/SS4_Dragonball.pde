//Dragonball by Kevin Romo, when you play you will get an image of the dragon balls
//when you press 1 the eternal dragon will come out and ask you to make a wish
//if you want ot go back to the dragon press 2 

PImage dragonballs;
PImage shenron;


void setup() {
  size(900,850);
  dragonballs = loadImage("dragonballs.png");
  shenron = loadImage("shenron.png");
  image (dragonballs,0,0);
  fill(0);
  textSize(50);
  text("Eternal dragon rise and grant me my wish", 2, 825);


}

void draw() {
}

void keyPressed(){
  if(key == '1') {
  image(shenron,0,0);
  textSize(40);
  text("This is the eternal dragon I will grant you any wish", 2, 720);
  }else if (key == '2'){
   image(dragonballs,0,0);
  }}
