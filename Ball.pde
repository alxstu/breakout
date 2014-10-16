class Ball
{
//----show ball----####
  void show()
  {
    stroke(0);
    fill(0);
    ellipse(ballX, ballY, ballsize, ballsize);
  }
//----show ball----####
//----move ball----####
      void move() 
  {
      ballX = ballX + ballSpeedX;
      ballY = ballY + ballSpeedY;
//----wall hit----#####
      if (ballY <= 80) 
      {
        ballSpeedY = -1*ballSpeedY;
      }
      if ((ballX >= (width-ballsize)) || (ballX <= 0)) 
      {
        ballSpeedX = -1*ballSpeedX;
      }
//----wall hit----#####
//----Player hit----###
if ((ballY > (PlayerY - ballsize)) && (ballX > player.x) && (ballX<(player.x + PlayerL)))
      {
        ballSpeedY = -1*ballSpeedY;
      }
        if((ballY>(height-50))&&(!gameover))
      {
        lives--;
        start2();
      }
//----Player hit----###
  }
//----move ball----####
}
