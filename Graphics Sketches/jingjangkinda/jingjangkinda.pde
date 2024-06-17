float rPhiToX(float r, float phi) {return r*cos(phi);}
float rPhiToY(float r, float phi) {return r*sin(phi);}


float r = 1000;
float detail = 400;

float offset = 0.07;
float intervall;
float cX, cY;

float oldX, oldY;


void setup() {
  size(3840,2160);

  intervall = TWO_PI/detail;
  cX = width/2;
  cY = height/2;
  noCursor();
  noStroke();
  oldX = rPhiToX(r,0);
  oldY = rPhiToY(r,0);


    background(0);
  
  for (float phi = 0; phi<PI; phi += intervall) {
    
    float x = rPhiToX(r,phi);
    float y = rPhiToY(r,phi);
    
    fill(255*phi/TWO_PI);
    triangle(cX+x,cY+y,cX+oldX,cY+oldY,cX,cY);
    triangle(cX-x,cY-y,cX-oldX,cY-oldY,cX,cY);
    
    oldX = x;
    oldY = y;
  
  }
  
  noLoop();

  save("bezierTest.png");
}
