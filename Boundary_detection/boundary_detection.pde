PImage bird;
void setup()
{
  bird=loadImage("bird2.jpg");
  int i=bird.width,j=bird.height;
  size(275,183);
  bird.resize(275, 183);
}

void draw()
{int i,j;
float k,l;
loadPixels();
bird.loadPixels();
  
  for(i=0;i<bird.width - 1;i++)
  {
    for(j=0;j<bird.height - 1;j++)
    {
      k=brightness(bird.pixels[i+bird.width*j]);
       l=brightness(bird.pixels[i+bird.width*j+2]);
       if(abs(k-l)<10)
       pixels[i+275*j]=color(255);
       else
        pixels[i+275*j]=color(0);
    }
  }
  updatePixels();
}
