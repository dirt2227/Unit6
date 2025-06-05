class ripple {
  float x, y, size, alpha, bubblealpha;

  ripple() {
    x = random(width);
    y = random(height);
    size = random(200);
  }

  void show() {
    alpha = map(size, 0, 200, 255, 0);
    strokeWeight(1);
    stroke(255, alpha);
    fill(blue);
    ellipse(x, y, size, size/2);
        
  }

  void act() {
    size = size + 3;
    if ( size >= 200) {
      x = random(width);
      y = random(height);
      size = 0;
    }
    if (size == 27 ) {
     float bubblealpha = 255;
     while (bubblealpha > 0)  {
      bubblealpha -= 1;
      fill(255, bubblealpha);
      noStroke();
      circle(random(x, x + 10), random(y, y - 10), 10);
     }
    }
  }
}
