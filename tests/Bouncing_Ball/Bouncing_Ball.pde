int speedX=3;
int speedY=3;
int  circleX;
int  circleY;
float circleColor;

void setup() {
  size(700, 640);
  circleX=(int)random(50, width-100);
  circleY=(int)random(50, height-500);
}

void draw() {
  background(255);

  fill(circleColor*0.5, circleColor, circleColor*1.2);
  noStroke();
  ellipse(circleX, circleY, 50, 50);

  fill(0);
  noStroke();
  rectMode(CENTER);
  rect(mouseX, 580, 80, 10);

  circleX=circleX+speedX;
  circleY=circleY+speedY;

  if (circleX>width-25||circleX<25) {
    speedX=speedX*-1;
    circleColor=random(0, 255);
  }
  if (circleY<25) {
    speedY=speedY*-1;
    circleColor=random(0, 255);
  }
  //circleY>height-25||

  if ((mouseX-40< circleX)&&circleX < mouseX+40 &&  circleY > 550) {
    speedY=speedY*-1;
    speedX=speedX*-1;
  }
  
  
  
}
