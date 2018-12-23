void setup() {
  size(640, 640);
}

void draw() {
  if (mouseX>0 && mouseX<width/4) {
    background(235, 111, 10);
  }
  if (mouseX>width/4 && mouseX<width*2/4) {
    background(243, 232, 1);
  }

  if (mouseX>width*2/4 && mouseX<width*3/4) {
    background(148, 224, 20);
  }
  if (mouseX>width*3/4 && mouseX<width) {
    background(29, 197, 216);
  }

  strokeWeight(5);
  stroke(225);
  line(width/4, 0, width/4, height);
  line(width*2/4, 0, width*2/4, height);
  line(width*3/4, 0, width*3/4, height);

  fill(225);
  stroke(0);
  strokeWeight(1);
  rectMode(CENTER);
  rect(mouseX, mouseY, 55, 30);
}
