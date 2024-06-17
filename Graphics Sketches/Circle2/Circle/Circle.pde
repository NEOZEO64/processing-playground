PImage img;
int gap = 20;


void setup() {
  fullScreen();
  noFill();
  strokeJoin(ROUND);
  strokeWeight(5);
  stroke(0,0,255);
}


void draw() {
  background(0,0,0);
  float arcLength = (width-mouseX-20)/95.0;
  for (int i = gap; i<width+400; i+=gap) {
    float angle = radians(i);
    arc(width/2,height/2,i,i,angle,angle+arcLength);
  }
}
