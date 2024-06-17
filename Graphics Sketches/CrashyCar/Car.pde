class Car {
  int line;
  int x, y;
  int cwidth, cheight;
  int numberOfLines;
  int lineWidth;
  int aimLine;
  int aimLineX;
  
  Car(int numberOfLines, int lineWidth, int y) {
    line = numberOfLines/2;
    x = lineWidth*(line+1+1/2);
    cwidth = int((float)lineWidth*0.65f);
    cheight = int((float)cwidth*1.5f);
    this.y=y;
    this.numberOfLines = numberOfLines;
    this.lineWidth = lineWidth;
    aimLine=line;
  }
  
  void move(int steps) {
    if ((steps>0&&line<numberOfLines-1)||(steps<0&&line>0)) {
      aimLine += steps;
      aimLineX=lineWidth*(aimLine+1+1/2);
    }
  }
  
  void act() {
    if (x<aimLineX-2 && x>aimLineX+2) {
      x+=(aimLineX-x)/2;
    } else {line = aimLine;}
  }
  
  void show() {
    rectMode(CENTER);
    fill(255,0,0);
    rect(x,y,cwidth,cheight);
  }
}