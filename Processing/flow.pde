// 3D art in P4 by vvixi
int count = 100, val = 120;
float t, col = 60, mod, rot;

void setup() {
  
  surface.setTitle("Flow");
  frameRate(32);
  size(600, 600, OPENGL);
  colorMode(HSB, 360);
}

void draw() {

  background(0);
  mod = 2 * cos(rot);
  drawFlow();
}

void drawFlow() {
  for (int i = 0; i < count; i++) {

    pushMatrix();
    translate(width/2 + (i *10)-10, height/2 - random(20)-110);
    sphere(val-i);
    popMatrix();
    
    pushMatrix();
    noFill();
    stroke(col-i, 300, 300, 300);
    translate(width/2 - (i *10)+10, height/2 - random(20)+110);
    sphere(val-i);
    popMatrix();
  }
  col+=10;
  if (col > 360) {
    col = 0;
  }
}
