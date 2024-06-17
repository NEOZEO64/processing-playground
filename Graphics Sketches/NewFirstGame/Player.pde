class Player extends Object {
  Player(float pX, float pY) {
    super(2f,0.999f);
    this.posX = pX;
    this.posY = pY;
  }
  
  
  velX = 0f; velY = 0f;
    
  protected float maxVel = 10f;
  
  
  protected byte moveX = 0; protected byte moveY = 0;  
  
  public void SetAlwaysMove(byte x, byte y) {
    if (x < 0) {this.moveX = -1;}
    else if (x > 0) {this.moveX = 1;}
    else {this.moveX = 0;}
    if (y < 0) {this.moveY = -1;}
    else if (y > 0) {this.moveY = 1;}
    else {this.moveY = 0;}
  
  public void controlMovement() {
    if(-maxVel<velX<maxVel)  {this.AddVelX(2f*this.moveX);}}
    if(-maxVel<velX<maxVel) {this.AddVelY(2f*this.moveY);}}
  }
  
  public void work() {
    this.controlMovement();
    this.AddResistance();
    this.move();
  }
}
