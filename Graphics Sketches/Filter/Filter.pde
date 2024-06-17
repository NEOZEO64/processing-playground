float fuzzy = 0.0;
float x = 0.0;

void setup() {
  size(100,100);
  noFill();
  strokeWeight(5);
}

void draw() {
  background(200);
  x+=0.01;
  fuzzy = 6*sin(x)+6;
  line(0,30,100,60);
  filter(BLUR, fuzzy);
  line(0,50,100,80);
}
