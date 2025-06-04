import processing.javafx.*;

ripple[] myripples;
int numripples;

void setup ()  {
 size(800, 800, FX2D);
 noFill();

 
 numripples  = 20;
 myripples = new ripple[numripples];
 
 int a = 0;
 while (a < numripples)  {
   myripples[a] = new ripple();
   a++;
 }
 stroke(255);
 strokeWeight(1);

}

void draw()  {
background(0);
   int a = 0;
 while (a < numripples)  {
  myripples[a].show();
  myripples[a].act();
  a++;
 }
}
