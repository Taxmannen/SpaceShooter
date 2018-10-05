class EnemyStandard extends Enemy
{
	
  //constructor
  public EnemyStandard(float newX, float newY)
  {
  	super(newX,newY);
    img = loadImage("Assets/EStandard.png");
  	speed = 2;
  	hp = 3;
  	size = 40;
  }

  public EnemyStandard()
  {
  	super();
    img = loadImage("Assets/EStandard.png");
  	speed = 2;
  	hp = 3;
  	size = 40;
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
    pushMatrix();
    translate(position.x, position.y);
    rotate(direction.heading()+HALF_PI);
    imageMode(CENTER);
    image(img, 0, 0, size, size);
    popMatrix();

    super.draw();
  }

}
