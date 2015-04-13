void setup()
{
  size(500, 500);
  ship = new Ship(); 
  comet = new Comets();
}

boolean[] keys = new boolean[526];

Ship ship;
Comets comet;



float timeDelta = 1.0f/60.0f;

void draw()
{
  background(0);
  ship.display();
  ship.update();
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

