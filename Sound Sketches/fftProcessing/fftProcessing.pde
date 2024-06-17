float lineCount;
float lineWidth;
float lineMargin;
float centerX, centerY;
float t = 0;
float leftBorder;
float funcFactor;

import processing.sound.*;

AudioIn input;
FFT fft;
float smoothingFactor = 0.2;
float[] sum;


float myFunc(float x) {
  return sin(x);
}

void setup() {
  fullScreen();
  noCursor();
  colorMode(HSB);
  input = new AudioIn(this, 0);
  input.start();
  strokeWeight(4);
  stroke(0,0,150);
  
  
  centerX = width/2;
  centerY = height/2;
  lineCount = 64;
  lineWidth = width * 0.7;
  lineMargin = lineWidth/lineCount;
  leftBorder = centerX - lineWidth/2;
  funcFactor = 10000; //height*0.2;
  sum = new float[(int)lineCount*2];
  
  fft = new FFT(this, (int)lineCount);
  fft.input(input);
}


void draw() {
  fft.analyze();
  background(0,0,20);
  
  for (float i = 0; i < lineCount; i++) {
    //sum[(int)i] += (fft.spectrum[(int)i] - sum[(int)i]) * smoothingFactor;
    sum[(int)i] = log(i-1)*fft.spectrum[(int)i] * smoothingFactor;
    float tempX = leftBorder + i* lineMargin;
    line(tempX, centerY-funcFactor*sum[(int)i], tempX, centerY+funcFactor*sum[(int)i]);
  }
  
}
