class EnemyFast extends Enemy
{

  //constructor
  public EnemyFast(float newX, float newY)
  {
  	super(newX,newY);
  	speed = 3;
  	hp = 1;
  	size = 10;
  }

  public EnemyFast()
  {
  	super();
  	speed = 3;
  	hp = 1;
  	size = 10;
  }

  
  //update function
  void update()
  {
  	super.update();

  	for (Bullet bullet : playerBullets)
  	{
  		if ( dist(position.x, position.y, bullet.position.x, bullet.position.y) < 50 ) 
  		{
  			float magnitude = sqrt( (bullet.position.x - position.x) * (bullet.position.x - position.x) + (bullet.position.y - position.y) * (bullet.position.y - position.y) );
  			direction.x = (bullet.position.x - position.x) / magnitude;
  			direction.y = (player.position.y - position.y) / magnitude;

  			position.x += direction.y;
  			position.y += direction.x;

  			break;
  		}
  	}

  	if (dist( position.x, position.y, player.position.x, player.position.y )<200)
  	{
  		if (speed > -3)
  		{
  			speed -= 0.15;
  		}
  	}
  	else
  	{
  		if (speed < 3)
  		{
  			speed += 0.1;
  		}
  	}

  }

  //draw function
  void draw()
  {
  	fill(255, 0, 0);
  	stroke(255, 0, 0);
  	super.draw();

  	rect(position.x, position.y, size, size/2);
  }

}
