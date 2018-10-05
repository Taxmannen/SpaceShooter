class EnemyFast extends Enemy
{

  //constructor
  public EnemyFast(float newX, float newY)
  {
  	super(newX,newY);
    img = loadImage("Assets/EFast.png");
    speed = 3;
    hp = 1;
    size = 30;
  }

  public EnemyFast()
  {
  	super();
    img = loadImage("Assets/EFast.png");
    speed = 3;
    hp = 1;
    size = 30;
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
    pushMatrix();
    translate(position.x, position.y);
    rotate(direction.heading()+HALF_PI);
    imageMode(CENTER);
    image(img, 0, 0, size, size);
    popMatrix();
    super.draw();
  }

}
