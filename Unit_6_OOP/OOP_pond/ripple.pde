class ripple {
  float rx, ry, size, alpha, a;

  ripple() {
    rx = random(width);
    ry = random(height);
    size = random(200);
    a = random(5, 10);
  }

  void show() {
    alpha = map(size, 0, 200, 255, 0);
    strokeWeight(1);
    stroke(255, alpha);
    fill(255, 4);
    ellipse(rx, ry, size, size/2);
    ellipse(rx, ry, size * 0.8, size/2 * 0.8);
    ellipse(rx, ry, size * 0.4, size/2 * 0.4);
    ellipse(rx, ry, size * 0.1, size/2 * 0.1);
  }

  void act() {
    size = size + 3;
    rx = rx - a;
    if ( size >= random(200, 500)) {
      rx = random(width);
      ry = random(height);
      size = 0;
    }
  }
}
