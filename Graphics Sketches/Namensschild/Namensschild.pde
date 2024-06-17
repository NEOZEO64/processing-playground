float sinPos,c,c2,r,s; 

PFont font;

void setup() {
  fullScreen();
  colorMode(HSB);
  textAlign(CENTER,CENTER);
  background(0);
  noCursor();
  font = createFont("RoughenCornerRegular-7RjV.ttf", 32);
  textFont(font);
}


void draw() {
  c+=3;
  r+=0.04;
  if(c>255) {c=0;}
  c2 = c-128; if(c2<0) {c2 += 255;}
  sinPos+=0.05;
  
  fill(c,255,255);
  textSize(100*sin(sinPos*4/PI)+200);
  
  translate((width/4)*sin(sinPos)+width/2,(height/4)*sin(sinPos/PI)+height/2);
  rotate(r);
  
  background(c2,255,255);
  text("Booring",0,0);
  


}
