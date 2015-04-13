class Ship extends GameObject
{

  float w = 50;
  float halfW = w / 2;


  Ship()
  {
    super();
  } 
  
  void cometShape()
  {
    
    stroke(255);
    pushMatrix();
    translate(position.x, position.y);
    rotate(theta);
     strokeWeight(3);
    ellipse(position.x, position.y, w, w);
    popMatrix();
    
  }

  void display()
  {

    pushMatrix();

    stroke(255);

    translate(position.x, position.y);
    rotate(theta);

    strokeWeight(3);
    line(-halfW, halfW, 0, -halfW);
    line(0, -halfW, halfW, halfW);
    line(halfW, halfW, 0, 0);
    line(0, 0, -halfW, halfW);

    if (position.x < 0)
    {
      position.x = width;
    }

    if (position.x > width)
    {
      position.x = 0;
    }

    if (position.y < 0)
    {
      position.y = height;
    }

    if (position.y > height)
    {
      position.y = 0;
    }

    popMatrix();
  }



  void update()
  {


    if (keys['w'] || keys['W']) 
    {
      float newtons = 500;
      force = PVector.mult(forward, newtons);

      pushMatrix();

      translate(position.x, position.y);   
      rotate(theta);
      
      stroke(200,30,0);


      line(0, halfW, -8, 11);
      line(0, halfW, 8, 11);

      popMatrix();
    }

    if (keys['a'] || keys['A']) 
    {

      theta -= 0.1f;
    }

    if (keys['d'] || keys['D'])  
    {

      theta += 0.1f;
    }

    if (mousePressed == true) 
    {
      strokeWeight(6);
      stroke(0,200,0);

      line(position.x, position.y, mouseX, mouseY);
    }

    //    if (keys[' ']) 
    //    {
    //
    //      line(position.x, position.y, mouseX, mouseY);
    //    }

    forward.x = sin(theta);
    forward.y = -cos(theta);

    acceleration = PVector.mult(force, 1.0f / mass);
    velocity.add(PVector.mult(acceleration, timeDelta));
    position.add(PVector.mult(velocity, timeDelta));

    force.x = 0;
    force.y = 0;
  }
}

