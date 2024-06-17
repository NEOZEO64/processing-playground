float resX = 40;
float resY;
int recWidth;
int recHeight;
int t = 0;
float notAngle;

void setup() {
  fullScreen();
  noCursor();
  noStroke();
  noiseDetail(10);
  colorMode(HSB);
  notAngle = (float)height/(float)width;
  resY = notAngle * resX;
  //resY = 800;
  recWidth = (int)((float)width/resX);
  recHeight = (int)((float)height/resY);
}

void draw() {
  //t += 1;
  background(0);
  for (float x = 0; x < width; x += recWidth) {
    for (float y = 0; y < height; y += recHeight) {
      float n = noise(0.5*(x+t)/(float)width, 10*(y+t)/(float)height);
      float c = n*255;
      fill(c, 255, c);
      rect((int)x, (int)y, (int)recWidth, (int)recHeight);
    }
  }
}
