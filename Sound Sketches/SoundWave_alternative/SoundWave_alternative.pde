import processing.sound.*;

Waveform waveform;
AudioIn micIn;

int samplesLen = 1000;
int speed = 60; //the lower the faster
int waveCount = 50;

long timer = 0;
float[][] samples;


void setup() {
  //size(300, 800, P3D);
  fullScreen(P3D);
  
  micIn = new AudioIn(this, 0);
  micIn.start();
  waveform = new Waveform(this, samplesLen);
  waveform.input(micIn);
  samples = new float[waveCount][samplesLen];
  timer = millis();
  
  background(0);
  stroke(255);
  strokeWeight(1);
  fill(0,0,0);
  noCursor();
}

void draw() {
  background(0);
  lights();
  waveform.analyze();
  
  if (millis()-timer>speed) {
    timer = millis();
    for (int i = waveCount-1; i >=1; i--) {
      samples[i] = samples[i-1].clone();
    }
  }
  samples[0] = waveform.data.clone(); 
  
  
  pushMatrix();
  translate(width*(-0.3),400,-200);
  for (int j = 0; j<waveCount; j++) {
    translate(0,0,-j*10);
    beginShape();
    vertex(0,800);
    stroke(255);
    for(int i = 0; i < samplesLen; i++) {
      float x = map(i, 0, samplesLen, 0, width*1.6);
      float y = map(samples[j][i]*(1.0-j/waveCount)*sin((float)i*PI/samplesLen), -1, 1, 0, height*2)-height/2; //*sin((float)i*PI/samplesLen)
      vertex(x,y);
    }
    vertex(width*1.6,800);
    endShape();
  }
  popMatrix();
  
}
