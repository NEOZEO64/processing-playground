class Ball {
  PVector pos = new PVector(width/2,height/2);
  PVector vel = new PVector(2,3);
  public int r = 8;
  
  public void act() {
    pos.add(vel);
    
    if (pos.x+r>width || pos.x-r<0) {
      vel.x *= -1;
    } if (pos.y+r>height || pos.y-r<0) {
      vel.y *= -1;
    }
  }
  
  public void render() {
    ellipse(pos.x,pos.y,2*r,2*r);
  }
}