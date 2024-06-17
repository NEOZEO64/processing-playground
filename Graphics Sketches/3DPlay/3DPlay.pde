float t = 0;
ArrayList<MyBox> boxes;

class MyBox {
  public float x, y, z;
  public float rx, ry, rz;
  public int colorPos;
  public float vx, vy, vz;
  
  /*
  MyBox(float ix, float iy, float iz, float irx, float iry, float irz) {
   this.x = ix;
   this.y = iy;
   this.z = iz;
   this.rx = irx;
   this.ry = iry;
   this.rz = irz;
   this.colorPos = 0;
  }
  */
  
  MyBox() {
   this.x = random(-width/2, width/2);
   this.y = random(-height/2, height/2);
   this.z = random(-600, -200);
   this.rx = random(-6, 6);
   this.ry = random(-6, 6);
   this.rz = random(-6, 6);
   this.vx = random(-10, 10);
   this.vy = random(-10, 10);
   this.vz = random(-10, 10);
   this.colorPos = int(random(0, 255));
  }
  
  void move() {
    if (-width/2 > this.x + this.vx ||  this.x + this.vx > width/2) this.vx *= -1;
    if (-height/2 > this.y + this.vy ||  this.y + this.vy > height/2) this.vy *= -1;
    if (-600 > this.z + this.vz ||  this.z + this.vz > -200) this.vz *= -1;
    
    
    this.x += this.vx;
    this.y += this.vy;
    this.z += this.vz;
    
    this.rx += 0.1;
    this.ry += 0.1;
    this.rz += 0.1;
    
    //this.colorPos += 1;
    
    
    
    
  }
  
  void show() {
    pushMatrix();
    translate(this.x, this.y, this.z);
    rotateX(this.rx);
    rotateY(this.ry);
    rotateZ(this.rz);
    
    noStroke();
    fill(colorPos%255, 255,255);
      
    box(50);
    popMatrix();
  }

}



void setup () {
  //fullScreen(P3D);
  size(800,800, P3D);
  noStroke();
  frameRate(60);
  noCursor();
  colorMode(HSB);
  
  boxes = new ArrayList<MyBox>();
  
  for (int i = 0; i< 1500; i++) {
    boxes.add(new MyBox());
  }


}


void draw() {
  t += 0.01;
  background(0);
  pushMatrix();
  translate(width/2, height/2, 400);
  //box(200);
  popMatrix();
  lights();
  //fill((t * 125.6)%255, 255, 255);
  
  translate(width/2, height/2, 0);
  for (MyBox box : boxes) {
    box.move();
    box.show();
  }

}
