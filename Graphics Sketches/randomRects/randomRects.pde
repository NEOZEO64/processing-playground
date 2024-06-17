float rectSize = 30;
float noiseFactor = rectSize/2;

float xRes, yRes;

float t =0;

void setup() {
  fullScreen();
  //size(3840,2160);
  stroke(255);
  noFill();
  noCursor();
  
  xRes = width/rectSize;
  yRes = height/rectSize;
  //save("randomRects.png");
  //noLoop();
  colorMode(HSB);
}


void draw() {
  background(0);
  for (float x = 0; x < xRes; x+=1) {
    for (float y = 0; y < yRes; y+=1) {
      stroke(128 + 128*noise(t + x, t +y ), 255, 255);
      strokeWeight(2-noise(x+t,y+t)*2);
      rect(
        x*rectSize + noise(x+t,y+t)*noiseFactor,
        y*rectSize + noise(x+t,y+t)*noiseFactor,
        rectSize - noise(x+t,y+t)*noiseFactor*2,
        rectSize - noise(x+t,y+t)*noiseFactor*2
        );
    }
  }
  t += 0.01;
}
