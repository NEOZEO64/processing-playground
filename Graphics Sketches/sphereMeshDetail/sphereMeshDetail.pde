float cX, cY;
float t = 0;
void setup() {
  fullScreen(P3D);
  cX = width/2;
  cY = height/2;
  noCursor();
  noFill();
  stroke(255);
}


void draw() {
  t += 0.01;
  background(0);
  sphereDetail(mouseX/100,mouseY/100);
  pushMatrix();
  translate(cX,cY,-300);
  rotateY(t);
  sphere(300);
  popMatrix();
}
