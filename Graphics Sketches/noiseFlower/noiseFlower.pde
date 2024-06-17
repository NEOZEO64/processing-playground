float rPhiToX(float r, float phi) {return r*cos(phi);}
float rPhiToY(float r, float phi) {return r*sin(phi);}

float r, detail, cX, cY, intervall;
float oldX,oldY;
float t = 0;

float getR(float phi) {
  return getRawR(phi)-(getRawR(TWO_PI)-getRawR(0))*phi/TWO_PI;
}

float getRawR(float phi) {
  return r + noise(phi*4*mouseY*10/height)*r*(mouseX-cX)/cX;
}

void setup() {
  fullScreen();
  noCursor();
  stroke(255);
  noFill();
  colorMode(HSB);
  
  cX = width/2;
  cY = height/2;
  
  r = 250;
  detail = 200;
  intervall = TWO_PI/detail;
  oldX = cX + rPhiToX(getR(0),0);
  oldY = cY + rPhiToY(getR(0),0);
}


void draw() {
  background(0);
  //t += 0.01;
  for (float phi = 0; phi<TWO_PI; phi += intervall) {
    float r = getR((phi+t)%TWO_PI);
    float x = cX + rPhiToX(r,phi);
    float y = cY + rPhiToY(r,phi);
    float lineLen = sqrt((x-cX)*(x-cX)+(y-cY)*(y-cY));
    
    noStroke();
    fill(lineLen/2,255,lineLen/2);
    triangle(x,y,oldX,oldY,cX,cY);
    
    oldX = x;
    oldY = y;
  }

}
