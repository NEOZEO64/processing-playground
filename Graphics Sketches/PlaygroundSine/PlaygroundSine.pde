

void setup() {
  fullScreen();
  background(32,34,37);
  stroke(255);
  strokeWeight(12);
  fill(255);
  noCursor();
  
  
  
  
  float ox=100+(width-height)/2;
  float oy=height/2-sin(ox*4*PI/width)*0.2*height;
  float y=oy;
  
  for (float x= 100+(width-height)/2;x<width-(width-height)/2-100;x+=1) {
    y = height/2-sin(x*4*PI/width)*0.2*height;
    //if ((int)(x%10)==10) {ellipse(x,y,10,10);}
    line(ox,oy,x,y);
    ox = x;
    oy = y;
  }
  
  noLoop();
}
