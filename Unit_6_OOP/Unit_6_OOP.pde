import processing.javafx.*;

star[] mystars;
int numstars;

void setup ()  {
 size(800, 800, FX2D);
 rectMode(CENTER);
 noStroke();
 colorMode(HSB);
 background(0);
 
 numstars  = 100;
 mystars = new star[numstars];
 
 int a = 0;
 while (a < numstars)  {
   mystars[a] = new star();
   a++;
 }
}

void draw()  {

   int a = 0;
 while (a < numstars)  {
  mystars[a].show();
  mystars[a].act();
  a++;
 }
 fill(0, 10);
 rect(width/2, height/2,  width, height);
}
