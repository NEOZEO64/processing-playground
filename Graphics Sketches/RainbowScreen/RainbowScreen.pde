int r=255;
boolean rUp = false;
int g=128;
boolean gUp = true;
int b=0;
boolean bUp = true;

int speed=4;

void setup() {
  fullScreen();
}

void draw() {
  
  if (r<1) {rUp=true;}
  else if (r>254) {rUp=false;}
  
  if (g<1) {gUp=true;}
  else if (g>254) {gUp=false;}
  
  if (b<1) {bUp=true;}
  else if (b>254) {bUp=false;}
  
  
  if (rUp) {r+=speed;} else {r-= speed;}
  if (gUp) {g+=speed;} else {g-= speed;}
  if (bUp) {b+=speed;} else {b-= speed;}
  
  background(r,g,b);

}

