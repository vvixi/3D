// 3D Cube Lotus in P4 by vvixi
float t;
int c, sz = 60, count = 100;

void setup() {
  surface.setTitle("Cube Lotus");
  noCursor();
  colorMode(RGB);
  size(600, 600, OPENGL);
}

void draw() {

  background(0);
  drawShape();
  t+=.005;
  c++;
  if (c > 255) {
    c = 0;
  }
}
public void drawShape() {
  
  for (int i = 0; i < count; i++) {

    pushMatrix();
    translate(width/2, height/2);
    fill(c, 0, 200, 4);
    noStroke();
    rotateZ(-t-i%count);
    box(sz+i*6);
    popMatrix();
  }
}
  
