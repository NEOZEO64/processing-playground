
void setup(){
  
  size(2000,2000,P3D);
  
  float fontSize = height*0.09;
  
  PFont font = createFont("DejaVu Sans Mono Bold for Powerline.ttf",fontSize);
  textFont(font);
  textAlign(CENTER,CENTER);
  textLeading(fontSize*1.1);
  float cX, cY;
  float boxSize = width*0.06;
  float rotToX=width*0.2;
  float rotToY=height*0.2;
  fill(200,100);
  stroke(255,20);
  strokeWeight(2);
  cX = width/2;
  cY = height/2;
  
  background(0);
  lights();
  pushMatrix();
  translate(cX,cY,width*0.3);
  for    (float x = -20; x < 20; x+=1) {
    for  (float y = -20; y < 20; y+=1) {
      for(float z = 0; z < 1; z+=1) {
        pushMatrix();
        fill(200,50);
        
        //rotateX((float)(height/2-mouseY)*6/(float)width);
        //rotateY((float)(mouseX-width/2)*6/(float)width);
        translate(x*boxSize,y*boxSize,z*boxSize);
        rotateX((float)(height/2-rotToY)*6/(float)width);
        rotateY((float)(rotToX-width/2)*6/(float)width);
        box(boxSize-10);
        popMatrix();
      }
    }
  }
  popMatrix();
  //background(0);
  translate(width/2,height/2,800);
  fill(180,180);
  text("Alpha\nMonolyth",0,0);
  
  save("transparentCubez.png");
  
  noLoop();
}
