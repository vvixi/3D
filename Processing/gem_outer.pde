// Gem Outer 3D Generative Art in P4 by vvixi
float t;
int c, count = 100;

void setup() {
  noCursor();
  colorMode(HSB);
  size(600, 600, OPENGL);
}

void draw() {
  //lights();
  background(0);

  //rotateY(radians(90));
  //print(mouseX, mouseY);
  //camera(width, height, 220.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
  //noFill();
  for (int i = 0; i < count; i++) {
    //fill(0, c, 255-c, 10);
    pushMatrix();
    translate(width/2, i * 10);
    stroke(c - i, 300, 360, 360);
    noFill();
    //fill(c, 0, 200);
    rotateX(t);
    rotateZ(t-i%count/10);
    box(i * 6);
    popMatrix();
  }
  //stroke(255);
  line(-100, 0, 0, 100, 0, 0);
  line(0, -100, 0, 0, 100, 0);
  line(0, 0, -100, 0, 0, 100);
  t+=.005;
  c++;
  if (c > 200) {
    c = 0;
  }
}
