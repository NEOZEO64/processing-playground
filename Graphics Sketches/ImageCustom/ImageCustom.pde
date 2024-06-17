PImage merkel;
float x = 0;
float y = 0;
float swidth = 304;
float sheight = 166;

void setup() {
  fullScreen();
  merkel = loadImage("merkel.jpg");
  noStroke();
  background(0);
  frameRate(200000);
}

void draw() {
  ellipseMode(CENTER);
  x = random(swidth);
  y = random(sheight);
  fill(merkel.get(int(x),int(y)));
  ellipse(x/swidth*(float)width,y/sheight*(float)height,8,8);
  //if (x>swidth) {x=0f;y+=1f;}
  //if (y>sheight) {noLoop();}
  //x+=1f;


}
