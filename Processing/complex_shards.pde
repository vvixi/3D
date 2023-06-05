// complex 3d shards in P4 by vvixi
float t,co=100;
int cols, rows;
int[] points = new int[27];
void setup() {

  surface.setTitle("Complex Abstract Bodies");
  smooth();
  noCursor();
  frameRate(32);
  colorMode(HSB, 360);
  size(600, 600, P3D);
  cols = 6;
  rows = 6;
  for (int i = 0; i < points.length; i++) {
    points[i] = int(random(width));
  }
}

void draw() {
  
  // increment color and time
  t+=.005;
  co++;
  // shift vertices
  if (frameCount %32 == 0) {
    for (int i = 0; i < points.length; i++) {
      points[i] = int(random(-width, width));
    }
    
  }
  background(0, 80);
  for(int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      pushMatrix();
      fill(co + y * 10, 360, 360, 40);
      stroke(co + y * 10, 360, 360);
      translate(x, height/2 + y * 10, height/2 + y * 1);
      //rotateY(-t);
      rotateX(t-x*8);
      //rotateZ(t);
      beginShape();
      vertex(points[0], points[1], points[2]);
      vertex(points[3], points[4], points[5]);
      vertex(points[6], points[7], points[8]);
      
      vertex(points[9], points[10], points[11]);
      vertex(points[12], points[13], points[14]);
      vertex(points[15], points[16], points[17]);
      
      vertex(points[18], points[19], points[20]);
      vertex(points[21], points[22], points[23]);
      vertex(points[24], points[25], points[26]);
      
      vertex(points[0], points[1], points[2]);
      vertex(points[3], points[4], points[5]);
      vertex(points[6], points[7], points[8]);
      endShape();
      popMatrix();
    }
  }
  // wrap color to start
  if (co > 360) { co = 0; }
}
