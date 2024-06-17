int deg;
int x = 0;
int y = 0;


void setup() {
  fullScreen();
  colorMode(HSB);
  noCursor();
  noStroke();

}


void draw() {
  if (keyPressed) {
    if (key == 's') {y+=1;}
  }
  fill(0,0,0);
  rect(0,y, 20,20);
  
  deg = 0;
  fill(deg, 255,255);
  rect(0, 0, width/3, height);
  
  
  deg += 120; deg %= 360;
  fill(deg, 255,255);
  rect(width/3, 0, width/3, height);
  
  
  deg += 120; deg %= 360;
  fill(deg, 255,255);
  rect(2*width/3, 0, width/3, height);

}
