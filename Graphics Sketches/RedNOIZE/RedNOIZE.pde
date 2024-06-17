int getY(float x) {
  //return (int)random(-100,100);
  return (int)(400.0-800.0*noise(x));
}

int getX(float y) {
  return (int)(400.0-800.0*noise(0,y));
};


float t = 0;
float detail = 80;

void setup() {
    fullScreen();
    background(0);
    
    

}


void draw() {
    t += 0.001;
    //background(0);
    strokeWeight(2);
    stroke(255);
    //line(0,height/2, width, height/2);
  
    
  
    float lastY = getY(0);
    float nowY = 0;
    
    float lastX = getX(0);
    float nowX = 0;
    
    for (int x = 0; x < width + 100; x += detail) {
      nowY = height/2-getY(x+t);
      //nowX = width/2-getX(nowY + t);
      noStroke();
      fill(0,0,255);
      //ellipse(x, nowY,5, 5);
      //ellipse(nowX, nowY,5, 5);
      stroke(255*(nowY/20),0,0);
      noFill();
      stroke(255,0,0);
      strokeWeight(0.1);
      line(x-detail, lastY, x, nowY);
      //line(lastX, lastY, nowX, nowY);
      //bezier(x-detail, lastY, x, nowY, 100, 800, 100, 100);
      //bezier(lastX, lastY, nowX, nowY, 100, 800, 100, 100);
      lastY = nowY;
      //lastX = nowX;
    }
  
  

}
