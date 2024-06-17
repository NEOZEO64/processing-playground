float x=200;float y=200;
float vx=2.1f;float vy=2.3f;
void setup() {fullScreen();}
void draw() {
  x+=vx;y+=vy; background(0); ellipse(x,y,20,20);
  if((x+20/2 > width && vx > 0) || (x-20/2 < 0 && vx < 0)) {vx=-vx;}
  if((y+20/2 > height&& vy > 0) || (y-20/2 < 0 && vy < 0)) {vy=-vy;}
}
