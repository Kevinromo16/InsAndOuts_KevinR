//Red&Green by Kevin Romo, 
//the color of the shapes change between green and red when the mouse goes acrross it

void setup(){
  size(700,700);
}

void draw(){
  background(255,220,200);
  for(int i=1; i<=700; i+=2){
  rect(0, i, 200,i);
  }
  line (450,0,450,700);
  line(200,350,700,350);
  ellipse(325, 200, 250, 200);
  triangle(700, 600, 450, 600, 575, 400);
  if (mouseX < 450 && mouseY < 700){
    fill(255,100,100);
  } else if ( mouseX < 600 && mouseY < 700){
    fill(100, 210, 12);
  }
  
  // int a =25;
  //fill(25, 100,200);
  //while(a<height){
  //rect(width/2, a, 50,50);
  //a+=100; //x=x+100;
  //}
}
