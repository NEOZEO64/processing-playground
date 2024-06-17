PImage img;
int gap = 20;

int t = 0;


void setup() {
  fullScreen();
  noFill();
  strokeJoin(ROUND);
  strokeWeight(1);
  stroke(255);
  colorMode(HSB);
  noCursor();
}


void draw() {
  t+=1;
  background(0);
  float arcLength = (mouseX-140)/140.0;
  //float arcLength;
  for (int i = gap; i<width-20; i+=30) {
    float angle = radians(i+t);
     //arcLength = angle/10;
     strokeWeight(((float)mouseY)/10);
      arc(width/2,height/2,i,i,angle,angle+arcLength);
  }
  //ellipse(mouseX,height-200,80,80);


}
