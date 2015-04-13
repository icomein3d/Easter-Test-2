class Comets extends GameObject
{ 
  
  float size = 40;
  float speed;
  PVector position;
  
  
  
    Comets()
  {
    super();
  } 
 
 void resetComet()
{
//  comet.position.x = random(0, width);
//  comet.position.y = random(0, height);
  comet.size = random(20, 40);
  comet.position = new PVector (random(0, width), random(0, height));
}
 
  
  void display(float x, float y)
  {
    
    position = new PVector(x, y);
    
    
    
    
   pushMatrix();
   
   
    stroke(255);


    rotate(theta);
    
    noFill();
    
//    comet.position.x = random(0, width);
//    comet.position.y = random(0, height);
//    
    ellipse(position.x, position.y, size, size);
    
    for(int i = 0 ; i >= ship.position.x ; i ++)
    {
     position.x += i; 
    }
    

   
    

    
    
    
    popMatrix();
    
    
  }
  
 void update()
  {

  }
  
}
