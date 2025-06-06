import processing.javafx.*;
//#457b9d;
//color
color blue = #219ebc;
color yellow = #ffbe0b;
color brown = #7f5539;

ripple[] myripples;
int numripples;

rain[] myrains;
int numrains;

firefly[] myfireflies;
int numfireflies;

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
  //fill(blue, 10);
  //rect(width/2, height/2, width, height);

  int c = 0;
  while (c < numfireflies) {
    myfireflies[c].show();
    myfireflies[c].act();
    c++;
  }
}
