float t1 = 0;
float t2 = 0;
float t3 = 0;

void setup() {
  fullScreen(P3D);
  background(0);
  colorMode(HSB);
  stroke(0,0,255);
  strokeWeight(0.5);
}


void draw() {
  t1 += 0.01;
  t2 += 0.012;
  t3 += 0.35;
  fill(t3%255,255,255);
  //background(0);
  lights();
  pushMatrix();
  translate(width/2, height/2, 500);
  rotateX(t1);
  rotateY(t2);
  fill(t3%255,255,255);
  box(200);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2, 500);
  rotateX(t1+t2*0.991234);
  rotateY(t1-t2);
  fill(t3%255,255,140);
  box(200);
  popMatrix();

}
