class itswindyouthere  {
   
  float x, y, vx, vy, size;

  
  itswindyouthere()  {
    x = random (width + 100, width + 700);
    y = random (-height, 0);
    vx = random(-15, -10);
    vy = 0;
    size = random(50, 200);
  }
  
  //behavior functions: defines what a star does
  void show()  {
    strokeWeight(4);
    stroke(255,120);
    line(x, y, x + size, y);
   
  }
  
  void act()  {
    x = x + vx;
    if (x < -700)  {
      x = width + 700;
      y = random(0, height);
    }
  }
}
