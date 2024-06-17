void setup() {
  fullScreen();
  //size(3840,2160);

  save("bezierTest.png");
}

void draw() {
  background(0);
  stroke(255);
  noFill();
  noCursor();

  for (int i = 0; i< height; i+=10) {
    bezier(
      0,height,  //first anchor
      0,height,  //first control
      
      width,mouseY,  //second anchor
      width,i   //second anchor
    );
  }
  
  for (int i = width; i>=0; i-=10) {
    bezier(
      0,height,  //first anchor
      0,height,  //first control
      
      0, 0,  //second anchor
      i, 0   //second anchor
    );
  } 
}
