void setup() {
  size(900, 500, WEBGL);
}

void draw() {
  float scale = 50;

  background(0);
  stroke(#FF69B4);

  translate(0, height/2);
  rotateX(radians(55));

  //rows
  for (float i = 0; i < height; i += (height/scale)) {
    line(0, i, width, i);
  }

  //columns
  for (i = 0; i < width; i += (width/scale)) {
    line(i, 0, i, height);
  }


  //cube
  stroke(#32cd32);
  fill(0);
  translate(width/2, height/2 - 50, 150);
  rotateX(min(frameCount/100.0, 360));
  rotateY(min(frameCount/50.0, 360));
  box(40 + 20 * sin(frameCount/20), 1);

}
