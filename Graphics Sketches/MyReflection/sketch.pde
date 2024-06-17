Ball ball;
float angle;

void setup() {
  fullScreen();
  noStroke();
  fill(0,0,255);
  lights();
  ball = new Ball();
  
  background(0);
  
}

void draw() {
  ball.act();
  if(mousePressed) {
    angle= mouseX-width/2*0.0000001;
    ball.vel.rotate(angle);
  } else {
    angle=0;
  }
  if (ball.vel.mag()<40) {
    ball.vel.setMag(ball.vel.mag()+2/(abs(angle)+1));
  }
  ball.vel.setMag(ball.vel.mag()-2);
  
  background(0,0,0,5);
  
  fill(0,0,255);
  ball.render();
  
  fill(255,255,255,60);
  rect(60, height-160, width-120, 60);
}