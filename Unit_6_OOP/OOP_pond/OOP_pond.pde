import processing.javafx.*;
//#457b9d;
//color
color blue = #219ebc;
color yellow = #ffbe0b;
color brown = #bc6c25;
color dbrown = #7f5539;
color ddbrown = #583101;
color orange = #f77f00;

float y = 800;
float velocity = 0.5;
float miny = 800, maxy = 850;

int rodx, rodw, rodh;

ripple[] myripples;
int numripples;

rain[] myrains;
int numrains;

firefly[] myfireflies;
int numfireflies;

itswindyouthere[] mywindy;
int numwindy;

fish[] myfishy;
int numfishy;

void setup () {
  size(800, 800, FX2D);
  noFill();
  rectMode(CENTER);
  noStroke();
  background(blue);

  rodx = 400;
  rodh = 300;
  rodw = 10;


  numripples  = 20;
  myripples = new ripple[numripples];

  numrains  = 200;
  myrains = new rain[numrains];

  numfireflies = 10;
  myfireflies = new firefly[numfireflies];

  numwindy = 20;
  mywindy = new itswindyouthere[numwindy];

  numfishy = 20;
  myfishy = new fish[numfishy];


  int a = 0;
  while (a < numripples) {
    myripples[a] = new ripple();
    a++;
  }
  stroke(255);
  strokeWeight(1);

  int b = 0;
  while (b < numrains) {
    myrains[b] = new rain();
    b++;
  }

  int c = 0;
  while (c < numfireflies) {
    myfireflies[c] = new firefly();
    c++;
  }

  int d = 0;
  while (d < numwindy) {
    mywindy[d] = new itswindyouthere();
    d++;
  }
  
     int e = 0;
  while (e < numfishy) {
    myfishy[e] = new fish();
    e++;
  }
}

void draw() {
  background(blue);

  int a = 0;
  while (a < numripples) {
    myripples[a].show();
    myripples[a].act();
    a++;
  }


  int b = 0;
  while (b < numrains) {
    myrains[b].show();
    myrains[b].act();
    b++;
  }

  int d = 0;
  while (d < numwindy) {
    mywindy[d].show();
    mywindy[d].act();
    d++;
  }
    int e = 0;
  while (e < numfishy) {
    myfishy[e].show();
    myfishy[e].act();
    e++;
  }


  boat(y);
  y = y + velocity;
  if (y > maxy || y < miny) {
    velocity = velocity * -1;
  }

  rod(y);
  y = y + velocity;
  if (y > maxy || y < miny) {
    velocity = velocity * -1;
  }

  int c = 0;
  while (c < numfireflies) {
    myfireflies[c].show();
    myfireflies[c].act();
    c++;
  }
  

}


void boat(float y) {
  fill(brown);
  stroke(dbrown);
  ellipse(400, y, 1000, 300);
  stroke(dbrown);
  fill(dbrown);
  ellipse(400, y + 50, 1000, 300);
  fill(brown);
  rect(300, y - 50, 50, 100);
  rect(600, y - 50, 50, 100);
}

void rod(float y) {
  rodx = constrain(rodx, 600, 1000);
  pushMatrix();
  rotate(radians(20));
  strokeWeight(1);
  fill(ddbrown);
  rect(rodx, y - 400, rodw, rodh);
  stroke(255);
  line(rodx, y - 550, rodx - 400, y - 450);
  fill(255, 255, 255, 200);
  circle(rodx - 400, y - 450, 20);
  popMatrix();
}

void keyPressed() {

  if (keyCode == RIGHT) rodx += 5 ;
  if (keyCode == LEFT) rodx -= 5;
}
