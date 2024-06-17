float myDist = 100;
float speed = 4;


void setup() {
  fullScreen(P3D);
  noFill();
  stroke(0,0,255);
  strokeWeight(2);
  noCursor();
  
}




void draw() {
  background(0);

  for (float z = -10000 + (speed*frameCount) % myDist; z < 1000; z += myDist) {
    pushMatrix();
    stroke(0,0,255+z/10);
    translate(width/2, height/2, z);
    rotate(z / 4000f); // + frameCount / -100.0
    float angle = TWO_PI / 6;
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = cos(a) * 300;
      float sy = sin(a) * 300;
      line(sx, sy, 0, sx, sy, myDist);
    }
    polygon(0, 0, 300, 6);
    popMatrix();
  }
}




void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
