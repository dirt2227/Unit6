class itswindyouthere {

  float x, y, vx, vy, size, alpha;


  itswindyouthere() {
    x = random (width, 0);
    y = random (0, height);
    vx = random(-10, -7);
    vy = 0;
    size = random(50, 200);
  }


  void show() {
    strokeWeight(4);
    float alpha = map(y, height, 0, 255, 0);
    stroke(255, alpha);
    line(x, y, x + size, y);
  }

  void act() {
    x = x + vx;
    if (x < -200) {
      x = width;
      y = random(0, height);
    }
  }
}
