float rectSize = 10;
float noiseFactor = TWO_PI;

float xRes, yRes;

void setup() {
  fullScreen();
  //size(3840,2160);
  stroke(255);
  noFill();
  noCursor();
  xRes = width/rectSize;
  yRes = height/rectSize;
  float noiseScale = 0.04;
  
  background(0);
  for (float x = 0; x < xRes; x+=1) {
    for (float y = 0; y < yRes; y+=1) {
      pushMatrix();
      translate(x*rectSize,y*rectSize);
      rotate(noise(x*noiseScale,y*noiseScale)*noiseFactor);
      strokeWeight(noise(x,y)*3);
      stroke(255,noise(x*noiseScale,y*noiseScale)*255);
      line(0,0,20,0);
      popMatrix();
    }
  }
  
  //save("NoiseRotation.png");
  //noLoop();
}


void draw() {
  background(0);
  for (float x = 0; x < xRes; x+=1) {
    for (float y = 0; y < yRes; y+=1) {
      pushMatrix();
      translate(x*rectSize,y*rectSize);
      rotate(noise(x*mouseX/width,y*mouseY/height)*noiseFactor);
      strokeWeight(noise(x,y)*3);
      stroke(255,noise(x,y)*255);
      line(0,0,20,0);
      popMatrix();
    }
  }
}
