color colors[] = {  
  #639cd9,
  #5454c5,
  //#342056,
  #5454c5,
  #639cd9
  //#220e24,
};

/*
color colors[] = {
  #98d8ff,
  #796dce,
  #694b7c,
  #402a30
};
*/


/*
color colors[] = {
  #9effa9,
  #36485e,
  #333146,
  #29252c
};
*/

void setup() {
  fullScreen(P3D);
  //size(3840,2160, P3D);
  noCursor();
  noLoop();
  background(0);
  noStroke();
  noFill();
  int i;
  float goldCutLeft = 0.618;
  float goldCutRight = 1-goldCutLeft;
  
  //lights();
  int alpha = 30;
  int strokeAlpha = 200;
  strokeWeight(4);
  //smooth();
  pushMatrix();
  translate(0,0,-800);
  //rotateY(0.3);
  
  
  for (float tranZ = -1000; tranZ < 0; tranZ += 100) {
    pushMatrix();
    translate(0,0,tranZ);
    
    i = 3;
    stroke(colors[i],strokeAlpha);
    fill(colors[i],alpha);
    rect(0,                  0,                    width*goldCutLeft,  height*goldCutLeft);
    
    i = 2;
    stroke(colors[i],strokeAlpha);
    fill(colors[i],alpha);
    rect(width*goldCutLeft,  0,                    width*goldCutRight, height*goldCutLeft);
    
    i = 1;
    stroke(colors[i],strokeAlpha);
    fill(colors[i],alpha);
    rect(0,                  height*goldCutLeft,   width*goldCutLeft,  height*goldCutRight);
    
    i = 0;
    stroke(colors[i],strokeAlpha);
    fill(colors[i],alpha);
    rect(width*goldCutLeft,  height*goldCutLeft,   width*goldCutRight, height*goldCutRight);
    
    popMatrix();
  }
  popMatrix();
  
  
  save("GoldCut1.png");
}
