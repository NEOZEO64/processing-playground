void setup() {
  fullScreen(2);
  background(0);
  stroke(255);
  noFill();
  strokeWeight(3);
  noCursor();
  
  for (int i = 0; i < 5; i+=1) {
    bezier(0, height*0.8 - i * 30, 1000,1000, width*0.3, height*0.5 - i * 50- 100, width, height*0.7 - i *40);
  }
  
  for (int i = 0; i < 10; i+= 1) {
    line(0, height*0.4 + i*20, width, height*0.6 + i *20);
  }
    


   noLoop();
}


void draw() {
  


}
