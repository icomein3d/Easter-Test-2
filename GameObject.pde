class GameObject
{
  PVector position;
  PVector forward; 
  float speed; 
  float theta; 
  PVector velocity;
  float mass;
  PVector force;
  PVector acceleration;
  PVector up;
  
   
  
  GameObject()
  {
    this(width / 2, height / 2);
    forward = new PVector(0, -1);
    velocity = new PVector(0,0);
    force = new PVector(0,0);
    up = new PVector(0, 30);
    acceleration = new PVector(0,0);
    mass = 1.0f;
  }
  
  GameObject(float x, float y)
  {
    position = new PVector(x, y);
  }
}
