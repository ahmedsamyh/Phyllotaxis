float n = 0;
float c = 2;
float angle = 137.5;

void setup() {
  size(600, 600, P3D);
  background(0);
  colorMode(HSB);
}

void draw() {
  translate(width/2, height/2);
  for (int i = 0; i < 10; i++) {
    float phi = n * radians(angle);
    float r = c * sqrt(n);

    float x = r * cos(phi);
    float y = r * sin(phi);

    fill(n % 256, 255, 255);
    noStroke();

    ellipse(x, y, 2, 2);

    n++;
  }
}
