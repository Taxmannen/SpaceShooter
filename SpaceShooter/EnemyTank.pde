class EnemyTank extends Enemy
{

	//constructors
	public EnemyTank(float newX, float newY)
	{
		super(newX,newY);
		speed = 1;
		size = 30;
	}
	public EnemyTank()
	{
		super();
		speed = 1;
		size = 30;
	}

	void update()
	{
		super.update();
		if (dist( position.x, position.y, player.position.x, player.position.y )<5)
		{
			if (speed > -2)
			{
				speed -= 2;
			}
		}
		else
		{
			if (speed < 1)
			{
				speed += 0.015;
			}
		}
	}

	void draw()
	{
		super.draw();
		ellipse(position.x, position.y, size, size);
	}

}