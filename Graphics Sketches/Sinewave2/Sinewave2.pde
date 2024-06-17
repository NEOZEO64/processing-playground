float lineCount;
float lineWidth;
float lineMargin;
float centerX, centerY;
float t = 0;
float leftBorder;
float upBorder;
float funcFactor;

float myFunc(float x) {
  return sin(x);
}

void setup() {
  fullScreen();
  noCursor();
  colorMode(HSB);
  
  strokeWeight(4);
  stroke(0,0,150);
  
  centerX = width/2;
  centerY = height/2;
  lineCount = 40;
  lineWidth = width * 0.5;
  lineMargin = lineWidth/lineCount;
  leftBorder = centerX - lineWidth/2;
  upBorder = centerY - lineWidth/2;
  funcFactor = height/4; //height*0.2;
}


void draw() {
  t+=0.01;
  background(0,0,20);
  
  for (float i = 0; i < lineCount; i++) {
    
    float tempX = leftBorder + i* lineMargin;
    float tempY = upBorder + i * lineMargin; 
    float tempI = PI*i/lineCount +t;
    //float tempColorAng = (3*(i/lineCount+t)*360/PI)%360;
    //stroke(tempColorAng,255,255);
    line(tempX, centerY-funcFactor*myFunc(tempI), tempX, centerY+funcFactor*myFunc(tempI));
    //line(centerX-funcFactor*myFunc(tempI), tempY , centerX+funcFactor*myFunc(tempI), tempY);
  }
  
}
