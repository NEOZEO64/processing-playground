import processing.vr.*;

void setup() {
  fullScreen(STEREO);
  fill(255,0,0);
  noStroke();
}

void draw() {
  background(0);
  lights();
  translate(width/2, height/2);
  rotateX(frameCount * 0.01f);
  rotateY(frameCount * 0.01f);
  box(350);
}

