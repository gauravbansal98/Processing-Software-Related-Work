PImage[] bird=new PImage[3];
int j;

void setup()
{size(500,500);
  for(int i=0;i<3;i++)
  bird[i]=loadImage("bird"+i+".jpg");
}

void draw()
{
  if(j==1)
  {
background(255);
    image(bird[0],0,0);
   
  }
  else if(j==2)
  {
background(255);
    image(bird[1],0,0);
 
  }
  else
  {
background(255);
    image(bird[2],0,0);
  }
}

void mousePressed()
{
  if(mouseButton==RIGHT)
  j=1;
   else if(mouseButton==LEFT)
j=2;
  else j=3;
}
