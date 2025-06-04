import processing.javafx.*;

spike[] myspikes;
int n = 50;

void setup ()  {
 size(800, 800);

 myspikes = new spike[n];
 
 int a = 0;
 while (a < n)  {
   myspikes[a] = new spike();
   a++;
 }
 stroke(255);
 strokeWeight(1);

}

void draw()  {
   int a = 0;
 while (a < n)  {
  myspikes[a].show();
  myspikes[a].shrink();
  a++;
 }
}
