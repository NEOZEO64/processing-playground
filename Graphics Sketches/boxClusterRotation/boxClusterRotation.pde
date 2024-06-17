float cX, cY;
float boxSize = 60;
void setup(){
  fullScreen(P3D);
  stroke(255);
  noStroke();
  noCursor();
  cX = width/2;
  cY = height/2;
}


void draw() {
  background(0);
  smooth();
  pushMatrix();
  translate(cX,cY,-200);
  for  (float x = -40; x < 40; x+=1) {
    for(float y = -20; y < 20; y+=1) {
      pushMatrix();
      fill(noise(x/10,y/10)*255,noise(x/10,y/10)*100);
      translate(cX+x*boxSize,cY+y*boxSize,0);
      rotateX((float)(height/2-mouseY)*2/(float)width);
      rotateY((float)(mouseX-width/2)*2/(float)width);
      box(boxSize);
      popMatrix();
    }
  }
  lights();
  
  
  popMatrix();
}
