int detail = 20;
float factor = 0;
float factor2 = 0;
float factor3 = 0;
float t = 0;

void setup() {
  fullScreen();
  colorMode(HSB);
  strokeWeight(2);
  stroke(255,255,255);
  noCursor();
  noiseDetail(1);
  fill(0);



}



void draw() {
  t += 0.1;
  factor = 12 * mouseX/width;
  factor2 = 10;
  factor3 = 1.0 * mouseY/height;

  
  background(0);
  
  for (int x = 0; x < width; x+= detail) {
    for (int y = 0; y < height; y += detail) {
      float intensity = noise(t + x*factor2/width,t + y*factor2/height);
      
      pushMatrix();
      translate(x, y);
      rotate(factor*intensity);
      println(factor3);
      stroke((factor3*intensity*70)%255, 255,255);
      strokeWeight(factor*intensity);
      
      //line(0, 0, 15, 0);
      //ellipse(0,0,5,20);
      rect(0,0, 2, 20);
      popMatrix();
    }
  }
}
