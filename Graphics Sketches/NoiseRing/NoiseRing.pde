float getX(float r, float phi) {
  return r * cos(phi);
}

float getY(float r, float phi) {
  return r * sin(phi);
}


float t = 0;

void setup() {
  fullScreen();
  noCursor();
  background(0);
  stroke(255,0,0);
  strokeWeight(0.01);
  noFill();
  noiseDetail(8);
  colorMode(HSB);
}


float myRawFunc(float phi, float t) {
  return 20 + 400 * noise(phi + t);
}


float myFunc(float phi, float t) {
  return myRawFunc(phi, t); //-(myRawFunc(TWO_PI, t)-myRawFunc(0, t))*phi/TWO_PI;
}


void draw() {
  t += 0.01;
  translate(width/2, height/2);
  
  float detail = 0.01;
  float prevR = myFunc(0,t);
  
  for (float phi = detail; phi < TWO_PI + detail; phi += detail) {
    float r = myFunc(phi,t);
    
    stroke((r/10 + t)%255, 100 + noise(t) * 100, 100 + noise(t)*100);
    
    float x1 = getX(prevR * sin(r), phi-detail);
    float y1 = getY(prevR, phi-detail);
    float x2 = getX(r, phi);
    float y2 = getY(r, phi);
    //line(x1, y1, x2, y2);
    //triangle(x1, y1, x2, y2, 0, 0);
    color c = color((r/10 + t)%255, 100 + noise(t) * 100, 100 + noise(t)*100);
    set((int)x1 + width/2,(int)y1 + height/2,c);
    prevR = r;
  }
  
}
