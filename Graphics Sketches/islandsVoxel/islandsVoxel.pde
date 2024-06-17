float recSize = 20;
float t = 0;
int b = 5; // border

int numX = 100;
int numY = 200;

//ArrayList<ArrayList<float>> vals = new ArrayList<ArrayList<float>>();

float[][] vals;

void move(float speed) {
  t += speed;
  for (int y = numY-1; y >= 1; y -= 1) {
    vals[y] = vals[y-1].clone();
  }
  
  for (int x = 0; x < numX; x+= 1) {
    vals[0][x] = noise(float(x)/numX, 0+t);
  }
}

void initVals() {
  vals = new float[numY][numX];
  
  for (int y = 0; y < numY; y++) {
    for (int x = 0; x < numX; x++) {
      vals[y][x] = noise(float(x)/numX, float(y)/numY+t);
    }
  }
}

void setup() {
  fullScreen(P3D);
  colorMode(HSB);
  noCursor();
  noStroke();
  noiseDetail(10);
  initVals();
  
}


void draw() {
  background(140,50,165);
  lights();
  
  float camy = recSize*max(noise(0.4, 0.85 - t),0.55)*100;
  translate(0,recSize*20+camy,-110*recSize);
  rotateX(0.45*PI);
  
  move(0.1 * (width-mouseX)/width);
  
  for (int x = 0; x < numX; x += 1) {
    for (int y = 0; y < numY; y += 1) {
      float n = vals[y][x];
      
      if (0 <= n && n < 0.55) {
        fill(164,255,50+n*200);
        n = 0.545;
      } else if (0.55 <= n && n < 0.6) {
        fill(40,255,255-250.0*(1-n));
      } else if (n >= 0.6) {
        fill(100,255,250-250.0*n);
        
      }
      
      pushMatrix();
      translate(x*recSize,((float)y)*recSize,int(n*100)*recSize);
      scale(1,1,20);
      box((int)recSize);
      popMatrix();
    }
  }
  
  
}
