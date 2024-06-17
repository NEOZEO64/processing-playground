import java.util.ArrayList; // import the ArrayList class

PVector center;
PVector lineEnd;
PVector bezierPoint1, bezierPoint2;


ArrayList<Float> radiusses = new ArrayList<Float>(); // Create an ArrayList object
float radius = 1;
float speed = 1.3;
float realSpeed = 1.01;
int radiussesCount;
float lineCount = 12;
float lineRadius;
float lineAngle = 2*PI/lineCount;
float maxRadiusSize;

float sphereToX(float r, float phi) {return r*cos(phi);}
float sphereToY(float r, float phi) {return r*sin(phi);}

float phi = PI/7;
float curveStrength = 200;

float t = 0;

void setup() {
  fullScreen();
  stroke(255);
  noFill();
  strokeWeight(2);
  maxRadiusSize = 2*width;
  lineRadius = width;
  radiussesCount = 0;
  float tempR = 1;
  
  while (tempR < maxRadiusSize) {
    radiussesCount++;
    tempR *= speed;
  }
  
  
  center = new PVector(width/2, height/2);
  lineEnd = new PVector(0,0);
  bezierPoint1 = new PVector(0,0);
  bezierPoint2 = new PVector(0,0);
  tempR = 1;
  for (int i = 0; i<radiussesCount; i++) {
    radiusses.add(tempR);
    tempR *= speed;
  }
  
}


void draw() {
  background(0);
  
  
  for (int i = 0; i<radiussesCount; i++) {
    radiusses.set(i,radiusses.get(i)*realSpeed);
    if (radiusses.get(i)>maxRadiusSize) {radiusses.set(i,1.0);}
      float pointPos = radiusses.get(i)/maxRadiusSize;
      float posX = bezierPoint(center.x, center.x-curveStrength, center.x-lineRadius,  center.x-lineRadius-curveStrength, pointPos/2);
      float posY = bezierPoint(center.y, center.y, center.y,center.y, pointPos);
      ellipse(posX,posY,radiusses.get(i),radiusses.get(i));
  }
  
  phi = PI/7;
  for (int i = 0; i<lineCount; i++) {
    lineEnd.x = sphereToX(lineRadius,phi)+center.x;
    lineEnd.y = sphereToY(lineRadius,phi)+center.y;
    
    bezierPoint1.x = center.x - curveStrength;
    bezierPoint1.y = center.y;
    bezierPoint2.x = lineEnd.x - curveStrength;
    bezierPoint2.y = lineEnd.y;
    
    bezier(center.x, center.y, bezierPoint1.x, bezierPoint1.y, bezierPoint2.x, bezierPoint2.y, lineEnd.x, lineEnd.y);
    //line(center.x,center.y, lineEnd.x, lineEnd.y);
    phi += lineAngle;
  }
}
