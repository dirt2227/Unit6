class star  {
  
  //instance variables/fields
  float x, y, vx, vy, size;
  
  //consturctor: special function thta defines how an object of this class is born/ defines intial values for fields
  star()  {
    x = random (0, width);
    y = random (0, height);
    vx = 0;
    vy = random(1, 5);
    size = vy;
  }
  
  //behavior functions: defines what a star does
  void show()  {
    fill(255);
    square(x, y, size);
  }
  
  void act()  {
    y = y + vy;
    if (y > height + size)  {
      y = -size;
    }
  }
}
