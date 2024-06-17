float intervall = 1;
float t = intervall + 1;
int i = 0;

float[][] colors = {
  {255,  0,  0},
  {0  ,255,  0},
  {0  ,  0,255}
};

float[][] colors2 = {
  {255,255,255},
  {0  ,  0,  0}
};

void setup() {
  fullScreen();
  noCursor();
}

void draw() {
  t += 1;
  if (t>intervall) {
    t = 0;
    i += 1;
    if (i>=colors2.length) {
      i = 0;
    }
    background(colors2[i][0],colors2[i][1],colors2[i][2]);
  }
}
