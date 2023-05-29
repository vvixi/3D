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
  int sz = 100;
  t+=0.05;
  background(0);
  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 12; j++) {
      pushMatrix();
      col+=i * .01;
      fill(col, 360, 360, 50);
      translate(i*sz+240, j*sz, -width/2);
      rotateY(t-i/2);
      rotateX(t+j/2);
      noStroke();
      rect(-400, -400, 600, 600);
      popMatrix();
    }
  }
  if (col > 360) { col = 0; }
}
