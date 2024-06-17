float x=0;
float y=0;
float z=0;

void setup() {
  fullScreen(P3D);
  noStroke();
  fill(255,0,0);
}

void draw() {
   background(80);
   
   pushMatrix();
   translate(width/2, height/2);
   lights();
   rotateX(x);
   x+=0.008f;
   rotateY(y);
   y+=0.004f;
   //rotateZ(1);
   //z+=0.04f;
   
   box(600, 600, 600);
   popMatrix();
}