// basic 3d star by vvixi
float t,c=100;

void setup() {
  
  surface.setTitle("Star");
  smooth();
  noCursor();
  frameRate(32);
  colorMode(HSB, 360);
  size(600, 600, P3D);
}

void draw() {
  
  // increment time and color
  t+=.007;
  c++;
  background(0);
  pushMatrix();
  drawStar();
  // reset color
  if (c > 360) { c = 0; }
}

public void drawStar() {
  
  int rotX = 180; 
  float rotY;
  int h=200, cols = 6, rows = 6;
  for(int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      pushMatrix();
      h += x * 1;
      rotY = y;
      fill(c + y * 10, 360, 360);
      stroke(c + y * 10, 360, 360);
      translate(width/2 + x, height/2 + y);
      rotX *= -1;
      rotY = sin(radians(y));
      rotateX(rotX);
      rotateZ(t + rotY);
      
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
