class Player {
  protected float posX;
  protected float posY;
  protected float velX;
  protected float velY;
  
  protected boolean moveForwards  = false;
  protected boolean moveBackwards = false;
  protected boolean moveUp        = false;
  protected boolean moveDown      = false;
  
  protected int pWidth;
  protected int pHeight;
  
  
  Player(float pX, float pY) {
    this.posX = pX;
    this.posY = pY;
    this.velX = 0f;
    this.velY = 0f;
    this.pWidth = 20;
    this.pHeight = 20;
  }
  
  public float GetX() {return this.posX;}
  public float GetY() {return this.posY;}
  //public float GetVelX() {return this.velY;}
  //public float GetVelY() {return this.velY;}
  
  public void AddForce(float vX,float vY) {
    this.velX += vX;
    this.velY += vY;
  }
  
  public void StartMovingForwards () {this.moveForwards  = true;} 
  public void StopMovingForwards  () {this.moveForwards  = false;} 
  public void StartMovingBackwards() {this.moveBackwards = true;} 
  public void StopMovingBackwards () {this.moveBackwards = false;}
  public void StartMovingUp       () {this.moveUp        = true;} 
  public void StartMovingDown     () {this.moveDown      = true;} 
  public void StopMovingUp        () {this.moveUp        = false;}
  public void StopMovingDown      () {this.moveDown      = false;}
  
  
  public void AddResistance() {this.velX *= 0.999f;this.velY *= 0.999f;}
  
  public void controlMovement() {
    if      (this.moveForwards)  {this.AddForce( 2f, 0f);}
    else if (this.moveBackwards) {this.AddForce(-2f, 0f);}
    if      (this.moveUp)        {this.AddForce( 0f,-2f);}
    else if (this.moveDown)      {this.AddForce( 0f, 2f);}
  }
  
  public void move() {
    if (this.posX > width-this.pWidth/2 && this.velX > 0) {
      this.velX = -this.velX*0.9f;
      this.posX -= 1;
    } else if (this.posX < this.pWidth/2 && this.velX < 0) {
      this.velX = -this.velX*0.9f;
      this.posX += 1;
    } else {
      this.posX += this.velX * frameRate/60f;
    }
    
    if (this.posY > height-this.pWidth/2 && this.velY > 0) {
      this.velY = -this.velY*0.9f;
      this.posX -= 1;
    } else if (this.posY < this.pWidth/2 && this.velY < 0) {
      this.velY = -this.velY*0.9f;
      this.posX += 1;
    } else {
      this.posY += this.velY * frameRate/60f;
    }
  }
  
  
  public void work() {
    this.controlMovement();
    this.AddResistance();
    this.move();
  }
  
  public void render() {
    noStroke();//stroke(255); 
    fill(200);
    ellipse((int)this.posX,(int)this.posY,this.pWidth,this.pHeight);
    stroke(255);
  }
}
