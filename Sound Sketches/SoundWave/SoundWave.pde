import processing.sound.*;

Waveform waveform;
AudioIn micIn;

int samplesLen = 1000; // how many samples in one wave
int speed = 60; //the lower the faster
int waveCount = 25; // how many waves should be displayed

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
  translate(0,0,-200);
  rotateX((float)(mouseY-height/2)/(height/2));
  rotateY(-(float)(mouseX-width/2)/(width/2));
  translate(width*0.1,200,0);
  for (int j = 0; j<waveCount; j++) {
    translate(0,0,-j*20);
    beginShape();
    vertex(0,800);
    stroke(255);
    for(int i = 0; i < samplesLen; i++) {
      float x = map(i, 0, samplesLen, 0, width*0.8);
      float y = map(samples[j][i]*(1.0-j/waveCount)*sin((float)i*PI/samplesLen), -1, 1, 0, height*2)-height/2; //*sin((float)i*PI/samplesLen)
      vertex(x,y);
    }
    vertex(width*0.8,800);
    endShape();
  }
  popMatrix();
  
}
