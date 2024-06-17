float rPhiToX(float r, float phi) {return r*cos(phi);}
float rPhiToY(float r, float phi) {return r*sin(phi);}

float cX;
float cY;

float tempX, tempY;
float oTempX, oTempY;
float bezierC1X, bezierC1Y;
float bezierC2X, bezierC2Y;
float r = 500;
float lineCount = 64;
float angleDist = TWO_PI/lineCount;
float tempBezierX, tempBezierY;

float t1 = 0;
float t2 = 0;
float phi;

int noiseSeed = 0;


void setBezier() {
  tempX = cX+rPhiToX(r,phi);
  tempY = cY+rPhiToY(r,phi);
  bezierC1X = cX+rPhiToX(r*1/4,phi+HALF_PI);
  bezierC1Y = cY+rPhiToY(r*1/4,phi+HALF_PI);
 
  bezierC2X = cX+rPhiToX(r*3/4,phi+HALF_PI);
  bezierC2Y = cY+rPhiToY(r*3/4,phi+HALF_PI);
}

void setup() {
  noiseSeed(noiseSeed);
  fullScreen();
  
  noFill();
  noCursor();
  cX = width/2;
  cY = height/2;
}


void draw() {
    
   background(0);
   t1+=0.005;
   t1 %= 1;
   t2 = 0.5 + 0.5*sin(t1*TWO_PI);
   
   for (phi = 0; phi<TWO_PI-0.01; phi += angleDist) {
     setBezier();
     stroke(0,0,200);
     bezier(
        cX, cY, 
        bezierC1X, bezierC1Y,
        bezierC2X, bezierC2Y,
        tempX,tempY
     );
      
   }
   
   for (phi = 0; phi<4*TWO_PI-0.01; phi += angleDist) {
      stroke(255);
      strokeWeight(2);
      setBezier();
     
      tempBezierX = bezierPoint(
        cX,
        bezierC1X,
        bezierC2X,
        tempX,
        noise((t1+phi)%1)
      );
      
      tempBezierY = bezierPoint(
        cY,
        bezierC1Y,
        bezierC2Y,
        tempY,
        noise((t1+phi)%1)
      );
     
     
      ellipse(tempBezierX, tempBezierY, 5,5);
      
      //line(cX, cY, bezierC1X, bezierC1Y);
      //line(bezierC1X, bezierC1Y, tempX, tempY);
      
   }
}

void mousePressed() {
  noiseSeed ++;
  noiseSeed(noiseSeed);
}
