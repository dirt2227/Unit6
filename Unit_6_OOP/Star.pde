class star  {
  
  //instance variables/fields
  float x, y, vx, vy, size;
  int h, s, b;
  
  //consturctor: special function thta defines how an object of this class is born/ defines intial values for fields
  star()  {
    x = random (0, width);
    y = random (0, height);
    vx = 0;
    vy = random(1, 5);
    size = vy;
    h = int(random(0, 255));
    s = 255;
    b = 255;
  }
  
  //behavior functions: defines what a star does
  void show()  {
    fill(h, s, b);
    square(x, y, size);
  }
  
  void act()  {
    y = y + vy;
    if (y > height + size)  {
      y = -size;
    }
    size = size + 0.1;
  }
}
