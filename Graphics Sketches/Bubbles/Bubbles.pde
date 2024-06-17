float boxSX = 800;
float boxSY = 600;
float boxSZ = 800;

float xRot = 0;
float yRot = 0;


class Projectile {
  public float x, y, z, vX, vY, vZ, rad;
  Projectile(float posX, float posY, float posZ, float velX, float velY, float velZ) {
    x = posX;
    y = posY;
    z = posZ;
    vX = velX;
    vY = velY;
    vZ = velZ;
    rad = 100;
  }
  
  public void live() {
    if (x-rad<-boxSX/2 || x+rad>boxSX/2) {
      vX *= -1;
    }
    if (y-rad<-boxSY/2 || y+rad>boxSY/2) {
      vY *= -1;
    }
    if (z-rad<-boxSZ/2 || z+rad>boxSZ/2) {
      vZ *= -1;
    }
    x += vX;
    y += vY;
    z += vZ;
    
    fill(0,0,255);
    showCircle(x,y,z,rad);
  }
}


ArrayList<Projectile> pros;

void setup() {
  fullScreen(P3D);
  pros = new ArrayList<Projectile>();
  
}

void draw() {
  background(0);
  lights();
  noCursor();
  stroke(255);
  noFill();
  pushMatrix();
  translate(width/2, height/2,0);
  
  translate(0,0, 400);
  rotateY(-(width/2-mouseX)*4.0/width);
  rotateX((height/2-mouseY)*4.0/height);
  translate(0,0,-400);
  
  translate(0,0,-400);
  
  

  box(boxSX,boxSY,boxSZ);
  
  
  noStroke();
  for (Projectile pro : pros) {
    pro.live();
  }
  popMatrix();
}

void showCircle(float posX, float posY, float posZ, float size) {
  pushMatrix();
  translate(posX, posY, posZ);
  sphere(size);
  popMatrix();
}


void mousePressed() {
  pros.add(new Projectile(random(-100,100), random(-100,100), (float)-200, random(-20,20),random(-20,20),random(-20,20)));
}
