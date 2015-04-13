void setup()
{
  size(500, 500);
  ship = new Ship(); 
  comet = new Comets();
  ship1 = new AIShip(); 
  ship2= new AIShip(); 
  ship3 = new AIShip(); 
}

boolean[] keys = new boolean[526];

Ship ship;
Comets comet;
AIShip ship1, ship2, ship3;




float timeDelta = 1.0f/60.0f;

void draw()
{
  background(0);
  ship.display();
  ship.update();
  ship1.update();
  ship1.cometShape();
    ship2.update();
  ship2.cometShape();
    ship3.update();
  ship3.cometShape();
  comet.display(40,40);
}

float distance(int x1, int y1, float x2, float y2)
{
  float xDist = x2 - x1;
  float yDist = y2 - y1;
  float dist = sqrt(xDist * xDist + yDist * yDist);
  return dist;
}

void mousePressed()
{

  float d = distance(mouseX, mouseY, comet.position.x, comet.position.y);
  if (d < comet.size / 2)
  {

    comet.resetComet();
  }
}

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

