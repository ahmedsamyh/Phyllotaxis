import peasy.*;

class Point{
  PVector pos;
  float sat;
  Point(float x, float y, float _sat){
    pos = new PVector(x,y);
    sat = _sat;
  }
  
  void render(){
    fill(sat, 255, 255);
    noStroke();
    pushMatrix();
    translate(pos.x, pos.y);
    ellipse(0, 0, 2, 2);
    popMatrix();
  }
}


PeasyCam cam;
float n = 0;
float c = 2;
//float angle = 137.5;
//float angle = 137.3;
float angle = 137.6;

ArrayList<Point> points = new ArrayList<Point>();

void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 400);
  colorMode(HSB);
}

void draw() {
  //translate(width/2, height/2);
  background(0);

  for (int i = 0; i < 10; i++) {
    float phi = n * radians(angle);
    float r = c * sqrt(n);

    float x = r * cos(phi);
    float y = r * sin(phi);



    points.add(new Point(x, y, n % 256));

    n++;
  }
  
  for (Point pt : points){
    pt.render();
  }
}
