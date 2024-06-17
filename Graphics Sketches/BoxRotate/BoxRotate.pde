float t = 0;

void setup() {
  size(1280, 720, P3D);
  //fullScreen(P3D);
  background(0);
  fill(200,0,0);
  lights();
  noCursor();
  

}




void draw() {
  t += 0.01;
  pushMatrix();
  translate(0, 0, -200);
  rotateX(t);
  box(100);
  popMatrix();
}
