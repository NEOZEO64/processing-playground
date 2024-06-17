PVector pos;
PVector pos2;
PVector opos;
PVector opos2;
PVector vel;
PVector vel2;
PVector size;

float speed = 40;

void drawDot(PVector pos, PVector size) {
  fill(255,0,0,250);
  noStroke();
  rect(pos.x-size.x/2 , pos.y-size.y/2 , size.x, size.y);
}

void drawLine(PVector pos, PVector opos) {
  strokeWeight(10);
  stroke(random(255),random(255),random(255),250);
  line(pos.x,pos.y,opos.x,opos.y);
}

void setup() {
  fullScreen();
  background(0);
  noCursor();
  
  pos   = new PVector((float)width/2.0   ,(float)height/2.0);
  opos  = new PVector((float)width/2.0   ,(float)height/2.0);
  pos2  = new PVector((float)width/2.0+20,(float)height/2.0);
  opos2 = new PVector((float)width/2.0+20,(float)height/2.0);
  vel = PVector.random2D();
  vel.mult(speed);
  vel2 = PVector.random2D();
  vel2.mult(speed);
  size = new PVector(20.0,20.0);
}


void draw() {
  fill(0,0,0,5);
  background(0);
  noStroke();
  //rect(0,0,width,height);
  drawDot(pos,size);
  drawDot(pos2,size);
  
  vel.rotate(0.2-random(100)/250);
  vel2.rotate(0.2-random(100)/250);
  
  if (pos.x + size.x/2 + vel.y > width  || pos.x - size.x/2 + vel.x < 0) {vel.x *= -1;}
  if (pos.y + size.y/2 + vel.y > height || pos.y - size.y/2 + vel.y < 0) {vel.y *= -1;}
  
  if (pos2.x + size.x/2 + vel2.y > width  || pos2.x - size.x/2 + vel2.x < 0) {vel2.x *= -1;}
  if (pos2.y + size.y/2 + vel2.y > height || pos2.y - size.y/2 + vel2.y < 0) {vel2.y *= -1;}
  
  pos.add(vel);
  pos2.add(vel2);
  drawLine(pos,opos);
  drawLine(pos2,opos2);
  opos.add(vel);
  opos2.add(vel2);
}
