float rPhiToX(float r, float phi) {return r*cos(phi);}
float rPhiToY(float r, float phi) {return r*sin(phi);}

float r = 400;
float detail = 0.1; //the lower to 0 the thicker the dencity
float cX, cY;

void setup() {
  
  fullScreen();
  noCursor();
  stroke(255);
  noFill();
  
  cX = width/2;
  cY = height/2;
  
  
  background(0);
  for (float phi = 0; phi<TWO_PI; phi+=0.01) {
    float x = rPhiToX(r,phi);
    float y = rPhiToY(r,phi);
    
    float x2 = rPhiToX(r,phi+detail);
    float y2 = rPhiToY(r,phi+detail);
    
    x += cX; y += cY;
    x2 += cX; y2 += cY;
    
    line(x,y,x2,y2);
  }
  
  noLoop();
}
