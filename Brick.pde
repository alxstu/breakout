class Brick
{
  int x, y;
//----brick position----####
  void position(int x, int y)
  {
      this.x = x;
      this.y = y;
  }
//----brick position----####
//----show brick----########
  void show()
  {
      rectMode(CORNER);
      fill(0);
      rect(x, y, brickL, brickH);
  }
//----show brick----########
//----hit brick----#########
  boolean hit()
  {
    int x1 = x;
    int x2 = x + 90;
    if (((ballY + ballsize) >= y) && ((ballY + ballsize) <= y + 15))
        {
            if ((ballX >= x1) && (ballX <= x2))
            {
            return true;
            }
    
            else
            {
            return false;
            }
        }
            else
            {
            return false;
            }
   }
//----hit brick----#########   
}
