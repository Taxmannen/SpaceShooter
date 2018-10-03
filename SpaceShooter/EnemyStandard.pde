class EnemyStandard extends Enemy
{
	
  //constructor
  public EnemyStandard(float newX, float newY)
  {
  	super(newX,newY);
  	speed = 2;
  	hp = 3;
  	size = 20;
  }

  public EnemyStandard()
  {
  	super();
  	speed = 2;
  	hp = 3;
  	size = 20;
  }

  
  //update function
  void update()
  {
  	super.update();

  	if (dist( position.x, position.y, player.position.x, player.position.y )<400)
  	{
  		if (speed > -2)
  		{
  			speed -= 0.04;
  		}
  	}
  	else
  	{
  		if (speed < 2)
  		{
  			speed += 0.02;
  		}
  	}
  	
  }

  //draw function
  void draw()
  {
  	fill(0, 100, 255);
  	stroke(0, 100, 255);
  	super.draw();
  	
  	rect(position.x, position.y, size, size);
  }

}
