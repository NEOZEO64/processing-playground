void setup() {
  size(200,250);
  fill(255);
  noStroke();
  background(0);

  //Whole body
  PVector frontTopLeft = new PVector(91,250);
  PVector frontTopRight = new PVector(109,250);
  PVector bodyTopLeft = new PVector(85,200);
  PVector bodyTopRight = new PVector(115,200);
  PVector bodyBottomLeft = new PVector(90,10);
  PVector bodyBottomRight = new PVector(110,10);
  PVector heckLeft = new PVector(96,0);
  PVector heckRight = new PVector(104,0);
  
  //Left wing
  PVector leftWingStartTop = new PVector(90,140);
  PVector leftWingStartBottom = new PVector(90,108);
  PVector leftWingEndTop = new PVector(0,80);
  PVector leftWingEndBottom = new PVector(2,68);
  
  //Right wing
  PVector rightWingStartTop = new PVector(110,140);
  PVector rightWingStartBottom = new PVector(110,108);
  PVector rightWingEndTop = new PVector(200,80);
  PVector rightWingEndBottom = new PVector(198,68);
  
  //Left back wing
  PVector leftBackWingStartTop = new PVector(90,30);
  PVector leftBackWingStartBottom = new PVector(90,12);
  PVector leftBackWingEndTop = new PVector(68,6);
  PVector leftBackWingEndBottom = new PVector(70,0);
  
  //Right back wing
  PVector rightBackWingStartTop = new PVector(110,30);
  PVector rightBackWingStartBottom = new PVector(110,12);
  PVector rightBackWingEndTop = new PVector(132,6);
  PVector rightBackWingEndBottom = new PVector(130,0);
  
  quad( //tip
    frontTopLeft.x,frontTopLeft.y,
    frontTopRight.x,frontTopRight.y,
    bodyTopRight.x,bodyTopRight.y,
    bodyTopLeft.x,bodyTopLeft.y);
  quad( //body
    bodyTopRight.x,bodyTopRight.y,
    bodyTopLeft.x,bodyTopLeft.y,
    bodyBottomLeft.x,bodyBottomLeft.y,
    bodyBottomRight.x,bodyBottomRight.y);
  quad( //bottom
    bodyBottomLeft.x,bodyBottomLeft.y,
    bodyBottomRight.x,bodyBottomRight.y,
    heckRight.x,heckRight.y,
    heckLeft.x,heckLeft.y);
  quad( //left wing
    leftWingStartTop.x,leftWingStartTop.y,
    leftWingStartBottom.x,leftWingStartBottom.y,
    leftWingEndBottom.x,leftWingEndBottom.y,
    leftWingEndTop.x,leftWingEndTop.y);
  quad( //right wing
    rightWingStartTop.x,rightWingStartTop.y,
    rightWingStartBottom.x,rightWingStartBottom.y,
    rightWingEndBottom.x,rightWingEndBottom.y,
    rightWingEndTop.x,rightWingEndTop.y);
  quad( //left back wing
    leftBackWingStartTop.x,leftBackWingStartTop.y,
    leftBackWingStartBottom.x,leftBackWingStartBottom.y,
    leftBackWingEndBottom.x,leftBackWingEndBottom.y,
    leftBackWingEndTop.x,leftBackWingEndTop.y);
  quad( //right back wing
    rightBackWingStartTop.x,rightBackWingStartTop.y,
    rightBackWingStartBottom.x,rightBackWingStartBottom.y,
    rightBackWingEndBottom.x,rightBackWingEndBottom.y,
    rightBackWingEndTop.x,rightBackWingEndTop.y);
 
  noLoop();
}
