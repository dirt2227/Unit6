class ripple {
  float x, y, size, alpha;

  ripple() {
    x = random(width);
    y = random(height);
    size = random(200);
  }

  void show() {
    alpha = map(size, 0, 200, 255, 0);
    stroke(255, alpha);
    ellipse(x, y, size, size/2);
  }

  void act() {
    size = size + 3;
    if ( size >= 200) {
      x = random(width);
      y = random(height);
      //x = mouseX;
      //y = mouseY;
      size = 0;
    }
  }
}
