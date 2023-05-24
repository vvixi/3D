// basic 3d cube by vvixi
float t,c;

void setup() {
  noCursor();
  frameRate(32);
  size(400, 400, P3D);
  noFill();
}

void draw() {
  t+=.025;
  c++;
  background(0);
  for (int i = 0; i < 60; i++) {
    pushMatrix();
    stroke(c, 200, 255);
    translate(width/2, height/2);
    rotateY(t);
    box(100+(i * 100));
    popMatrix();
  }

  if (c> 255) { c=0; }
}
