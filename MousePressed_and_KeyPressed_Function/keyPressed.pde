PImage bird;
boolean a=false;
void setup()
{
  size(1000,1000);

}

void keyPressed()
{
  if(key=='a')
  a=!a;
}

void draw()
{
  if(a==true)
  {
    background(255,0,44);
  }
  else
  background(0,255,0);
}
