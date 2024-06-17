class Dot {
  protected int x,y,s;
  protected boolean l = true;
  protected int backgroundColor,fillColor,strokeColor;
  
  protected int getSize() {return this.s;}
  protected float getX() {return this.x;}
  protected float getY() {return this.y;}
  protected boolean getLife() {return this.l;}
  
  
  Dot(int x, int y,int s,int sColor,int fColor,int bColor) {
    this.x = x;
    this.y = y;
    this.s = s;
    this.backgroundColor = bColor;
    this.fillColor = fColor;
    this.strokeColor = sColor;
  }
  
  void be(int i,int pX,int pY) {
    this.x = (pX-this.x)/(i+1);
    this.y = (pY-this.y)/(i+1);
  } 
  
  void render() {
    fill(this.fillColor);
    if (this.strokeColor == this.backgroundColor) {noStroke();}
    else {stroke(this.strokeColor);}
    ellipse(this.x,this.y,this.s,this.s);
   
  }

}
