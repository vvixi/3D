// 3D Tear in P4 by vvixi
int count = 100;
float dec = 10.0, t, col, rot, mod;
float angle1;

void setup() {
  surface.setTitle("3D Tear");
  noCursor();
  frameRate(32);
  size(600, 600, OPENGL);
  colorMode(HSB, 100);

}

void draw() {

  background(0);
  rot=radians(90);
  mod = 2 * cos(rot);
  drawShape();
}

public void drawShape() {
  for (int i = 0; i < count; i++) {

    float val = 100;
    pushMatrix();
    fill(col, 100, 100, 100);
    translate(width/2 + (i *10), height/2 - random(30));
    box(val-i, 0.0, 0.0);
    popMatrix();
    
    pushMatrix();
    noFill();
    stroke(col-i, 100, 100, 100);
    translate(0 + (i *10), height/2 - random(30));
    box(val+i, i*0.0, 0.0);
    popMatrix();
  }
  angle1++;
  col++;
  if (col > 100) {
    col = 0;
  }
}
