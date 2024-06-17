void setup() {
  fullScreen();
  background(0);
  stroke(255);
  noFill();
  noCursor();

  for (int i = 0; i< height; i+=10) {
    bezier(
      0,height,  //first anchor
      0,i,  //first control
      
      width,i,  //second anchor
      width,i   //second anchor
    );
  }
  
  for (int i = width; i>=0; i-=10) {
    bezier(
      0,height,  //first anchor
      i,height,  //first control
      
      i, 0,  //second anchor
      i, 0   //second anchor
    );
  }
  noLoop();
}
