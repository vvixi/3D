// 3D Cube Star in P4 by vvixi
float t;
int c, sz = 60, count = 100;

void setup() {
  surface.setTitle("Cube Star");
  noCursor();
  frameRate(12);
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
    fill(0, 200, c, 6);
    noStroke();
    float r = random(3);
    if (r < 1) {
      rotateX(-t - i % count);
    } else if (r < 2) {
      rotateY(t + i % count);
    } else if (r < 2) {
      rotateZ(t + i % count);
    }
    box(sz + i * 3);
    popMatrix();
  }
}
  
