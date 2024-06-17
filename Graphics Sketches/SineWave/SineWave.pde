float x = 0;
float y = 0;
float m = 0;
float i = 0;

class Dot {
  public float x;
  public float y;
  public float c;
  
  Dot(float x,float y, float c) {
    this.x = x;
    this.y = y;
    this.c = c;
  }
  
  void display() {
    fill(c,255,255);
    ellipse(x,height/2 + y*((float)3 * ((float)mouseY/height)),10,10);
  }
}

ArrayList<Dot> dots = new ArrayList<Dot>();

void setup() {
  fullScreen();
  x=width*0.9;
  noStroke();
  noCursor();
  colorMode(HSB);
  
}

void draw() {
  background(0);
  m++;
  
  //i+=64;
  i+=1;
  if (i>255) {i -=255;}
  dots.add(new Dot(x,300*sin(m/40)*sin(m/20)*sin(m/10),i));

  /*
  i+=63.75;
  if (i>255) {i -=255;}
  dots.add(new Dot(x,300*cos(m*0.03)+height/2,i));
  
  i+=63.75;
  if (i>255) {i -=255;}
  dots.add(new Dot(x,300*-sin(m*0.03)+height/2,i));
  
  i+=63.75;
  if (i>255) {i -=255;}
  dots.add(new Dot(x,300*-cos(m*0.03)+height/2,i));
  */
  
  
  for (int i = 0; i < dots.size(); i++) {
    Dot dot = dots.get(i);
    dot.x-=3;
    dot.display();
  }

}
