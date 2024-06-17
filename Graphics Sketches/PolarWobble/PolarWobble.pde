float rPhiToX(float r, float phi) {
  return r*cos(phi);
}
float rPhiToY(float r, float phi) {
  return r*sin(phi);
}

float r;
float phi = 0;

float cX;
float cY;

float tempX, tempY;
float oTempX, oTempY;

float t = 0;
float speed = 0.004;

PVector offset;

float mn = -600;
float mx = 700;

void setup() {
  fullScreen();
  background(0);
  stroke(255);
  strokeWeight(1);
  colorMode(HSB);
  noCursor();
  cX = width/2;
  cY = height/2;

  offset = new PVector(random(99, 9999), random(99, 9999));

  noiseDetail(2);
}


void draw() {
  //background(0,0,0,2);
  fill(0, 0, 0, 4);
  noStroke();
  rect(0, 0, width, height);

  //fill(0,255,60);
  //beginShape();
  for (phi = t; phi<TWO_PI+t; phi += 0.01) {

    r = 300 + 50*sin(4*t+6*phi) +  100*sin(4*t);
    float f = 1.5;
    //r = map(noise(cos(phi + t)*f + offset.x, sin(phi + t)*f + offset.y, t), 0, 1, mn, mx);
    tempX = cX+rPhiToX(r, phi*1);
    tempY = cY+rPhiToY(r, phi*1);
    if (t == 0) {
      oTempX = tempX;
      oTempY = tempY;
    }
    stroke((phi-t)*360/(TWO_PI), 255, 255-r/2+60);
    line(tempX, tempY, oTempX, oTempY);
    //vertex(tempX, tempY);

    oTempX = tempX;
    oTempY = tempY;
  }
  //endShape(CLOSE);

  t+=speed;
}
