float rPhiToX(float r, float phi) {return r*cos(phi);}
float rPhiToY(float r, float phi) {return r*sin(phi);}

float r;
float phi = 0;

float cX;
float cY;

float tempX, tempY;
float oTempX, oTempY;

float t = 0;
float speed = 0.004;

PVector offset;

float mn = 150;
float mx = 500;

PShader shader;
PGraphics g1;
PGraphics g2;

int currentGraphics;

void setup() { 
  fullScreen(P2D);
  background(0);
  stroke(255);
  strokeWeight(1);
  colorMode(HSB);
  noCursor();
  cX = width/2;
  cY = height/2;
  
  offset = new PVector(random(99, 9999), random(99, 9999));
  
  noiseDetail(2);
  
  shader = loadShader("frag.glsl");
  
  g1 = createGraphics(width, height, P2D);
  g2 = createGraphics(width, height, P2D);
}


void draw() {
  PGraphics gCur = currentGraphics == 1? g1 : g2;
  PGraphics gOld = currentGraphics == 1? g2 : g1;
  currentGraphics = currentGraphics == 1? 0 : 1;
  
  gCur.background(0);
  gCur.shader(shader);
  shader.set("u_tex", gOld);
  gCur.rect(0, 0, width, height);
  gCur.resetShader();
  
  //background(0,0,0,2);  
  gCur.fill(0,0,0,4);
  gCur.noStroke();
  gCur.rect(0,0,width,height);
  
  //fill(0,255,60);
  //beginShape();
  for (phi = t; phi<TWO_PI+t; phi += 0.01) {
    
    //r = 300 + 200*sin(2*t+6*phi) + 100*sin(20*t); 
    float f = 1.5;
    r = map(noise(cos(phi + t)*f + offset.x, sin(phi + t)*f + offset.y, t), 0, 1, mn, mx); 
    tempX = cX+rPhiToX(r,phi*1);
    tempY = cY+rPhiToY(r,phi*1);
    if (t == 0) {
      oTempX = tempX;
      oTempY = tempY;
    }
    gCur.stroke((phi-t)*360/(TWO_PI),255,255-r/2+60);
    gCur.line(tempX,tempY,oTempX,oTempY);
    //vertex(tempX, tempY);
    
    oTempX = tempX; oTempY = tempY;
  }
  //endShape(CLOSE);
  
  t+=speed;
  
  image(gCur, 0, 0);
}
