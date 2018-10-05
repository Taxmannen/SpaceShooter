class EnemyTank extends Enemy
{

	//constructors
	public EnemyTank(float newX, float newY)
	{
		super(newX,newY);
		img = loadImage("Assets/ETank.png");
		speed = 1;
		hp = 10;
		size = 50;
	}
	public EnemyTank()
	{
		super();
		img = loadImage("Assets/ETank.png");
		speed = 1;
		hp = 10;
		size = 50;
	}

	void update()
	{
		super.update();
		if (dist( position.x, position.y, player.position.x, player.position.y )<25)
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
		pushMatrix();
		translate(position.x, position.y);
		imageMode(CENTER);
		image(img, 0, 0, size, size);
		popMatrix();
		super.draw();
	}

}