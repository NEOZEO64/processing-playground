float rectSize = 10;
float noiseFactor = TWO_PI;

float cX, cY;
float xRes, yRes;

void setup() {
  fullScreen();
  //size(3840,2160);
  stroke(255);
  noFill();
  noCursor();
  xRes = width/rectSize;
  yRes = height/rectSize;
  cX = 3840/2;
  cY = 2160/2;
  float noiseScale = 0.04;
  
  background(0);
  for (float x = 0; x < xRes; x+=1) {
    for (float y = 0; y < yRes; y+=1) {
      pushMatrix();
      translate(x*rectSize,y*rectSize);
      rotate(10000/(pow(x-xRes/2,2)+pow(y-yRes/2,2)-3000));
      //strokeWeight(noise(x*noiseScale,y*noiseScale)*3);
      strokeWeight(5);
      stroke(abs(100000/(pow(x-xRes/2,2)+pow(y-yRes/2,2)-3000)));
      line(0,0,20,0);
      popMatrix();
    }
  }
  
  //save("NoiseRotation2.png");
}

void draw() {
  background(0);
  /*
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
  */
  
  for (float x = 0; x < xRes; x+=1) {
    for (float y = 0; y < yRes; y+=1) {
      pushMatrix();
      translate(x*rectSize,y*rectSize);
      rotate(((float)mouseX/width) * 10000/(pow(x-xRes/2,2)+pow(y-yRes/2,2)-3000));
      //strokeWeight(noise(x*noiseScale,y*noiseScale)*3);
      strokeWeight(5);
      stroke(abs(100000/(pow(x-xRes/2,2)+pow(y-yRes/2,2)-3000)));
      line(0,0,20,0);
      popMatrix();
    }
  }
}
