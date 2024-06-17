float m = 0.01;
float mr = 0.04;
float size = 180;
float x,y;
float ox,oy;
float px,py;
float phi = 0;
float r = 0; //sin(phi*2/(PI))*50+150;


void setup() {
  fullScreen();
  background(0);
  stroke(255);
  fill(255);
  strokeWeight(1);
  noCursor();
  
  ox = rPhiToX(r,phi);
  oy = rPhiToY(r,phi);
  
  while (phi<size) {
    phi+=m;
    //addY = sin((phi/180)*2*PI)*10;
    r = sin(phi/(PI))*500+0;
    x = rPhiToX(r,phi); //+addY;
    y = rPhiToY(r,phi);
    //ellipse(x,y,1,1);
    line(x,y,ox,oy);
    ox = x; oy = y;
  }
  
  

  noLoop();
}

/*
void draw() {
  background(0);
  //while (phi<size) {
  phi+=3*m;
  //delay(1);
  //addY = sin((phi/180)*2*PI)*10;
  r = sin(phi*2/(PI))*50+150;
  x = rPhiToX(r,phi); //+addY;
  y = rPhiToY(r,phi);
  //ellipse(x,y,1,1);
  
  r = sin((phi-6*m)*2/(PI))*50+150;
  px = rPhiToX(r,phi-6*m); //+addY;
  py = rPhiToY(r,phi-6*m);
  line(x,y,px,py);
  
  
  r = sin((phi-12*m)*2/(PI))*50+150;
  x = rPhiToX(r,phi-12*m); //+addY;
  y = rPhiToY(r,phi-12*m);
  line(px,py,ox,oy);
  
  
  
  //line(x,y,ox,oy);
  ox = x; oy = y;
  //}
}
*/

float rPhiToX(float r, float phi) {return (float)(width/2)-r*cos(phi);}
float rPhiToY(float r, float phi) {return (float)(height/2)-r*sin(phi);}
float rPhiToX2(float r, float phi) {return (float)(width/2)-r*cos(phi)*sin(phi);}
float rPhiToXY2(float r, float phi) {return (float)(height/2)-r*cos(phi)*sin(phi);}
float rPhiToY2(float r, float phi) {return (float)(height/2)-r*sin(phi)*sin(phi);}
float rPhiToY3(float r, float phi) {return (float)(height/2)+r*sin(phi)*sin(phi);}
