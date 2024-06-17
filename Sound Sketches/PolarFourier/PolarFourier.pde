int lineCount;
float lineWidth;
float lineMargin;
float centerX, centerY;
float t = 0;
float leftBorder;
float funcFactor;

import processing.sound.*;

AudioIn input;
FFT fft;
float factor = 1000;
float[] spectrum; 

float getFx(float t, int id) {return t * width;}

float getFy(float t, int id) {return height/2 + 200 + id * 20 - t * width * 0.3 * log(id);}


class Stripe {
  float t;
  int id;
  float nextT;
  float len = 0.01;
  float speed;
  Stripe(float t, int id, float speed) {
    this.t = t;
    this.id = id;
    this.nextT = t + len; 
    this.speed = speed;
  }
  void move() {t += speed; nextT += speed;}
  void show() {
    stroke(30,255,255);
    noFill();
    strokeWeight(20);
    strokeCap(ROUND); //SQUARE);
    line(
      getFx(this.t,this.id),
      getFy(this.t, this.id),
      getFx(this.nextT, this.id),
      getFy(this.nextT, this.id)
      );
  }
  boolean done() {return -0.1 > this.t || this.t > 1.1;}
}

ArrayList<Stripe> stripes;

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
  fft = new FFT(this, (int)lineCount);
  fft.input(input);
  spectrum = new float[lineCount];
  stripes = new ArrayList<Stripe>();
}

void draw() {
  fft.analyze(spectrum);
  float lowVol = spectrum[2]*600;
  float highVol = spectrum[10]*4000;
  
  
  if (lowVol > 100) {
    int id = (int)random(0,10);
    stripes.add(new Stripe(0f, id, 0.001 * (id+1)));
  }
  
  for (int i = stripes.size() - 1; i >= 0; i --) {
    stripes.get(i).move();
    if (stripes.get(i).done()) {
      stripes.remove(i);
    }
  }
  
  //show 
  float detail = 0.2;
  if (lowVol > 20) {
    for (float x = 0; x < 1; x += detail ) {
      noStroke();
      fill(100 + x * 80, 60, 100);
      rect(x * width, 0, detail  * width, height);
    }
  }
  
  
  stroke(0);
  noFill();
  strokeWeight(1);
  for (int i = 0; i < 10; i++) {
    line(getFx(0,i),getFy(0,i),getFx(1,i),getFy(1,i));
  }
  
  for (int i = 0; i < stripes.size(); i ++) {
    stripes.get(i).show();
  }
  
  
  noStroke();
  fill(200,200,highVol);
  triangle(width/2-800,0, width/2-500, 500, width/2-200, 0);
}
