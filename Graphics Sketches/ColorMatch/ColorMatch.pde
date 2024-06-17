float getX(float r, float phi) {return r * cos(phi);}
float getY(float r, float phi) {return r * sin(phi);}

void setup() {

  fullScreen(P2D);
  //PImage i = createImage(1920, 1800, ARGB);
  PGraphics g = createGraphics(8000, 6000, P2D);
  g.beginDraw();
  
  //g.background(0);
  g.colorMode(HSB);
  g.smooth();
  
  
  float c = 0;
  
  float c2 = 120;
  
  
  g.stroke(255);
  g.strokeWeight(2);
  float rad = g.height*0.4;
  g.translate(g.width/2, g.height/2);

  for (float phi = 0; phi < 360; phi += 1) {
    
    c += 0.1;
    c2 += 0.1;
    
    g.pushMatrix();
    g.translate(-rad*0.3,0);
    g.stroke(c%255, 255, 255);
    g.line(0,0,getX(rad, phi), getY(rad, phi));
    g.popMatrix();
    
    g.pushMatrix();
    g.translate(rad*0.3,0);
    g.stroke(c2%255, 255, 255);
    g.line(0,0,getX(rad, phi), getY(rad, phi));
    g.popMatrix();
  }
  g.endDraw();
  image(g, 0, 0);
  g.save("out.png");
  //newImage.save("NewImage.png");
  noLoop();

}
