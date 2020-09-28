// Fork by Rupert Russell of Perlin Turbulence 
// https://www.openprocessing.org/sketch/762714
// by LeithBA https://www.openprocessing.org/user/173969
// 29 September 2020

void setup() {
  size(1000, 1000);

  stroke(255, 100);
  noFill();
  background(25);
  noLoop(); // comment out to animate image
  loadPixels();
}
int horizontal = 400;
int vertical = 400;
float t = 0;
float speed = 0.01;
int amp = 100;
float noiseStep = 0.05;


void draw() {
  background(25);
  for (int j = 0; j < vertical; j++) {
    beginShape();
    for (int i = 0; i < horizontal; i++) {
      vertex(i * width / horizontal, j * height / vertical - noise(i * noiseStep, j * noiseStep, t) * amp + amp / 2);
    }
    endShape();
  }
  // t += speed; // uncomment to animate image 
  // save("landscape.png");
  // println("saved");
  // exit();
}
