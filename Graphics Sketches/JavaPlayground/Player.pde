class Player {
  int s;
  float x,y;
  int strokeColor,fillColor;
  boolean stroke;
  protected int getSize() {return this.s;}
  protected float getX() {return this.x;}
  protected float getY() {return this.y;}
  
  Player(float x,float y,int size,int s,int f,int b) {
    this.x = x;
    this.y = y;
    if (s == b) {
      noStroke();
      stroke = false;
    } else {
      this.strokeColor = s;
      stroke = true;
    }
    this.fillColor = f;
    this.s = size;
    strokeColor = s;
    fillColor = f;
  }
  
 
  void be() {
    this.x = mouseX;
    this.y = mouseY;
  }
  void render() {
    if (stroke == true) {stroke(this.strokeColor);}
    fill(this.fillColor);
    ellipse(this.x,this.y,this.s,this.s);
  }


}
