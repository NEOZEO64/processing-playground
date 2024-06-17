class Dot {
  int posX, posY;
  float sizeX = 10;
  float sizeY = 10;

  Dot(int x, int y, int v, int h) {
    posX = x;
    posY = y;
    sizeX = h;
    sizeY = v;
    if (sizeX<10) {sizeX=10;}
    if (sizeY<10) {sizeY=10;}
    
  
  
  }
  
  void run() {
    sizeX/=1.1;
    sizeY/=1.1;
  
  }

  void show() {
    noStroke();
    fill(255,0,0);
    ellipse(posX,posY,sizeX,sizeY);
  
  }



}
