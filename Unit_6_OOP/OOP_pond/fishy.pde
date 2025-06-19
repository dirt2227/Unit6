
class fish {
  float x, y, vx, vy, size, alpha;


  fish() {
    x = random (width, 0);
    y = random (0, height);
    vx = random(-10, -7);
    vy = 0;
    size = 40;
  }


  void show() {
    strokeWeight(4);
    float alpha = map(y, height, 0, 255, 0);
    stroke(orange, alpha);
    pushMatrix();
    translate(x, y);
    
    if (mouseX < x && ( x - mouseX) < 150 )  {
    scale(-1, 1);
    } else {
    scale(1, 1);
    }
    fill(orange, 100);
    ellipse(0, 0, size + 20, size);
    triangle((size + 20)/2, 0, (size + 20)/2 + 40, - 30, (size + 20)/2 + 40, 30);
    popMatrix();
  }

  void act() {
    float dx = x - mouseX;
    float dy = y - mouseY;
    float distsq = dx*dx + dy*dy;
    
    if  (distsq < 60000)  {
      float mag = sqrt(distsq);
      x += (dx/mag) * 2;
      y += (dy/mag) *2;

    }
    if(mouseX < x)  {
      x +=2;
    } else {
      x -= 2;
    }
    x = x + vx;
    if (x < -200) {
      x = width;
      y = random(0, height);
    }
  }
}
