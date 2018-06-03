import processing.video.*;

Capture video;

void setup()
{
  size(640,480);
  video=new Capture(this,640,480,30);
  video.start();
  background(0);
}

//void captureEvent(Capture video)
//{
//  video.read();
//}

void draw()
{
  if(video.available())
  video.read();
  image(video,0,0);
}
  
  void mousePressed()
  {
    saveFrame("processing.jpg");
  }
