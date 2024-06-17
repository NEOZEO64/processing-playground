int recSize = 10;
float t = 0;

void setup() {
  fullScreen(P2D);
  noCursor();
  noStroke();
  noiseDetail(10);
}

void draw() {
  //t += 0.02;
  background(0);
  for (float x = 0; x < width; x += recSize) {
    for (float y = 0; y < height; y += recSize) {
      float c = noise((float)x*10/(float)width,(float)y*10/(float)height+t)*255;
      fill(c);
      rect((int)x, (int)y, (int)recSize, (int)recSize);
    }
  }
}
