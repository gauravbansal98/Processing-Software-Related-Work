char[][] a;
void setup()
{
  size(500,500);
  a=new char[3][3];
  for(int i=0;i<3;i++)
  for(int j=0;j<3;j++)
  a[i][j]='a';
}

int j=1,i=1;

void draw()
{
  int k;
  int l;
  if(i==6)
  {
    background(133,255,111);
    textSize(50);
    fill(0);
    text("PLAYER 1 WINS",60,100);
    textSize(30);
    text("PRESS T FOR NEW MATCH",50,350);
    for( k=0;k<3;k++)
    for( l=0;l<3;l++)
    a[k][l]='a';
    j=1;
    return;
  }
  else if(i==7)
  {
    background(133,111,25);
    textSize(50);
    text("PLAYER 2 WINS",50,100);
    textSize(30);      
    text("PRESS T FOR NEW MATCH",50,350);
        for( k=0;k<3;k++)
    for( l=0;l<3;l++)
    a[k][l]='a';
    j=1;
    return;
  }
  else if(i==8)
  {
    background(255);
    textSize(50);
    text("MATCH TIE",100,50);
    textSize(30);    
    text("PRESS T FOR NEW MATCH",50,350);
        for( k=0;k<3;k++)
    for( l=0;l<3;l++)
    a[k][l]='a';
    j=1;
    return;
  }
  
  if(i==1)
  {
    background(255,33,120);
    textSize(50);
    fill(0);
    text("GAME STARTS",90,100);
    textSize(20);
    fill(0);
    text("press any key to continue",130,400);
    return;
  }
  if(i==2)
  {
    background(0);
    textSize(50);
    fill(255);
    text("MOVE IS INCORRECT",0,100);
    textSize(30);
    text("press any key to continue",70,350);
    return;
  }

  displayRect();
  
  if(i==4)
    {
       k=check();
       if(k==1)
       i=6;
       else if(k==2)
       i=7;
       else if(k==0)
       i=8;
    }
}

void mousePressed()
{
if(mouseY>400||mouseX<100||mouseY<100||mouseX>400)
i=2;
else if(mouseX>300&&mouseY>300)
{
  if(j%2==0)
  a[2][2]='X';
  else
  a[2][2]='O';
  i=4;
  j++;
}
else if(mouseX>300&&mouseY>200)
{
  if(j%2==0)
  a[1][2]='X';
  else
  a[1][2]='O';
  j++;
  i=4;
}
else if(mouseX>300&&mouseY>100)
{
  if(j%2==0)
  a[0][2]='X';
  else
  a[0][2]='O';
  j++;
  i=4;
}
else if(mouseX>200&&mouseY>300)
{
  if(j%2==0)
  a[2][1]='X';
  else
  a[2][1]='O';
  j++;
  i=4;
}
else if(mouseX>200&&mouseY>200)
{
  if(j%2==0)
  a[1][1]='X';
  else
  a[1][1]='O';
  j++;
  i=4;
}
else if(mouseX>200&&mouseY>100)
{
  if(j%2==0)
  a[0][1]='X';
  else
  a[0][1]='O';
  j++;
  i=4;
}
else if(mouseX>100&&mouseY>300)
{
  if(j%2==0)
  a[2][0]='X';
  else
  a[2][0]='O';
  j++;
  i=4;
}
else if(mouseX>100&&mouseY>200)
{
  if(j%2==0)
  a[1][0]='X';
  else
  a[1][0]='O';
  j++;
  i=4;
}
else if(mouseX>100&&mouseY>100)
{
  if(j%2==0)
  a[0][0]='X';
  else
  a[0][0]='O';
  j++;
  i=4;
}
}


void displayRect()
{
    background(123,22,222);
      textSize(50);
      fill(255);
  text("GAURAV",150,50);
   for(int i=100;i<400;i=i+100)
 {
  stroke(255,0,0);
  fill(0);
  rect(i,100,100,100);
 }
  for(int i=100;i<400;i=i+100)
 {
  stroke(255,0,0);
  fill(0);
  rect(i,200,100,100);
 }
  for(int i=100;i<400;i=i+100)
 {
  stroke(255,0,0);
  fill(0);
  rect(i,300,100,100);
 }
 for(int i=0;i<3;i++)
 {
   for(int j=0;j<3;j++)
   {
     if(a[i][j]!='a')
     {
       textSize(50);
       fill(120,255,0);
       text(a[i][j],130+100*j,170+100*i);
     }
   }
 }
}

void keyPressed()
{
  if(key=='T')
  i=1;
  i=3;
}

int check()
{
  i=3;
  for(int i=0;i<3;i++)
  {
    for(int j=0;j<3;j++)
    {
      if(a[i][j]!='a')
      {
        println("hi");
        if(j==0)
        {
          if((a[i][j]==a[i][j+1])&&(a[i][j]==a[i][j+2]))
               if(a[i][j]=='X')
                   return 1;
                else
                    return 2;
          if(i==0)
          {
            if((a[i][j]==a[i+1][j]&&a[i][j]==a[i+2][j])||(a[i][j]==a[i+1][j+1]&&a[i+2][j+2]==a[i][j]))
                 if(a[i][j]=='X')
                    return 1;
                 else
                  return 2;
          }
          else if(i==1)
          {
            if(a[i][j]==a[i+1][j]&&a[i-1][j]==a[i][j])
                if(a[i][j]=='X')
                    return 1;
                else
                return 2;    
           }
           else
            {
              if((a[i][j]==a[i-1][j]&&a[i][j]==a[i-2][j])||(a[i][j]==a[i-1][j+1]&&a[i-2][j+2]==a[i][j]))
                 if(a[i][j]=='X')
                    return 1;
               else
                  return 2;
          }
        }
         if(j==1)
          {
            if((a[i][j]==a[i][j+1])&&(a[i][j]==a[i][j-1]))              
                if(a[i][j]=='X')                 
                    return 1;                
            else             
                return 2;                      
          if(i==0)
            {
              if((a[i][j]==a[i+1][j]&&a[i][j]==a[i+2][j]))               
                 if(a[i][j]=='X')                  
                    return 1;                  
              else               
                  return 2;                            
          }
          else if(i==1)
            {
              if(a[i][j]==a[i+1][j]&&a[i-1][j]==a[i][j])               
                  if(a[i][j]=='X')                    
                      return 1;                   
              else              
                  return 2;                            
            }
          else
           {
            if((a[i][j]==a[i-1][j]&&a[i][j]==a[i-2][j]))              
               if(a[i][j]=='X')               
                  return 1;               
               else               
                  return 2;                             
           }
        }
  if(j==2)
        {
          if((a[i][j]==a[i][j-1])&&(a[i][j]==a[i][j-2]))            
              if(a[i][j]=='X')              
                return 1;              
            else             
                return 2;                                    
          if(i==0)
            {
            if((a[i][j]==a[i+1][j]&&a[i][j]==a[i+2][j])||(a[i][j]==a[i+1][j-1]&&a[i+2][j-2]==a[i][j]))             
                 if(a[i][j]=='X')                 
                    return 1;                 
                else                 
                    return 2;                              
            }
          else if(i==1)
            {
              if(a[i][j]==a[i+1][j]&&a[i-1][j]==a[i][j])
                {
                  if(a[i][j]=='X')                    
                      return 1;                   
                  else                    
                      return 2;                   
                }
            }
           else
             {
              if((a[i][j]==a[i-1][j]&&a[i][j]==a[i-2][j])||(a[i][j]==a[i-1][j-1]&&a[i-2][j-2]==a[i][j]))               
                  if(a[i][j]=='X')                   
                      return 1;                   
                 else                
                    return 2;                                 
            }
        }           
      
      }      
    }
  }
  int count=0;
  for(int i=0;i<3;i++)
  for(int j=0;j<3;j++)
  if(a[i][j]=='a')
  count++;
  if(count==0)
  return 0;
  return 6;
}
