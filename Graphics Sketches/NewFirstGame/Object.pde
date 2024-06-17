abstract class Object {
  protected float posX, posY;
  protected float velX= 0f; protected float velY = 0f;
  protected int oWidth, oHeight;
  protected float resistance = 1f;
  protected float mass = 1f;

  public float GetX() {return this.posX;} public float GetY() {return this.posY;}
  public float GetVelX() {return this.velY;} public float GetVelY() {return this.velY;}
  
  public void SetPosX(int x) {this.posX =  x;} public void SetPosY(int y) {this.posY = y;}
  public void AddPosX(int x) {this.posX += x;} public void AddPosY(int y) {this.posY += y;}  
  
  public void SetVelX(float vX) {this.velX  = vX;} public void SetVelY(float vY) {this.velY = vY;}
  public void AddVelX(float vX) {this.velX += vX;} public void AddVelY(float vY) {this.velY += vY;}
  
  public void SetResistance(float res) {this.resistance = res;}
  
  public void AddResistance() {this.velX *= this.resistance; this.velY *= resistance;}
  public void SetMass(float m) {this.mass = m;}
  
  public void move() {
    if (this.posX > width-this.oWidth/2 && this.velX > 0) {this.velX = -this.velX*0.9f; this.posX -= 1;} 
    else if (this.posX < this.oWidth/2 && this.velX < 0)  {this.velX = -this.velX*0.9f;this.posX += 1;} 
    else {this.posX += this.velX * frameRate/fps;}
    
    if (this.posY > height-this.oHeight/2 && this.velY > 0) {this.velY = -this.velY*0.9f; this.posX -= 1;}
    else if (this.posY < this.oHeight/2 && this.velY < 0)   {this.velY = -this.velY*0.9f; this.posX += 1;} 
    else {this.posY += this.velY * frameRate/fps;}
  }
  
  public void setGrafics() {stroke(255); fill(0);}
  
  public void render() {
    setGrafics();
    ellipse((int)this.posX,(int)this.posY,this.oWidth,this.oHeight); 
  }
  
  
  abstract void work();
  
  
  Object(float m, float res) {
    mass = m;
    resistance = res;
  
  }

}
