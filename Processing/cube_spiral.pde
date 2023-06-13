// cube spiral in P4 by vvixi
float t;
int c, count = 100;

void setup() {
  surface.setTitle("Cube Spiral");
  noCursor();
  colorMode(RGB);
  size(600, 600, OPENGL);
}

void draw() {
  background(0);
  drawSpiral();
}

public void drawSpiral() {
  for (int i = 0; i < count; i++) {
    
    pushMatrix();
    translate(width/2, height/2);
    stroke(c, 0, 255-c, 60);
    noFill();

    rotateZ(t-i%count/10+i*10);
    box(i*6);
    popMatrix();
  }
  line(0100, 0, 0, 100, 0, 0);
  line(0, -100, 0, 0, 100, 0);
  line(0, 0, -100, 0, 0, 100);
  t+=.005;
  c++;
  if (c > 255) {
    c = 0;
  }
}
