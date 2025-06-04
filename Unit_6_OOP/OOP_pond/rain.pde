class rain  {
  
  float x, y, vx, vy, size;

  
  rain()  {
    x = random (0, width);
    y = random (0, height);
    vx = 1;
    vy = random(1, 10);
    size = vy;
  }
  
  //behavior functions: defines what a star does
  void show()  {
    fill(255);
    rect(x, y, size/2, size);
  }
  
  void act()  {
    y = y + vy;
    if (y > height + size)  {
      y = -size;
    }
  }
}
