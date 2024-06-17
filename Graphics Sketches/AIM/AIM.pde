PVector pos,npos;
ArrayList<PVector> vels = new ArrayList<PVector>();
int brightness = 255;
float x = 0;
float xC = 0;


void setup() {
  fullScreen();
  colorMode(HSB);
  pos = new PVector(width/2,height/2);
  npos = new PVector(width/2,height/2);
  stroke(0,0,255);//white
  strokeWeight(8);
  strokeCap(ROUND);
  fill(0,0,180);
}

void draw() {
  background(0);
  vels.add(new PVector(mouseX-width/2,mouseY-height/2));
  vels.get(0).setMag(30);
  ellipse(pos.x,pos.y,20,20);
  xC +=0.1f; if (xC>=2) {xC=0;}
  x=xC;
  line(pos.x,pos.y,pos.x+vels.get(vels.size()-1).x*(xC),pos.y+vels.get(vels.size()-1).z*(xC));
  while (x<60) {
    npos.set(pos.x+vels.get(vels.size()-1).x*x,pos.y+vels.get(vels.size()-1).y*x);
    if(npos.x+vels.get(vels.size()-1).x> width || npos.x+vels.get(vels.size()-1).x < 0) {
      vels.add(new PVector(
        -vels.get(vels.size()-1).x,
        vels.get(vels.size()-1).y));
    } if(npos.y+vels.get(vels.size()-1).y> height|| npos.y+vels.get(vels.size()-1).y < 0) {
      vels.add(new PVector(
        vels.get(vels.size()-1).x,
        -vels.get(vels.size()-1).y));}
    line(npos.x,npos.y,npos.x+vels.get(vels.size()-1).x,npos.y+vels.get(vels.size()-1).y);
    x+=2;
  }
  
  //delete all Arraylist-Elements
  for (int i = vels.size() - 1; i >= 0; i--) {vels.remove(i);}
}
