class firefly {
  float x, y, size;

  firefly() {
    x = random(width);
    y = random(height);
    size = 10;
  }

  void show() {

    strokeWeight(5);
    stroke(brown);
    line(x, y + 20, x - 55, y + 300);
    stroke(brown, 20);
    line(x - 50, y + 50, x - 100, y + 350);
    int a = 0;
    noStroke();
    while (a < 10) {
      fill(yellow, 200);
      circle(x, y, size);
      fill(yellow, 20);
      circle(x, y, size + 10);

      fill(yellow, 100);
      circle(x, y, size);
      fill(yellow, 20);
      ellipse(x - 50, y + 50, size + 10, size/2 + 10);
      a++;
      x = x + random(-20, 20);
      y = y + random(-20, 20);
    }
  }

  void act() {
    x = mouseX;
    y = mouseY;
  }
}
