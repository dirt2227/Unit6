import processing.javafx.*;
//#457b9d;
//color
color blue = #219ebc;

ripple[] myripples;
int numripples;

rain[] myrains;
int numrains;

void setup ()  {
 size(800, 800, FX2D);
 noFill();
rectMode(CENTER);
 noStroke();
 background(blue);
 
 numripples  = 20;
 myripples = new ripple[numripples];
 
  numrains  = 100;
 myrains = new rain[numrains];
 
 int a = 0;
 while (a < numripples)  {
   myripples[a] = new ripple();
   a++;
 }
 stroke(255);
 strokeWeight(1);

 int b = 0;
 while (b < numrains)  {
   myrains[b] = new rain();
   b++;
 }
}

void draw()  {
background(blue);
   int a = 0;
 while (a < numripples)  {
  myripples[a].show();
  myripples[a].act();
  a++;
 }
 
 int b = 0;
 while (b < numrains)  {
  myrains[b].show();
  myrains[b].act();
  b++;
 }
 fill(blue, 10);
 rect(width/2, height/2,  width, height);
}
