int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

int secondX = 150;
int secondY = 0;
int thirdX = 150;
int thirdY = 0;

void setup()
{
  size(300,300);
  background(255,255,255);
  strokeWeight(10.0);
  
}
void draw()
{
  fill(0,0,0,15);
  rect(0,0,300,300);
  int randomR = (int)(Math.random()*256);
  int randomG = (int)(Math.random()*256);
  int randomB = (int)(Math.random()*256);
  stroke(randomR, randomG, randomB);
  while (endX < 300)
  {
   endX = startX + (int)(Math.random()*10);
   endY = startY + (int)((Math.random()*18)-9);
   line(startX,startY,endX,endY);
   startX = endX;
   startY = endY;
  }  
  
  while (thirdY < 300)
  {
   thirdY = secondY + (int)((Math.random()*18)-9);
   thirdX = secondX + (int)(Math.random()*10);
   line(secondY,secondX,thirdY,thirdX);
   secondY = thirdY;
   secondX = thirdX;
  }
}
void mousePressed()
{
startX = 0;
startY = 150;
endX = 0;
endY = 150;

secondY = 150;
secondX = 0;
thirdY = 150;
thirdX = 0;
}
