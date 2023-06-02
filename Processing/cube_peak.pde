// 3D shapes in P4 by vvixi
float t;
int c, sz = 60, count = 100;

void setup() {
  surface.setTitle("Cube Peak");
  noCursor();
  colorMode(RGB);
  size(600, 600, OPENGL);
}

void draw() {
  
  t+=.005;
  c++;
  background(0);
  drawShape();
}

public void drawShape() {
  
  for (int i = 0; i < count; i++) {
    
    pushMatrix();
    translate(width/2, height/2);
    fill(0, c, 200, 12);
    rotateX(radians(90));
    rotateZ(-t-i%count);
    box(sz+i*6);
    popMatrix();
    if (c > 255) {
      c = 0;
    }
  }
}
