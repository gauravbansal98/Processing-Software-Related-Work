import processing.video.*;

Movie video;

void setup()
{
  size(640,480);
  video=new Movie(this,"your video name with format");
 // video.loop();
  background(0);
}


int j=0;
void draw()
{
  if(j==1)
  {
    video.loop();
  }
  
}
  
  void keyPressed()
  {
    if(key=='a')
    j=1;
  }
  //jump();these are some function
  //duration(),speed(),time();
