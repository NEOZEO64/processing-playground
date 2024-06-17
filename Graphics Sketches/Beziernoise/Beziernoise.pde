void setup() {
  fullScreen(P2D);
  background(0);
  stroke(255);
  noFill();
  noiseDetail(1);
  strokeWeight(2);
  noiseSeed(2);
  bezierDetail(50);
}

float t = 0;


float getVal(float t, int seed) {
  return (noise(t, seed)-0.5) * 1500;
}

void draw() {
  background(0);
  translate(width/2 + 300, height/2 + 300);
  
  for (int i= 0; i < 2; i++) {
    float x1 = getVal(t, i);
    float y1 = getVal(t, i + 1);
    
    float x2 = getVal(t, i + 2);
    float y2 = getVal(t, i + 3);
    
    float x3 = getVal(t, i + 4);
    float y3 = getVal(t, i + 5);
    
    float x4 = getVal(t, i + 6);
    float y4 = getVal(t, i + 7);
    
    
    stroke(255);
    bezier(x1, y1, x2, y2, x3, y3, x4, y4);
    //bezier(x4, y4, x2, y2, x3, y3, x1, y1);
    
    //stroke(255,0,0);
    //bezier(x3, y3, x1, y1, x4, y4, x2, y2);
  }
  
  
  t += 0.01;
}
