// 3d cube matrix by vvixi
float t,c=100;
int cols, rows;

void setup() {
  surface.setTitle("Cube Matrix");
  smooth();
  noCursor();
  frameRate(32);
  colorMode(HSB, 360);
  size(600, 600, P3D);
  cols = 4;
  rows = 4;
  noFill();
}

void draw() {
  // increment time and color
  t+=.005;
  c++;
  background(0);
  drawMatrix();
  if (c > 360) { c = 0; }
}
void drawMatrix() {

  for(int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      for (int z = 0; z < rows; z++) {
        
        pushMatrix();
        //fill(c + z * 10, 360, 360, 10);
        stroke(c + y * 10, 360, 360);
        translate((width/2 + x * 200)-300, (height/2 + y * 200)-300, (height/2 + z * 200)-300);
        rotateX(t);
        rotateZ(t);
        box(200);
        popMatrix();
      }
      
    }
  }
}
