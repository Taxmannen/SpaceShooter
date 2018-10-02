class EnemyFast extends Enemy
{
  
  //constructor
	public EnemyFast(float newX, float newY)
	{
		super(newX,newY);
		speed = 3;
		size = 10;
	}

	public EnemyFast()
	{
		super();
		speed = 3;
		size = 10;
	}

  
  //update function
	void update()
	{
		super.update();

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
		super.draw();
		stroke(255);
		rect(position.x, position.y, size, size/2);
	}

	//Attack function
	void fireBullet(ArrayList<Bullet> bulletList)
	{
		bulletList.add(new Bullet(position, direction, 128));
	}

}
