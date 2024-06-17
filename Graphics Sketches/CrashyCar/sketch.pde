int stripeYPos=0;
int stripeWidth=40;
int stripeHeight=stripeWidth*3;
int stripevGap = 100; //vertical gap between stripes

int numberOfLines= 3;
int speed =17;
float exactSpeed = int(speed);
int fps = 60;

int cyPos;

ArrayList <Obstacle> obs = new ArrayList(); //all obstacles in one list


int vGapObs = 1200; //vertical gap between obstacles
int topObPosY = vGapObs/2;


int lineWidth; 
int score = 0;
Car car;


String[] obForms= {
 "XOO",
 "OXO",
 "OOX",
 "XXO",
 "OXX",
 "XOX"};
int obFormNumber = 6;


void setup() {
  fullScreen();
  noStroke();
  orientation(PORTRAIT);
  frameRate(fps);
  lineWidth = width/numberOfLines;
  cyPos=int((float)height*0.86f);
  car = new Car(numberOfLines,lineWidth,cyPos);
}

void draw() {
  // move #################################
  score+=1;
  exactSpeed+=0.001f;
  speed=int(exactSpeed);
  topObPosY+=speed;
  stripeYPos+=speed; 
  int e = 0; //move each obstacle:
  while (e<obs.size()) {obs.get(e).move(speed);e++;}
  
  //let car act
  car.act();
  
  
  // add obstacles
  if (topObPosY>vGapObs) {
    topObPosY = 0;
    String form =obForms[int(random(0,obFormNumber))];
    for (int s=0; s <form.length();s++) {
      if (form.charAt(s)=='X') {
        obs.add(new Obstacle(lineWidth*s+lineWidth/2,s,lineWidth));
      }
    }
  }
  
  //tidy up #################################
  
  
  //remove obstacles if under screen
  e = 0;
  while (e<obs.size()) {
    Obstacle o = obs.get(e);
    if (o.y-o.obHeight/2 > height) {obs.remove(e);e--;}
    e++;
  }
  
  // reset stripes
  if(stripeYPos>-speed) {
    stripeYPos=-stripeHeight-stripevGap+stripeYPos;
  }
  
  
  //show #################################
  background(60);
  
  //show each obstacle
  e = 0;
  while (e<obs.size()) {obs.get(e).show();e++;}
  
  // show stripes
  rectMode(CORNER);
  for (int x=lineWidth; x<width; x+=lineWidth) {
    for (int y=stripeYPos; y<height;y+=(stripeHeight+stripevGap)) {
      fill(200); //show grey rect
      rect(x-stripeWidth/2,y,stripeWidth,stripeHeight);
      fill(0); //show little black decoration under stripes
      rect(x-stripeWidth/2,y+stripeHeight,stripeWidth,10);
    }
  }
  
  car.show();
  textSize(100);
  text(score,int(width*0.7),int(height*0.04));
}

void mousePressed() {
  if (mouseX>width/2) {car.move(1);}
  if (mouseX<width/2) {car.move(-1);}
}