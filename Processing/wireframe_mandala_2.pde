// generative art in P4 by vvixi
int c;
float r;

void setup() {
  
  frameRate(32);
  background(20);
  noCursor();
  rectMode(CENTER);
  noFill();
  surface.setTitle("Wireframe Mandala 2");
  size(600, 600, OPENGL);
}

void draw() {
  
  fill(c, 10);
  background(0, 10);
   c++; r+=.005;
   drawShape();
}

void drawShape() {
  
   for (int i = 0; i < 15; i++) {
     
     pushMatrix();
     stroke(c,  200, random(200));
     translate(width/2, height/2);
     rotateX(r);
     box(i*50);
     popMatrix();
     
     pushMatrix();
     stroke(c,  200, random(200));
     translate(width/2, height/2);
     rotateX(-r);
     box(i*50);
     popMatrix();
     
     pushMatrix();
     stroke(200, c, random(200));
     translate(width/2, height/2);
     rotateZ(r);
     box(i*50);
     popMatrix();
     
     pushMatrix();
     stroke(c, random(200), 200);
     translate(width/2, height/2);
     rotateZ(-r);
     box(i*50);
     popMatrix();
     
     pushMatrix();
     stroke(200, random(200), c);
     translate(width/2, height/2);
     rotateY(r);
     box(i*50);
     popMatrix();
     
     pushMatrix();
     stroke(200, random(200), c);
     translate(width/2, height/2);
     rotateY(-r);
     box(i*50);
     popMatrix();
     
   }

   if (c>255) {
     c=0;
   }
}
