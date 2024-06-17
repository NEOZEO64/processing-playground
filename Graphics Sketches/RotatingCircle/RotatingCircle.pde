float toX(float r, float phi) {return r * cos(phi);}
float toY(float r, float phi) {return r * sin(phi);}

float detail = 0.1;
float t = 0;

void setup() {
  fullScreen();
  background(0);
  strokeWeight(0.1);
  colorMode(HSB);
  stroke(255,255,255);
  noCursor();

}


float func(float phi, float x2) {
  //return 800 * sin(x2/40 + phi/50) * sin(x2/40 + phi / 100);
  return 600 * sin(phi / x2);
}




void draw() {
  t += 0.1;
  translate(width/2, height/2);
  for (float phi = 0; phi < 100; phi += detail) {
    float x1 = toX(func(phi, t), phi - detail);
    float y1 = toY(func(phi, t), phi - detail);
    
    float x2 = toX(func(phi, t), phi);
    float y2 = toY(func(phi, t), phi);
    
    line(x1, y1, x2, y2);
  }
}
