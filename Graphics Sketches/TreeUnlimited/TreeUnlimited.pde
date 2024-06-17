int x,y,w;
int counter = 1;
int l = 20;
int nX,nY;
int list[] = {0,0,0};


void setup() {
  stroke(255);
  list[0] = (int) (width/2);
  list[1] = (int) (height * 0.8);
  list[2] = -35;
  noLoop();

  drawTree(list[]);
}

int[] drawTree(int[] list) {
  

  counter += 1;
   
   
  if (counter == 10) {return list[];} 
  else {
    nX = l * cos(w+90);
    nY = l * sin(w+90);
    line(x,y,nX,nY);
    list[0] = nX; list[1] = nY;
    list[3] *= counter;
    
    drawTree(list[]);
  }
   
} 
