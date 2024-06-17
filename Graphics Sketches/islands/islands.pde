float recSize = 20;
float t = 0;
int b = 5; // border

float numX, numY;

void setup() {
  fullScreen(P3D);
  colorMode(HSB);
  noCursor();
  noStroke();
  noiseDetail(10);
  
  numY = int(height / recSize) + 2*b + 100;
  numX = int(width / recSize) + 2*b;
}

void draw() {
  background(140,50,165);
  lights();
  
  float camy = 40*recSize*max(noise(0.4, 0.85 - t),0.55);
  translate(0,300+camy,-2200);
  rotateX(0.45*PI);
  
 

  t += 0.1 * (width-mouseX)/width;
  for (int x = -b; x < numX-b; x += 1) {
    for (int y = -b; y < numY-b; y += 1) {
      float n;
      //if (int(float(x)*10/numX)/10.0 == 0.4 && int(y*10/numY)/10.0 == 0.8) {
      //  n = 1;
      //} else {
      //  n = noise(float(x)/numX,float(y)/numY - t);
      //}
      n = noise(float(x)/numX,float(y)/numY - t);
      
      
      
      if (0 <= n && n < 0.55) {
        fill(164,255,50+n*200);
        n = 0.55;
      } else if (0.55 <= n && n < 0.6) {
        fill(40,255,255-250.0*(1-n));
      } else if (n >= 0.6) {
        fill(100,255,250-250.0*n);
        
      }
      
      pushMatrix();
      translate(x*recSize,((float)y+(t*numY)%1)*recSize,n*recSize*40);
      scale(1,1,20);
      box((int)recSize);
      popMatrix();
    }
  }
  
  
}
