float phi = 0;
float radius = 60; 


void setup() {
  fullScreen();
  noCursor();
  background(255);
  fill(255,0,0);
  stroke(255,0,0);
  

}


void draw() {
  phi += 0.03;
  //radius += 0.4;
  radius = (float)300 * sin(phi*1.1)+100;
  line(rPhiToX(radius,phi),rPhiToY(radius,phi),rPhiToX(radius,phi-0.03),rPhiToY(radius,phi-0.03));


}


float rPhiToX(float r, float phi) {return (float)(width/2)-r*cos(phi);}
float rPhiToY(float r, float phi) {return (float)(height/2)-r*sin(phi);}
float rPhiToX2(float r, float phi) {return (float)(width/2)-r*cos(phi)*sin(phi);}
float rPhiToXY2(float r, float phi) {return (float)(height/2)-r*cos(phi)*sin(phi);}
float rPhiToY2(float r, float phi) {return (float)(height/2)-r*sin(phi)*sin(phi);}
float rPhiToY3(float r, float phi) {return (float)(height/2)+r*sin(phi)*sin(phi);}
