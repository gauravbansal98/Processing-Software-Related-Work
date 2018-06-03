PImage[] run=new PImage[8];
int i;
int[] x=new int[3];
int p=0,q=0,w=0,r=int(random(100,200));
int[] y=new int[3];


void setup()
{
  size(630,210);
  for(i=0;i<8;i++)
  {
    run[i]=loadImage("run"+i+".jpg");
    if(i<3)
    {
      x[i]=0;
      y[i]=int(random(30,40));
    }
    frameRate(50);
  }
  background(255);
}

void draw()
{
  background(255);
  if(x[0]<630)
  {
    image(run[p],x[0],0,70,70);
    x[0]=x[0]+y[0];
  }
  if(x[1]<630)
  {
    image(run[q],x[1],70,70,70);
    x[1]=x[1]+y[1];
  }  
    if(x[2]<630)
  {
    image(run[w],x[2],140,70,70);
    x[2]=x[2]+y[2];
   
  }
  if(x[0]>=630)
  {
    x[0]=0;
    y[0]=int(random(19,30));
  }
   if(x[1]>=630)
     {
       x[1]=0;
       y[1]=int(random(20,40));
     }
   if(x[2]>=630)
    {
     x[2]=0;
     y[2]=int(random(30,45));
   r=int(random(150,200));
    }
p++;
q++;
w++;
if(p==7)
p=0;
if(q==7)
q=0;
if(w==7)
w=0;
   delay(r);
}
