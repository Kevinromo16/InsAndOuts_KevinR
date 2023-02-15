// surk day? by Kevin Romo, surk is the combination between sunny and dark
float x = random(width);
float y = random(height);

void setup(){
  
fill(0, 76, 153);
size(1080, 720);
rect(0,0,1080,320);

for (int i = 0;i < 1; i++) {
  fill(255,0,0);
  float x = random(width);
  float y = random(height);
  noStroke();
  ellipse(x,y,150,150);
}

}

void draw(){

fill(0, 255, 150);

rect(0, 320, 1080, 400);

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

ellipse(900, 600, 120, 30);

ellipse(650, 500, 120, 30);

ellipse(500, 400, 120, 30);

ellipse(700, 700, 120, 30);

if (mousePressed) {
  fill(255,0,0);
  ellipse(950, 100, 150,150);
  }else if (keyPressed){
  fill(255,255,0);
  ellipse(950, 100, 150,150);
  } 
  
}

void mousePressed(){
  background(0, 76, 153);
}

void keyPressed(){
background(0, 255,255);
}
