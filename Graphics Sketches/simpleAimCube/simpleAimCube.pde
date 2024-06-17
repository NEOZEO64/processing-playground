float cX, cY;

void setup(){
  fullScreen(P3D);
  stroke(255);
  noFill();
  cX = width/2;
  cY = height/2;
}


void draw() {
  background(0);
  smooth();
  pushMatrix();
  translate(cX,cY,-200);
  rotateX((float)(height/2-mouseY)/(float)width);
  rotateY((float)(mouseX-width/2)/(float)width);
  box(60);
  popMatrix();
}
