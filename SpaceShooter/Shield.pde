class Shield extends PowerUps
{
	//constructors
	public Shield(float x, float y)
	{
		super(x,y);
		size = 25;
	}
	public Shield()
	{
		super();
		size = 25;
	}

	void update()
	{
		super.update();
		if (pickedUp)
		{
			size = 80;
			position.x = player.position.x;
			position.y = player.position.y;
		}
	}

	void draw()
	{
		super.draw();
		noFill();
		strokeWeight(10);
		ellipse(position.x, position.y, size, size);
		strokeWeight(2);
	}

}


