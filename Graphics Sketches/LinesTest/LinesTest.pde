int t = 0;
int dist = 20;

void setup() {
  fullScreen(P2D);
  stroke(255);
  noCursor();
  
  background(0);
  
  for (int y = 0; y < height + dist; y += dist) {
    line(0,0,width,y);
  }
  
  for (int x = 0; x < width + dist; x += dist) {
    line(0,0,x,height);
  }
}

void draw() {}

void keyPressed() {
  if (key == 's') {
      saveFrame("line-######.png");
  }

}
