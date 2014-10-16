//----global----######    
          int PlayerX;
          int PlayerY;
          int PlayerL;
          int PlayerH;
          int PlayerSpeed;
          int ballX;
          int ballY;
          int ballSpeedX;
          int ballSpeedY;
          int ballsize;
          ArrayList bricks;
          int brickL;
          int brickH;
          Player player;
          Ball ball;
          boolean Start;
          boolean win;
          boolean gameover;
          int lives;
          int points;
//----global----######
//----setup----#######
void setup () 
{
          size(800, 400);
          smooth();
          noCursor();
          PlayerL = 150;
          PlayerH = 5;
          PlayerY = height-50;
          PlayerSpeed = 8;
          player = new Player();
          bricks = new ArrayList();
          brickL = 90;
          brickH = 10;
          ball = new Ball();
          ballX = player.x+(PlayerL/2);
          ballY = PlayerY-15;
          ballSpeedX=-5;
          ballSpeedY=-5;
          ballsize=10;
          Start = false;
          gameover = false;
          PFont font = loadFont("Courier-Bold-50.vlw");
          textFont(font);
          textSize(30);
          lives=3;
          points=0;
//---Bricks----#######
//Reihe eins
      for (int i = 0; i < 8; i++)
      {
          Brick brick = new Brick();
          brick.position(((brickL+5)*i) + 20, 90);
          bricks.add(brick);
      }
//Reihe zwei
      for (int i = 0; i < 8; i++)
      {
          Brick brick = new Brick();
          brick.position(((brickL+5)*i) + 20, 105);
          bricks.add(brick);
      }
//Reihe drei
      for (int i = 0; i < 8; i++)
      {
          Brick brick = new Brick();
          brick.position(((brickL+5)*i) + 20, 120);
          bricks.add(brick);
      }
//Reihe vier
            for (int i = 0; i < 8; i++)
      {
          Brick brick = new Brick();
          brick.position(((brickL+5)*i) + 20, 135);
          bricks.add(brick);
      }
//---Bricks----#######
//----setup----#######
}
//----Start----#######
void mouseClicked()
{
  Start = true;
}
//----Start----#######
//----Start2----######
void start2()
{
          size(800, 400);
          smooth();
          noCursor();
          PlayerL = 150;
          PlayerH = 5;
          PlayerY = height-50;
          PlayerSpeed = 8;
          player = new Player();
          ball = new Ball();
          ballX = 10;
          ballY = PlayerY-15;
          ballSpeedX=+6;
          ballSpeedY=-6;
          ballsize=10;
          Start = false;
          gameover = false;
          PFont font = loadFont("Courier-Bold-50.vlw");
          textFont(font);
          textSize(30);
}
//----start2----######
