
int recSize = 100;

float cX, cY;
void setup() {
  size(3840,2160,P3D);
  cX = width/2;
  cY = height/2;
  noCursor();
  noStroke();
  
  
  background(0);
  
  pushMatrix();
  translate(0,0,-1200);
  
  for (float x = cX-5000; x < cX+5000; x += recSize) {
    for (float y = cY-5000; y < cY+5000; y += recSize) {
      float c = noise(x/100,y/100)*50;
      fill(c);
      rect((int)x, (int)y, (int)recSize, (int)recSize);
    }
  }
  popMatrix();
  
  stroke(255);
  noFill();
  sphereDetail(32,32);
  pushMatrix();
  translate(cX,cY,-300);
  sphere(600);
  popMatrix();
  noLoop();
  save("sphereDetail.png");
}
