void setup() {
  fullScreen();
  background(0);
  stroke(255);
  fill(255);
  strokeWeight(2);
  noCursor();
  
  float m = 0.01;
  float mr = 0.04;
  float size = 180;
  float x,y;
  float ox,oy;
  float phi = 0;
  float addX = 0;
  float addY = 0;
  float r = sin(phi/(PI))*100+100;
  
  ox = rPhiToX2(r,phi);
  oy = rPhiToY2(r,phi);
  while (phi<size) {
    phi+=m;
    //addY = sin((phi/180)*2*PI)*10;
    r = sin(phi/(PI))*100+100;
    x = rPhiToX2(r,phi); //+addY;
    y = rPhiToY(r,phi);
    //ellipse(x,y,1,1);
    line(x,y,ox,oy);
    ox = x; oy = y;
  }
  
  phi = 0;
  ox = rPhiToX2(r,phi);
  oy = rPhiToXY2(r,phi);
  while (phi<size) {
    phi+=m;
    //addY = sin((phi/180)*2*PI)*10;
    r = sin(phi/(PI))*100+100;
    x = rPhiToX(r,phi); //+addY;
    y = rPhiToXY2(r,phi);
    //ellipse(x,y,1,1);
    line(x,y,ox,oy);
    ox = x; oy = y;
  }
  
  

  noLoop();
}

float rPhiToX(float r, float phi) {return (float)(width/2)-r*cos(phi);}
float rPhiToY(float r, float phi) {return (float)(height/2)-r*sin(phi);}
float rPhiToX2(float r, float phi) {return (float)(width/2)-r*cos(phi)*sin(phi);}
float rPhiToXY2(float r, float phi) {return (float)(height/2)-r*cos(phi)*sin(phi);}
float rPhiToY2(float r, float phi) {return (float)(height/2)-r*sin(phi)*sin(phi);}
float rPhiToY3(float r, float phi) {return (float)(height/2)+r*sin(phi)*sin(phi);}
