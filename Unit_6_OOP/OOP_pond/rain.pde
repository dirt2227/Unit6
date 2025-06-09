class rain  {
  
  float x, y, vx, vy, size;

  
  rain()  {
    x = random (0, width);
    y = random (-height, 100);
    vx = 1;
    vy = random(1, 10);
    size = vy;
  }
  
  //behavior functions: defines what a star does
  void show()  {
    pushMatrix();
    strokeWeight(0);
    fill(255);
    rotate(radians(30));
    stroke(255);
    rect(x, y, size/2, size);
    popMatrix();
  }
  
  void act()  {
    y = y + vy;
    if (y > height + size)  {
      y = random(-height, 0);
    }
  }
}
