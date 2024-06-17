float t = 0;
float detail = 0.01;

float heaviside(float x) {
  if (x>0) {return 1;}
  else {return 0;}
}

float f(float x) {
  return 0.5*x*(heaviside((x%1)-0.5)-0.5);
}

float g(float x) {
  return 0.5*(20-x)*(heaviside(((x+0.5)%1)-0.5)-0.5);
}

void setup() {
  fullScreen();
  noCursor(); 
  background(0);

}



void draw() {
  
  t += 0.01;
  
  
  translate(width/2, height/2);
  stroke(255);
  strokeWeight(1);
  noFill();
  
  float rotateFactor = 0.0;
  
  //background(0);
  
  stroke(255,0,100);
  rotate(rotateFactor + t);
  for (float x = 0; x < 20; x += detail) {
    line(x*100,-f(x) * 100, (x + detail)*100, -f(x + detail) * 100);
  }
  
  rotate(rotateFactor - 2 * t );
  stroke(100,0,255);
  for (float x = 0; x < 20; x += detail) {
    line(x*100,-g(x) * 100, (x + detail)*100, -g(x + detail) * 100);
  }
  
  


}
