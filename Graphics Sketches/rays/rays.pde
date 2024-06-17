float toX(float r, float phi, float theta) {
  return r * cos(phi) * cos(theta);
}

float toY(float r, float phi, float theta) {
  return r * sin(phi) * cos(theta);
}

float toZ(float r, float phi, float theta) {
  return r * sin(theta);
}

float r = 400;
float phi, theta;

void setup() {
  fullScreen(P3D);
  stroke(255);
  strokeWeight(3);
  noFill();
  background(0);
  

}


void draw() {
   background(0,0,0,1);
   lights();
   pushMatrix();
   translate(width/2, height/2, -200);
   
   for (int i = 0; i< 100; i++) {
     phi = (float)random(-1800, 1800)/10;
     theta = (float)random(-1800, 1800)/10;
     float lineEndX = toX(r,phi,theta);
     float lineEndY = toY(r,phi,theta);
     float lineEndZ = toZ(r,phi,theta);
     phi = (float)random(-1800, 1800)/10;
     theta = (float)random(-1800, 1800)/10;
     float lineEnd2X = toX(r,phi,theta);
     float lineEnd2Y = toY(r,phi,theta);
     float lineEnd2Z = toZ(r,phi,theta);
     line(lineEndX, lineEndY, lineEndZ, lineEnd2X, lineEnd2Y, lineEnd2Z);

   }
   popMatrix();
}
