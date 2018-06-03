import processing.video.*;

Capture video;
float r1,r2,g1,g2,b1,b2;
int x,y;
float avgX=0,avgY=0;
int bandwidth=50,j=1;


void setup()
{
  size(640,480);
  video= new Capture(this,640,480,30);
  video.start();
  background(0);
}

void captureEvent(Capture video)
{
  video.read();

}

int count=0;

void draw()
{
  count=0;
  float d;
  avgX=0;
  avgY=0;
  //bandwidth=int(map(mouseX,0,width,0,100));
 // println(bandwidth);
  image(video,0,0);
    if(j==2)
  {
    video.loadPixels();
    for(x=0;x<width;x++)
      {
        for(y=0;y<height;y++)
         {
            r2=red(video.pixels[x+width*y]);
            b2=blue(video.pixels[x+width*y]);
            g2=green(video.pixels[x+width*y]);
            d=dist(r1,g1,b1,r2,g2,b2);
            
            if( d < bandwidth )
              {
                avgX=avgX+x;
                avgY=avgY+y;
                count++;
                //ellipse(x,y,8,8);
              }
         }
      }
      avgX=avgX/count;
      avgY=avgY/count;
      stroke(8);
      fill(255);
      ellipse(avgX,avgY,16,16);
  }           
}

void mousePressed()
{
  video.loadPixels();
  r1=red(video.pixels[mouseX+width*mouseY]);
  b1=blue(video.pixels[mouseX+width*mouseY]);
  g1=green(video.pixels[mouseX+width*mouseY]);
  j=2;
}
