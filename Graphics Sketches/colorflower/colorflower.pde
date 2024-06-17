float toX(float r, float phi) {return r * cos(phi);}
float toY(float r, float phi) {return r * sin(phi);}

float detail = 0.03;
float t = 0;
float mod2 = 0;

void setup() {
  fullScreen();
  background(0);
  //strokeWeight(0.1);
  strokeWeight(1);
  colorMode(HSB);
  stroke(255,255,255);
  
  noCursor();
  noiseDetail(1);

}

float clamp(float x, float low, float high) {
  if (low < x && x < high) { return x;}
  else if (x < low) {return low;}
  return high;
}


float func(float phi, float mod1, float mod2) {
  //return 800 * sin(x2/40 + phi/50) * sin(x2/40 + phi / 100);
  //return 200 + 400 * sin(phi * 8 + mod1/10) + 20 * cos(mod1/8) + mod2;
  return  clamp( 700 *sin(phi * (4 + 2 *noise(t/100,-1,1)) + t/40 + sin(t/10)), 40, 650);
}




void draw() {
  
  //background(0);
  t += 0.2;
  mod2 += 0.21;
  translate(width/2, height/2);
  for (float phi = 0; phi < 100; phi += detail) {
    float f1 = func(phi-detail, t, mod2);
    float f2 = func(phi, t, mod2);
    
    
    float x1 = toX(f1, phi - detail);
    float y1 = toY(f1, phi - detail);
    
    float x2 = toX(f2, phi);
    float y2 = toY(f2, phi);
    //stroke(255);
    stroke((200*sin((f1-f2)/20))%255, 255, 255);
    //stroke((2*t)%255, 255, pow(f1-f2,3)/100);
    
    line(x1, y1, x2, y2);
  }
}
