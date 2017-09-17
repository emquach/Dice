int total = 0;
void setup()
{
  size(1020, 930);
  noLoop();
}

void draw()
{
  background(50);
  for (int x = 15; x < 1000; x += 40)
  {
    for (int y = 15; y < 860; y += 40)
    {
      Die one = new Die (x, y);
      one.show();
      one.roll();

    }
   
  }
    textSize(30);
    fill((int)(Math.random()*100+100), (int)(Math.random()*100+100), (int)(Math.random()*100+100));
    text("T",100,915);
    fill((int)(Math.random()*100+100), (int)(Math.random()*100+100), (int)(Math.random()*100+100));
    text("O",200,915);
    fill((int)(Math.random()*100+100), (int)(Math.random()*100+100), (int)(Math.random()*100+100));
    text("T",300,915);
    fill((int)(Math.random()*100+100), (int)(Math.random()*100+100), (int)(Math.random()*100+100));
    text("A",400,915);
    fill((int)(Math.random()*100+100), (int)(Math.random()*100+100), (int)(Math.random()*100+100));
    text("L",500,915);
    fill((int)(Math.random()*100+100), (int)(Math.random()*100+100), (int)(Math.random()*100+100));
    text(":",600,915);
    fill((int)(Math.random()*100+100), (int)(Math.random()*100+100), (int)(Math.random()*100+100));
    text(total,700,915);

}
void mousePressed()
{
  total = 0;
  redraw();

}
class Die //models one single dice cube
{
  int myX, myY, numb;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    numb = (int)(Math.random()*6+1);
  }
  void roll()
  {
  total = total + numb;
  }
  void show()
  {
   
    fill((int)(Math.random()*100+100), (int)(Math.random()*100+100), (int)(Math.random()*100+100));
    rect(myX, myY, 30, 30, 5);
    fill(0);
    noStroke();
    

      if (numb == 1)
      {
        ellipse(myX+15, myY+15, 7, 7);
      } 
      else if (numb == 2)
      {
        ellipse(myX+10, myY+10, 6, 6);
        ellipse(myX+20, myY+20, 6, 6);
      } 
      else if (numb == 3)
      {
        ellipse(myX+8, myY+8, 6, 6);
        ellipse(myX+15, myY+15, 6, 6);
        ellipse(myX+22, myY+22, 6, 6);
      } 
      else if (numb == 4)
      {
        ellipse(myX+8, myY+8, 6, 6);
        ellipse(myX+8, myY+22, 6, 6);
        ellipse(myX+22, myY+8, 6, 6);
        ellipse(myX+22, myY+22, 6, 6);
      } 
      else if (numb == 5)
      {
        ellipse(myX+8, myY+8, 6, 6);
        ellipse(myX+8, myY+22, 6, 6);
        ellipse(myX+22, myY+8, 6, 6);
        ellipse(myX+22, myY+22, 6, 6);
        ellipse(myX+15, myY+15, 6, 6);
      } 
      else if (numb == 6)
      {
        ellipse(myX+8, myY+8, 6, 6);
        ellipse(myX+8, myY+22, 6, 6);
        ellipse(myX+22, myY+8, 6, 6);
        ellipse(myX+22, myY+22, 6, 6);
        ellipse(myX+8, myY+15, 6, 6);
        ellipse(myX+22, myY+15, 6, 6);    
      }
   } 
}