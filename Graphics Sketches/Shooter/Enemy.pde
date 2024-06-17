abstract class Enemy {
  PVector pos;
  PVector vel;
  int w, h;
  
  abstract void move();
  abstract void show();
}
