class Rocket extends Object {
  //protected float angle;
  protected int rWidth;
  protected int rHeight;
  protected float lX, lY, rX, rY;

  
  
  Rocket(float pX, float pY) {
    this.posX = pX;
    this.posY = pY;
    this.velX = 0f;
    this.velY = 0f;
    this.rWidth = 20;
    this.rHeight = 60;
  }
  
  public float GetPosX() {return this.posX;}
  public float GetPosY() {return this.posY;}
  public float GetVelX() {return this.velY;}
  public float GetVelY() {return this.velY;}
  //public float GetAngle(){return this.angle;}
  public int  GetWidth() {return this.rWidth;}
  public int GetHeight() {return this.rHeight;}
  public float GetLeftEdgeX()  {return this.lX;}
  public float GetLeftEdgeY()  {return this.lY;}
  public float GetRightEdgeX() {return this.rX;}
  public float GetRightEdgeY() {return this.rY;}
  
  public void AddForce(float vX,float vY) { this.velX += vX; this.velY += vY;}
  public void AddResistance() {this.velX *= 0.92f;this.velY *= 0.92f;}
  
  public float calcAimAngle(int x, int y) {
    return atan(sqrt(pow(this.posX-x,2))/sqrt(pow(this.posY-y,2)));
  }
  //public void RotateToAngle(int angle) {}
  
  public void CalculateBody() {
    this.lX = this.posX - (float)this.rWidth/2f; // + velX;
    this.rX = this.posX + (float)this.rWidth/2f; // + velX;
    this.lY = this.posY - (float)this.rHeight/2f; //+ velY;
    this.rY = this.posY - (float)this.rHeight/2f; //+ velY;
  }
  
  public void MoveToObject(int x, int y) {
    if (this.posX-(float)x > 0) { this.velX = -8;
    } else { this.velX = 8;}
    if (this.posY-(float)y > 0) { this.velY = -8;
    } else { this.velY = 8;}
  }
  
  public void move() {
    if (this.posX > width-this.rWidth/2 && this.velX > 0) {
      this.velX = -this.velX*0.999f;
      this.posX -= 1;
    } else if (this.posX < this.rWidth/2 && this.velX < 0) {
      this.velX = -this.velX*0.999f;
      this.posX += 1;
    } else {
      this.posX += this.velX * frameRate/60f;
    }
    
    if (this.posY > height-this.rWidth/2 && this.velY > 0) {
      this.velY = -this.velY*0.999f;
      this.posX -= 1;
    } else if (this.posY < this.rWidth/2 && this.velY < 0) {
      this.velY = -this.velY*0.999f;
      this.posX += 1;
    } else {
      this.posY += this.velY * frameRate/60f;
    }
  }
  
  
  
  
  public void work(int x,int y) {
    //this.angle = calcAimAngle(x,y);
    
    this.AddResistance();
 
    //this.RotateToAngle(this.angle);
    this.MoveToObject(x,y);
    this.posX += this.velX * frameRate/60f;
    this.posY += this.velY * frameRate/60f;
    this.CalculateBody();
  }
  
  public setGrafics() {
    noStroke();fill(255,0,0);
  }
  
  public void render() {
    setGrafics();
    triangle(this.posX,this.posY,this.lX,this.lY,this.rX,this.rY);
  }
}
