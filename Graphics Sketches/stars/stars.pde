float f(float t) {
  float tempT = t - width/2;
  tempT /= 100;
  return (tempT*tempT);
}

class Dot {
  public float x;
  public float y;
  
  Dot(float inX, float inY) {x = inX; y = inY;}
  
  void move(float speed) {
    x += speed;
    y += f(x);
  }
  void show() {
    fill(255,255,255);
    //ellipse(this.x,this.y,10,10);
    translate(x,y,0);
    sphere(10);
  }
  
  boolean isAway() {
    if (this.x > width || this.x < 0 || this.y < 0 || this.y > height) {
      return true;  
    }
    return false;
  }
}

ArrayList<Dot> dots;

float speed = 1;

void setup() {
  fullScreen(P3D);
  translate(0,0,-200);
  background(0);
  noCursor();
  colorMode(HSB);
  fill(0,255,255);
  noStroke();
  dots = new ArrayList<Dot>();
  
  for (int i = 0; i < 100; i++) {
    dots.add(new Dot(random(0,width),random(0,height)));
  }
}

void draw() {
  lights();
  dots.add(new Dot(random(0,width),random(0,height)));
  
  for (Dot d : dots) {
    d.move(speed);
    d.show();
  }
  
  int i = dots.size() - 1;
  while (i >= 0) {
    Dot tempD = dots.get(i);
    if (tempD.isAway()) {dots.remove(i);}
    i --;
  }
}
