class Player
{
  int x;
//----move player----####
  void move(int x)
    {
      this.x = x;
    }
//----move player----####
//----show player----####

  void show()
    {
      fill(0);
      rect(x, PlayerY, PlayerL, PlayerH);
    }
//----show player----####
}
