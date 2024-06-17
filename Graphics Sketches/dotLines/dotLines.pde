float intervall = 40;

void setup() {
  fullScreen();  
  
}


void draw() {
  background(0);
  for (float x = 0; x < width; x+=intervall) {
    for (float y = 0; y < height; y+=intervall) {
      noFill();
      stroke(60);
      strokeWeight(1);
      line(mouseX, mouseY, x, y);
    }
  }
  
  for (float x = 0; x < width; x+=intervall) {
    for (float y = 0; y < height; y+=intervall) {
      fill(255);
      noStroke();
      rect(x-1,y-1,2,2);
      
    }
  }
  

}
