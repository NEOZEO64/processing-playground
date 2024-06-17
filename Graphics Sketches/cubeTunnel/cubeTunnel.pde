float cX, cY;
float boxSize = 60;
float t = 0;
void setup(){
  //fullScreen(P3D);
  size(2560,1440,P3D,1);
  //stroke(255);
  //noFill();
  fill(200,100);
  noStroke();
  noCursor();
  cX = width/2;
  cY = height/2;
}


void draw() {
  t += 0.01;
  background(0);
  lights();
  pushMatrix();
  translate(cX,cY,-400);
  for    (float x = -100; x < 100; x+=1) {
    for  (float y = -5; y < 5; y+=1) {
      for(float z = -5; z < 5; z+=1) {
        if (noise(x/10+t,y/10,z/10) > 0.55) {
          pushMatrix();
          fill(200,100);
          
          rotateX((float)(height/2-mouseY)*6/(float)width);
          rotateY((float)(mouseX-width/2)*6/(float)width);
          translate(x*boxSize,y*boxSize,z*boxSize);
          box(boxSize-20);
          popMatrix();
        }
        
      }
    }
  }
  popMatrix();
}
