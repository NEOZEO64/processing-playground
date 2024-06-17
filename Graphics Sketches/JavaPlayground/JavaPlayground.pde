int strokeColor = 0;
int fillColor = 100;
int backgroundColor = 0;
int playerSize = 20;

Player player;
boolean keys[];
Dot[] dots = new Dot[128];

void setup() {
  fullScreen();
  stroke(strokeColor);
  fill(fillColor);
  noCursor();
  player = new Player((float)width/2,(float)height*0.8f,playerSize,strokeColor,fillColor,backgroundColor);
  for (int i = 0;i<dots.length;i++) {
    dots[i] = new Dot((int)player.getX(),(int)player.getY(),playerSize/(i+1),strokeColor,fillColor,backgroundColor);
  }
}
  
 

void draw() {
  player.be();
  
  for (int i = 0;i<dots.length;i++) {
    dots[i].be(i,(int)player.getX(),(int)player.getY());
  }
  
  
  render();
}

void render() {
  background(backgroundColor);
  player.render();
  for (int i = 0;i<dots.length;i++) {
    dots[i].render();
  }

}
