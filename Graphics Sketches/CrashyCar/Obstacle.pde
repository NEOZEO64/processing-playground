class Obstacle {
  int x,y;
  int line;
  int obWidth,obHeight;
  
  Obstacle(int x, int l, int lineWidth ) {
    this.x = x;
    
    obWidth = int((float)lineWidth*0.7f);
    obHeight = int((float)obWidth*0.5f);
    y=-obHeight;
    line = l;
  }
  
  public void move(int s) {y+=s;}
  
  public void show() {
    rectMode(CENTER);
    fill(255,255,255);
    rect(x,y,obWidth,obHeight);
  }
}