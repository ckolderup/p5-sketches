void setup() {
  size(900, 500, WEBGL);
  frameRate(60);
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
    line(i + frameCount % (width/scale), 0,
         i + frameCount % (width/scale), height);
  }
}
