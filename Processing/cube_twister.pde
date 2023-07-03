// 3D Generative design in P4 by vvixi
int posX, posY, col;
float delta;

void setup() {

  size(600, 600, OPENGL);
  colorMode(HSB);
  noCursor();
  frameRate(16);
  posX = width/2;
  posY = height/2;
  noFill();
}

void draw() {
  background(0);
  for (int i = 0; i < 11; i++) {
  
    stroke(255);
    drawShape(i, 0);
  }
}

void drawShape(int i, int j) {
  
  col++;
  if (col > 220) {
    col = 0;
  }
  fill(col, 300, 300, 360);
  
  pushMatrix();
  delta += 0.00011;
  translate(i * 100, height/2);
  rotateX(delta + i * 10);
  box(10 * i);
  popMatrix();
  
  pushMatrix();
  delta += 0.011;
  translate(width - i * 100, height/2);
  rotateX(-delta - i * 10);
  box(10 * i);
  popMatrix();
  
}
