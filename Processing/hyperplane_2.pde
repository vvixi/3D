// 3d hyperplane vvixi
float t, col;
void setup() {
  surface.setTitle("Hyperplane");
  noCursor();
  frameRate(32);
  size(600, 600, OPENGL);
  colorMode(HSB, 360);
}

void draw() {
  // increment time and color
  t+=0.05;
  background(0);
  drawShape();
}

public void drawShape() {
  int sz = 100;
  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 12; j++) {
      pushMatrix();
      col+=i * .01;
      fill(col, 360, 360, 50);
      translate(width/2+i*sz, j*sz, -width/2);
      rotateZ(-t * .5);
      rotateX(t * .5);
      rotateY(-t * .5);
      //noStroke();
      rect(-800, -800, 700, 700);
      popMatrix();
    }
  }
  if (col > 360) { col = 0; }
}
