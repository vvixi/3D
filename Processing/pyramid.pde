// basic 3d pyramids by vvixi
float t,c=100;

void setup() {
  smooth();
  noCursor();
  frameRate(32);
  colorMode(HSB, 360);
  size(600, 600, P3D);
  noFill();
}

void draw() {
  
  // increment time and color
  t+=.005;
  c++;
  background(0);
  pushMatrix();
  drawPyramids();
  // reset color
  if (c > 360) { c = 0; }
}

public void drawPyramids() {
  
  int h=50, cols = 6, rows = 6;
  for(int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      pushMatrix();
      fill(c + y * 10, 360, 360, 40);
      stroke(c + y * 10, 360, 360);
      translate((width/2 + x * 200)-500, (height/2 + y * 200)-500);
      rotateY(t-y*10);
      rotateX(-t);
      rotateZ(t+y*10);
      beginShape();
      vertex(-h, -h, -h);
      vertex(h, -h, -h);
      vertex(0, 0, h);
      
      vertex(h, -h, -h);
      vertex(h, h, -h);
      vertex(0, 0, h);
      
      vertex(h, h, -h);
      vertex(-h, h, -h);
      vertex(0, 0, h);
      
      vertex(-h, h, -h);
      vertex(-h, -h, -h);
      vertex(0, 0, h);
      endShape();
      popMatrix();
    }
  }
  popMatrix();
}
