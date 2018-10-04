class Shield extends PowerUps
{
	//constructors
	public Shield(float x, float y)
	{
		super(x,y);
		size = 25;
		hp = 5;
	}
	public Shield()
	{
		super();
		size = 25;
		hp = 5;
	}

	void update()
	{
		super.update();
		if (pickedUp)
		{
			size = 80;
			position.x = player.position.x;
			position.y = player.position.y;
			if(PowerUpEnemyCollision())
			{
				hp -= 1;
				if(hp == 0)
				{
					powerUp = new PowerUps();
				}
			}
		}
	}

	void draw()
	{
		super.draw();
		noFill();
		strokeWeight(hp * 2);
		ellipse(position.x, position.y, size, size);
		strokeWeight(2);
	}

}


