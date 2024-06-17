float getX(float r, float phi) {return r * cos(phi);}
float getY(float r, float phi) {return r * sin(phi);}


float phi = 0;
float r = 20;

float cX = 0;
float cY = 0;

float t = 0;

void setup() {
  fullScreen();
  noCursor();
  
  
  colorMode(HSB);
  strokeWeight(1);
  background(0,0,0);
  //cX = width/2;
  //cY = height/2;
  cX = 0;
  cY = 0;
}



void draw() {
  //translate(width/2, height/2);
  background(0,0,0);
  smooth();
  stroke(255,255,255);
  
  for (float x = 0; x < width+100; x += 20) {
    for (float y = 0; y < height+100; y += 20) {
      //float y = height;
      phi = 3* noise(x/(mouseX+1) + t, y/(mouseY+1));
      stroke((phi*130.0)%255, 255, 255);
      strokeWeight(phi*phi*2);
      line(x,y, x + getX(r, phi), y + getY(r, phi));
    }
  }
  phi += 0.01;
  
  //cX += random(30)-15;
  //cY += random(30)-15;
  
  //cX = (t*50)%width;
  //cY = height/2 + 300*sin(sin(t));
  
  //cX += 2 + 7*sin(cY/100);
  //cY = (cY + 2.1)%height;
  
  t += 0.005;
}
