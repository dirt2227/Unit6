class ripple {
  float x, y, size, alpha;

  ripple() {
    x = random(width);
    y = random(height);
    size = random(200);
  }

  void show() {
    alpha = map(size, 0, 200, 255, 0);
    strokeWeight(1);
    stroke(255, alpha);
    fill(255, 4);
    ellipse(x, y, size, size/2);
    ellipse(x, y, size * 0.8, size/2 * 0.8);
    ellipse(x, y, size * 0.4, size/2 * 0.4);
    ellipse(x, y, size * 0.1, size/2 * 0.1);
  }

  void act() {
    size = size + 3;
    if ( size >= random(200, 500)) {
      x = random(width);
      y = random(height);
      size = 0;
    }
  }
}
