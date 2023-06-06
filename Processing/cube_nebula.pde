// 3D Cube Nebula in P4 by vvixi
float t;
int c, count = 100;

void setup() {
  
  surface.setTitle("Cube Nebula");
  noCursor();
  colorMode(RGB);
  size(600, 600, OPENGL);
}

void draw() {
  
  background(0);
  for (int i = 0; i < count; i++) {
    pushMatrix();
    translate(width/2, height/2);
    stroke(c, 0, 255-c, 60);
    noFill();
    rotateY(sin(t) / 2);
    rotateZ(t - i % count / 10 - i * 15);
    box(i * 6);
    popMatrix();
    c+=i*0.25;
  }

  t+=.005;
  if (c > 255) {
    c = 0;
  }
}
