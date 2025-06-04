class spike {
  float x, y,w;

  spike() {
    x = random(width);
    y = random(height);
    w = random(100, 300);
  }

  void show() { 
    stroke(0);
    strokeWeight(2);
    ellipse(x, y, w, w/2);
  }

  void shrink() {
    if ( w >= 0) {
      y = y - 4;
     w = w - 2;
    }
  }
}
