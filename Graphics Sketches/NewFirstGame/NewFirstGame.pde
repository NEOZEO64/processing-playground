public int fps = 60;

public Object objects[] = 3;
objects[0] = new Player(width/2, height/2);
objects[1] = new Rocket(width/4, height/4);
objects[2] = new Rocket(width * 0.75f, height*0.75f);


void setup() {
  fullScreen();
  noCursor();
  frameRate(30);
  fill(0);
  stroke(255);
  work = true;
  score = 0;

}

void resetGrafics() {
  stroke(255);
  fill(0);

}

void renderBackground() {
  stroke(255);
  fill(0);
  background(20);
  line(1, 1, width-1, 1);
  line(1, 1, 1, height-1);
  line(width-1, height-1, width-1, 1);
  line(width-1, height-1, 1, height-1);

}


void render() {
  renderBackground();
  resetGrafics();
  
  for (int m =0 ; x<objects.length ; m++) {
    objects[m].render();
  
  }
  rocket1.render();
  rocket2.render();
  player.render();
}


void draw() {
  
  player.work();
  rocket1.work((int)player.GetX(), (int)player.GetY());
  rocket2.work((int)player.GetX(), (int)player.GetY());

  render();
}




void keyPressed() {
  if      (key == 'a') {player.StartMovingBackwards();} 
  else if (key == 'd') {player.StartMovingForwards(); }
  if      (key == 'w') {player.StartMovingUp();} 
  else if (key == 's') {player.StartMovingDown();}
  if  (keyCode ==  27) {exit(); /*if ESC pressed */}
}

void keyReleased() {
  if      (key == 'a') {player.StopMovingBackwards();}
  else if (key == 'd') {player.StopMovingForwards();}
  if      (key == 'w') {player.StopMovingUp();}
  else if (key == 's') {player.StopMovingDown();}
}
