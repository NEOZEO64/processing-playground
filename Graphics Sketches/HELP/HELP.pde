float x,y,s;

PFont font;


void setup() {
  fullScreen();
  textAlign(CENTER,CENTER);
  background(0);
  noCursor();
  fill(255,0,0);
  font = createFont("HorrorAndDead.ttf", 32);
  textFont(font);
  x=width/2; y = height/2;
}


void draw() {
  s++;
  if (s>100 && s<600) {s +=80;}
  else if (s>600) {s+=5;}
  
  x+=random(-4,4);
  y+=random(-4,4);
 
  background(0);
  textSize(s);
  text("HILFE",x,y);
}
