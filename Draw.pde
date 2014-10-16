void draw()
{
    
          background(159,159,159);
          line(0, 80, width, 80);
          player.show();
          ball.show();
          text("Lives: " + lives,50,50); 
          text("Page 404",(width/3+60),50); 
		  
          text("Points: " + points, (width-220), 50); 
          if((!Start)&&(!gameover))
          {
          text("mouseclick to start", 200, (height/2));
          }      
//----draw bricks----######            
          for (int i = 0; i < bricks.size(); i++)
    {
          Brick brick = (Brick) bricks.get(i);
          brick.show();
          
          if (brick.hit())
          {
          ballSpeedY = -1*ballSpeedY;
          {
          bricks.remove(brick);
          points=points+10;
          }       
          }
    }    
//----draw bricks----######
 //----Start----###########
          if((Start)&&(!gameover)&&(!win))
          {
          ball.move();
          player.move(mouseX);
          }  
//----Start----###########
 //----gameover----#######
          if(lives==0){
          gameover=true;
          }          
          if(gameover)
          {
          text("game over", 320, (height/2));
          }
//----gameover----#######
//----win----############
          if(points==320)
          {
          win=true;
          }
          if(win)
          {
          text("win!", 345, (height/2));
          }
//----win----############    
}

