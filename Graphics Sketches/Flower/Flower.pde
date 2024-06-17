PVector radToCart(float r, float phi) {
  return new PVector(r*cos(phi),r*sin(phi));
}

float val1() {
  return (float)mouseX/ (float)width;
}

float val2() {
  return (float)mouseY/ (float)height;
}

float getCircleVal(float x, float er, float highCount) {
  float r = PI*er/highCount;
  return sqrt( pow(r,2) - pow((x*2*r*highCount/(2*PI))%(r*2)-r,2) );
}

PVector getPos(float phi, float t, PVector center) {
  PVector temp = new PVector(center.x, center.y);
  
  //float r = 240 * sin(phi) + 20 * sin(16*phi + t) + 40;
  //float r = 40 * sin(8*phi + t) + 300;
  float rExt = 200;
  float r = rExt;
  //r += tan(phi*4-PI/2);
  r += getCircleVal(phi,rExt,5);
  //r += getCircleVal(phi,rExt,(int)(100*val1()));
  //r += 40 * sin(36*phi + t);
  //r += 170 * sin(8*phi + t/8.0) - 170; 
  //r += 120 * sin(phi + 0.2*t + 1);
  //float r2 = sin(phi/6.0);
  //temp.add(radToCart(r ,  -phi*2 +0.4*t));
  temp.add(radToCart(r,phi));
  return temp;
}

float phi, t;
PVector center, temp, oTemp;

void setup() { 
  fullScreen();
  background(0);
  colorMode(HSB);
  
  t = 0;
  phi = 0;
  
  center = new PVector(width/2,height/2);
  oTemp = getPos(phi, t, center);
}


void draw() {
  noStroke();
  fill(0,0,0,10);
  rect(0,0,width,height);
  strokeWeight(3);
  
  t+=0.02;
  for (phi = 0; phi<PI*2; phi += 0.0005) {
    temp = getPos(phi, t, center);
    float tempColor = phi + t;
    tempColor %= 2*PI;
    tempColor *= 360.0/(2*PI);
    stroke(tempColor,255,sin(t*0.01)*100+120);
    line(temp.x,temp.y,oTemp.x,oTemp.y);
    oTemp = temp;
  }
}
