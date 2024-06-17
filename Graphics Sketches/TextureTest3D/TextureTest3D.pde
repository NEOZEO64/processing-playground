PShape s;

void setup() {
  fullScreen(P3D);
  // The file "bot.obj" must be in the data folder
  // of the current sketch to load successfully
  s = loadShape("Spaceship3.obj");
}

void draw() {
  background(100);
  ambientLight(102, 102, 102);
  directionalLight(206, 206, 206, 0, -0.2, 1);
  translate(width/2, height/2,-300);
  rotateX(-0.3);
  rotateY(0.3);
  rotateZ(0.1);
  scale(100,-100,100);
  shape(s, 0, 0);
}
