float rPhiToX(float r, float phi) {return r*cos(phi);}
float rPhiToY(float r, float phi) {return r*sin(phi);}

float r, detail, cX, cY, intervall;
float oldX,oldY;
float t = 0;

float getR(float phi) {
  return getRawR(phi)-(getRawR(TWO_PI)-getRawR(0))*phi/TWO_PI;
}

float getRawR(float phi) {
  return height*0.16+noise(phi*3)*height*0.3;
}

void setup() {
  size(3840,2160);
  noCursor();
  stroke(255);
  noFill();
  colorMode(HSB);
  
  cX = width/2;
  cY = height/2;
  
  detail = 200;
  intervall = TWO_PI/detail;
  oldX = cX + rPhiToX(getR(0),0);
  oldY = cY + rPhiToY(getR(0),0);
  
  background(0);
  smooth();
  
  
  for (float phi = 0; phi<TWO_PI+0.01; phi += intervall) {
    float r = getR((phi+t)%TWO_PI);
    float x = cX + rPhiToX(r,phi);
    float y = cY + rPhiToY(r,phi);
    float lineLen = sqrt((x-cX)*(x-cX)+(y-cY)*(y-cY));
    
    noStroke();
    fill((1300*pow(lineLen/height,1.8))%255,255,1800*pow(lineLen/height,1.8));
    triangle(x,y,oldX,oldY,cX,cY);
    
    oldX = x;
    oldY = y;
  }
  
  save("NoiseFlower.png");
  noLoop();
}
