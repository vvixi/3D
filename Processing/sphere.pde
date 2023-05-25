// 3d sphere in P4 by vvixi
float t, c;

void setup() {
  
  surface.setTitle("Sphere");
  colorMode(HSB, 360);
  noCursor();
  frameRate(32);
  size(400, 400, P3D);
}

void draw() {
  
  background(0, 10);
  // increment color and time
  t+=.01;
  c+=.2;
  drawSphere();
}

void drawSphere() {
  
  for (int i = 0; i < 7; i++) {
    pushMatrix();
    fill(c + i * 10, 360, 360, 30);
    stroke(c + i * 10, 360, 360, 30);
    translate(width/2, height/2);
    rotateY(t);
    sphere(i * 100);
    popMatrix();
    if (c > 360) {
      c = 0;
    }
  }
}
