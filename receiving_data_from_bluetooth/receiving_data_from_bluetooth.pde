import processing.serial.*;
Serial port;
float brightness;

void setup()
{
  println(Serial.list());
  size(500,500);
  port=new Serial(this,"COM6",9600);
  port.bufferUntil('\n');
}
String my="hi";
void draw()
{
  background(0,0,255);
  textSize(64);a
  fill(0);
  text(my,60,60);
}

void keyPressed()
{
  if(key=='a')
  port.write('a');
}
void serialEvent(Serial port)
{
  my=port.readStringUntil('\n');
}
