// 3D generative art in P4 by vvixi
int posX, posY;
float delta;

void setup() {
  size(600, 600, OPENGL);
  surface.setTitle("Cube Wireframe");
  colorMode(HSB);
  noCursor();
  frameRate(16);
  posX = width/2;
  posY = height/2;
  
}

void draw() {
  background(0);
  for (int i = 0; i < 12; i++) {
    stroke(255);
    if (i % 2 == 0) {
      fill(random(360), 360, 360, 50);
    }
    drawShape(i, 0);
  }
}

void drawShape(int i, int j) {
  
  pushMatrix();
  delta += 0.0011;
  translate(width/2 - i, height/2);
  rotateX(delta-i);
  rotateY(delta-i);
  box(200);
  popMatrix();
  
}
