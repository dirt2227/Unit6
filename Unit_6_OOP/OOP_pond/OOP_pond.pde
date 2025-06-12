import processing.javafx.*;
//#457b9d;
//color
color blue = #219ebc;
color yellow = #ffbe0b;
color brown = #bc6c25;
color dbrown = #7f5539;
color ddbrown = #583101;
color pink = #ffafcc;

float y = 800;
float velocity = 0.5;
float miny = 800, maxy = 850;

boolean rightkey, leftkey;

ripple[] myripples;
int numripples;

rain[] myrains;
int numrains;

firefly[] myfireflies;
int numfireflies;

itswindyouthere[] mywindy;
int numwindy;

void setup () {
  size(800, 800, FX2D);
  noFill();
  rectMode(CENTER);
  noStroke();
  background(blue);


  numripples  = 20;
  myripples = new ripple[numripples];

  numrains  = 200;
  myrains = new rain[numrains];

  numfireflies = 10;
  myfireflies = new firefly[numfireflies];

  numwindy = 20;
  mywindy = new itswindyouthere[numwindy];

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
}

void draw() {
  background(blue);

 if (rightkey) rod += 5;
 if (leftkey) rod -= 5;

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


  boat(y);
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


void keyPressed() {

  if (keyCode == RIGHT) rightkey = true ;
  if (keyCode == LEFT) leftkey = true;
}

void keyReleased() {
  if (keyCode == RIGHT) rightkey = false ;
  if (keyCode == LEFT) leftkey = false;
}

void rod()  {
  line(400, 700, 500, 600);
}
