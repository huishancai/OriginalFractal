public void setup()
{
  size(400, 400);
}
public void draw()
{
  background(0);
  triangleCircle(5, 387, 400);
}
public void mouseDragged()//optional
{
}
public void mouseClicked()
{
  int randomColorR = (int)((Math.random()*225)+30);
  int randomColorG = (int)((Math.random()*225)+30);
  int randomColorB = (int)((Math.random()*225)+30);
  fill(randomColorR, randomColorG, randomColorB);
}
public void triangleCircle(int x, int y, int len) 
{
  if(len<=20)
    ellipse(x,y,len,len);
  else {
    triangleCircle(x, y, len/2);
    triangleCircle(x+(len/2), y, len/2);
    triangleCircle(x+(len/4), y, len/4);
    triangleCircle(x, y-(len/2), len/2);
  }
}
