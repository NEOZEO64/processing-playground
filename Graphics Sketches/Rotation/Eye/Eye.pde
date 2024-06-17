float m = 0.01;
float mr = 0.04;
float size = 180;
float ox,oy,oy1;
float px,py;
float phi = 0;
float globalSize = 250;
float pupilleNormalSize = 200;
float pupilleAmplitude = 70; 
float r = sin(phi*2/(PI))*pupilleAmplitude+pupilleNormalSize;
PShape eyeLidTop;
PShape eyeLidBottom;
float xPos, yPos;
float x,y;
float openValue;
float t = 0;
float tY = 0;

void setup() {
  fullScreen();
  //size(1920,1080);
  noCursor();
  eyeLidTop = createShape();
  eyeLidBottom = createShape();
  openValue = globalSize*0.7;
}

void draw() {
  t += 0.1;
  tY = sin(t);
  pupilleNormalSize = 200*tY;
  //openValue = globalSize*(tY+1)*0.5;
  background(0);
  noStroke();
  
  fill(0,0,255,200);
  if (pupilleNormalSize+pupilleNormalSize > pupilleNormalSize-pupilleNormalSize) {
    ellipse(width/2,height/2,2*(pupilleNormalSize+pupilleAmplitude),2*(pupilleNormalSize+pupilleAmplitude));
    fill(0);
    ellipse(width/2,height/2,2*(pupilleNormalSize-pupilleAmplitude),2*(pupilleNormalSize-pupilleAmplitude));
  } else {
    ellipse(width/2,height/2,2*(pupilleNormalSize-pupilleAmplitude),2*(pupilleNormalSize-pupilleAmplitude));
    fill(0);
    ellipse(width/2,height/2,2*(pupilleNormalSize+pupilleAmplitude),2*(pupilleNormalSize+pupilleAmplitude));
  }
  
  stroke(255);
  fill(255);
  strokeWeight(1);
  
  x = 0;
  phi = 0;
  r = sin(phi*2/(PI))*pupilleAmplitude+pupilleNormalSize;
  ox = rPhiToX(r,phi);
  oy = rPhiToY(r,phi);
  while (phi<size) {
    phi+=m;
    r = sin(phi*2/(PI))*pupilleAmplitude+pupilleNormalSize;
    x = rPhiToX(r,phi);
    y = rPhiToY(r,phi);
    line((float)x,(float)y,ox,oy);
    ox = (float)x; oy = (float)y;
  }
  
  //Eyelid top
  eyeLidTop.beginShape();
  eyeLidTop.fill(0);eyeLidTop.noStroke();
  eyeLidTop.vertex(width/2-globalSize*PI/2,height/2-globalSize*2);
  eyeLidTop.vertex(width/2+globalSize*PI/2,height/2-globalSize*2);
  x = 0;
  while(x<PI) {
    x+= globalSize/(PI*10000);
    xPos = width/2+globalSize*PI/2-x*globalSize;
    yPos = height/2-openValue*sin((float)x);
    eyeLidTop.vertex((float)xPos,(float)yPos);
    ox = (float)xPos; oy = (float)yPos;
  }
  
  //ellipse(width/2+globalSize*PI/2-PI*globalSize,height/2-globalSize*2,20,20);
  eyeLidTop.endShape(CLOSE);
  
  
  //Eyelid bottom
  eyeLidBottom.beginShape();
  eyeLidBottom.fill(0);eyeLidBottom.noStroke();
  eyeLidBottom.vertex(width/2-globalSize*PI/2,height/2+globalSize*2);
  eyeLidBottom.vertex(width/2+globalSize*PI/2,height/2+globalSize*2);
  x = 0;
  while(x<PI) {
    x+= globalSize/(PI*10000);
    xPos = width/2+globalSize*PI/2-x*globalSize;
    yPos = height/2+openValue*sin((float)x);
    eyeLidBottom.vertex((float)xPos,(float)yPos);
    ox = (float)xPos; oy = (float)yPos;
  }
  eyeLidBottom.endShape(CLOSE);
  
  
  
  shape(eyeLidTop,0,0);
  shape(eyeLidBottom,0,0);
  
  
  strokeWeight(2);
  //Eyelid line top
  x = 0;
  ox = width/2-globalSize*PI/2;
  oy = height/2-globalSize*sin((float)x/2);
  while(x<PI) {
    x+= globalSize/(PI*10000);
    xPos = width/2-globalSize*PI/2+x*globalSize;
    yPos = height/2-openValue*sin((float)x);
    line((float)xPos,(float)yPos,ox,oy);
    ox = (float)xPos; oy = (float)yPos;
  }
  
  //Eyelid line bottom
  x = 0;
  ox = width/2-globalSize*PI/2;
  oy = height/2-globalSize*sin((float)x);
  while(x<PI) {
    x+= globalSize/(PI*10000);
    xPos = width/2-globalSize*PI/2+x*globalSize;
    yPos = height/2+openValue*sin((float)x);
    line((float)xPos,(float)yPos,ox,oy);
    ox = (float)xPos; oy = (float)yPos;
  }
  
}

float rPhiToX(float r, float phi) {return (float)(width/2)-r*cos(phi);}
float rPhiToY(float r, float phi) {return (float)(height/2)-r*sin(phi);}
float rPhiToX2(float r, float phi) {return (float)(width/2)-r*cos(phi)*sin(phi);}
float rPhiToXY2(float r, float phi) {return (float)(height/2)-r*cos(phi)*sin(phi);}
float rPhiToY2(float r, float phi) {return (float)(height/2)-r*sin(phi)*sin(phi);}
float rPhiToY3(float r, float phi) {return (float)(height/2)+r*sin(phi)*sin(phi);}
