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
  //fullScreen(P3D);
  size(3840,2160, P3D);
  noCursor();
  noLoop();
  background(0);
  noStroke();
  noFill();
  int i;
  float goldCutLeft = 0.618;
  float goldCutRight = 1-goldCutLeft;
  
  int alpha = 30;
  int strokeAlpha = 200;
  strokeWeight(4);
  //smooth();
  
  
  for (float tranZ = -1000; tranZ < 0; tranZ += 100) {
    //fill(colors[3],alpha);
    stroke(colors[3],strokeAlpha);
    pushMatrix();
    rotate(tranZ/1000);
    rect(0,0,width,height);
    popMatrix();
    
    //fill(colors[1],alpha);
    stroke(colors[1],strokeAlpha);
    pushMatrix();
    translate(width,height);
    rotate((-1000-tranZ)/1000);
    rect(-width,-height,width,height);
    popMatrix();
    
    
    
  }
  
  
  save("GoldCut3.png");
}
