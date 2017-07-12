PGraphics cube;

void setup() {
  size(200, 200, WEBGL);
}

void draw() {
  background(128);
  translate(width/2, height/2, 0);
  rotateX(frameCount/100.0);
  rotateY(frameCount/50.0);
  box(40 + 20 * sin(frameCount/20) );
}
