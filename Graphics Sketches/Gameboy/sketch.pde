void setup() {
  fullScreen();
  textSize(60);
  noStroke();
  
  
  
}

void draw() {
  background(200,200,200);
  fill(0,0,255);
  rect(40,40,width-80,height*0.4);
  fill(255,255,255);
  text("No Signal",width-380,height*0.38);
  
  fill(80,80,80);
  text("GameBoy",width/2-140,height*0.45);
  
  
  ellipse(width*0.84,height*0.6,200,200);
  ellipse(width*0.66,height*0.68,200,200);
  
  fill(180,180,180);
  
  ellipse(width*0.25,height*0.62,430,430);
 
  
  
  
  
}