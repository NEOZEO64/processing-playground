float polX(float r, float phi) {
  return r*cos(phi);
}

float polY(float r, float phi) {
  return r*sin(phi);
} 

float detail = 2;
float rIncrease = 20;
float startR = 1;
float speed = 1000; //the higher the slower

float getNextR(float prevR, float prevPhi) {
  return prevR + rIncrease + 10*sin(12 * prevPhi);
}

void setup() {
  fullScreen();
  noCursor();
  colorMode(HSB);
  strokeWeight(0.01);
  background(0);
}



void draw() {
  //background(0);
  //fill(0,0,0,1)
  //noStroke();
  //rect(0,0,width,height);
  
  translate(width/2, height/2);
  float r = startR;
  detail = 0.2 + 1*((float)mouseX/(float)width);
  rIncrease = detail * 6*((float)mouseY/(float)height);
  for (float phi = (0 - ((float)frameCount)/speed)%360; phi < 100; phi += detail) {
    float nextPhi = phi + detail;
    r = getNextR(r, phi);
    float nextR = getNextR(r, phi);
    
    stroke(180+ 90*sin((phi+frameCount)/100f),255,255, 50*height/nextR);
    line(
      polX(r,phi),
      polY(r, phi),
      polX(nextR,nextPhi) * cos(phi),
      polY(nextR,nextPhi)
    );
  }
}
