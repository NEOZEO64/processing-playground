boolean work;
int score;
Player player;
Rocket rocket1, rocket2;

void setup() {
  fullScreen();
  noCursor();
  frameRate(30);
  fill(0);
  stroke(255);
  work = true;
  score = 0;
  
  player = new Player(width/2, height/2);
  rocket1 = new Rocket(width/4,height/4);
  rocket2 = new Rocket(width * 0.75f,height*0.75f);
  
}


void render() {
  background(20);
  line(1,1, width-1,1);
  line(1,1, 1, height-1);
  line(width-1,height-1,width-1,1);
  line(width-1,height-1,1,height-1);
  
  rocket1.render();
  rocket2.render();
  player.render();

}


void draw() {
  player.work();
  rocket1.work((int)player.GetX(),(int)player.GetY());
  rocket2.work((int)player.GetX(),(int)player.GetY());

  render();
}




void keyPressed() {
  if      (key == 'a') {player.StartMovingBackwards();}
  else if (key == 'd') {player.StartMovingForwards(); }
  if      (key == 'w') {player.StartMovingUp();       }
  else if (key == 's') {player.StartMovingDown();     }
  if  (keyCode ==  27) {exit(); /*if ESC pressed */   }
}

void keyReleased() {
  if      (key == 'a') {player.StopMovingBackwards(); }
  else if (key == 'd') {player.StopMovingForwards();  }
  if      (key == 'w') {player.StopMovingUp();        }
  else if (key == 's') {player.StopMovingDown();      }
}
