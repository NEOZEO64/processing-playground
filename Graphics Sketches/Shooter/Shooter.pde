PVector pos;
ArrayList<PVector> projectiles;
ArrayList<PVector> enemys;
int score = 0;

int r = 100;
int pr = 5; //projectileradius
int ew = 30; //enemywidth
int eh = 40; //enemyheight
int pw = 20;
int ph = 30;
int scene = 1;
//1: Fight
//2: Game Over, explode

int ps = 12; //projectile speed
int es = 2; //enemy speed

void setup() {
  size(600, 800);
  fill(255);
  noStroke();
  rectMode(CENTER);
  pos = new PVector(width/2, height/2);
  projectiles = new ArrayList<PVector>();
  enemys = new ArrayList<PVector>();
  frameRate(60);
}


void draw() {
  if (scene == 1) {
  //##########################################################//
    pos.set(mouseX, mouseY);
 
    //Add new enemys
    if (int(random(r)) == 0) {
      enemys.add(new PVector(random(width), -40));
    }

     
    background(0);
    rect(pos.x, pos.y, 20, 30);
    text("Score:"+score,20,20);
  
    for (PVector e : enemys) {
      e.y+=es; //move
      rect(e.x, e.y, ew, eh); //show
    }
    
    //move and show projectiles
    for (PVector p : projectiles) {
      p.y-=ps;
      ellipse(p.x, p.y, pr*2, pr*2);
    }
  
    for (int j = enemys.size() -1; j>=0; j--) {
        PVector e = enemys.get(j);
  
        if (pos.x + pw/2 > e.x - eh/2 && pos.y + ph/2 > e.y - eh/2 && pos.x - pw/2 < e.x + ew/2 && pos.y - ph/2 < e.y + eh/2) {
          enemys.remove(j);
          r-=3;
          score +=1;
        }
      }
  
    for (int i = projectiles.size() - 1; i >= 0; i--) {
      PVector p = projectiles.get(i);
      if (p.y<0) {
        projectiles.remove(i);
      }
  
      for (int j = enemys.size() -1; j>=0; j--) {
        PVector e = enemys.get(j);
  
        if (p.x + pr > e.x - eh/2 && p.y + pr > e.y - eh/2 && p.x - pr < e.x + ew/2 && p.y - pr < e.y + eh/2) {
          projectiles.remove(i);
          enemys.remove(j);
          if(r>20) {r-=1;}
          score +=1;
          continue;
        }
      }
    }
    
    text("Use mouse to move, press space to shoot",width/2,height-20);
  //##########################################################//
  } else if (scene == 2) {
  //##########################################################//
    if (int(random(r)) == 0) {
      enemys.add(new PVector(random(width), -40));
    }
  
    for (PVector p : projectiles) {
      p.y-=12;
      ellipse(p.x, p.y, pr*2, pr*2);
    }
  
    background(0);
    text("Score:"+score,20,20);
    rect(pos.x, pos.y, 20, 30);
   
   
    for (PVector e : enemys) {
      e.y+=2;
      rect(e.x, e.y, ew, eh);
    }
  
    for (int j = enemys.size() -1; j>=0; j--) {
        PVector e = enemys.get(j);
  
        if (pos.x + pw/2 > e.x - eh/2 && pos.y + ph/2 > e.y - eh/2 && pos.x - pw/2 < e.x + ew/2 && pos.y - ph/2 < e.y + eh/2) {
          enemys.remove(j);
          r-=3;
          score += 1;
        }
      }
  
    for (int i = projectiles.size() - 1; i >= 0; i--) {
      PVector p = projectiles.get(i);
      if (p.y<0) {
        projectiles.remove(i);
      }
  
      for (int j = enemys.size() -1; j>=0; j--) {
        PVector e = enemys.get(j);
  
        if (p.x + pr > e.x - eh/2 && p.y + pr > e.y - eh/2 && p.x - pr < e.x + ew/2 && p.y - pr < e.y + eh/2) {
          projectiles.remove(i);
          enemys.remove(j);
          continue;
        }
      }
    }
  }
  //##########################################################//
}

void keyReleased() {
  if(scene ==1) {
    if (key==' ') {projectiles.add(new PVector(pos.x, pos.y));}
  }
}
