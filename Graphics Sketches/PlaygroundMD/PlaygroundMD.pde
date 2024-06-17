ArrayList<Dot> dots = new ArrayList<Dot>();


void setup() {
  fullScreen();
  fill(255,0,0);
  noStroke();
  noCursor();
}



void draw() {
  background(0,0,0);
  int hSize = abs(pmouseX-mouseX)*2;
  int vSize = abs(pmouseY-mouseY)*2;
  
  dots.add(new Dot(mouseX,mouseY,vSize,hSize));
  
  for (int i = 0; i < dots.size(); i++) {
    Dot dot = dots.get(i);
    dot.run();
    dot.show();
  }
  
  for (int i = 0; i < dots.size(); i++) {
    Dot dot = dots.get(i);
    if (dot.sizeX <2) {dots.remove(i);}
    else if (dot.sizeY <2) {dots.remove(i);}
  }
  
}
