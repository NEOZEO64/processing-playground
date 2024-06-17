float epsilon(float t) {
  if (t>=0) {return 1;}
  return 0;
}

float x(float t) {
  return exp(-3*t)*epsilon(t) + exp(2*t)*epsilon(-t); 
}

void setup() {
  fullScreen();
  background(0);
  noLoop();
  noCursor();
  stroke(255,0,0);
  strokeWeight(0.1);
  translate(width/2, height/2);
  scale(100,-100);
  
  float detail = 0.1;
  for (float t = -10; t < 10; t+=detail) {
    float nextT = t + detail;
    line(t,x(t),nextT,x(nextT));
  }
  
  
}
