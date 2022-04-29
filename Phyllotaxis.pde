float n = 0;
float c = 2;

void setup() {
  size(600, 600);
  background(0);
  colorMode(HSB);
}

void draw() {
  translate(width/2, height/2);
  float phi = n * radians(137.5);
  float r = c * sqrt(n);
  
  float x = r * cos(phi);
  float y = r * sin(phi);
  
  fill(n % 256 , 255, 255);
  noStroke();
  
  ellipse(x, y, 2, 2);

  n++;
}
