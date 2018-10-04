class Health extends PowerUps
{
	//constructors
	public Health(float x, float y)
	{
		super(x,y);
		img = loadImage("Assets/heart.png");
		size = 20;
	}
	public Health()
	{
		super();
		img = loadImage("Assets/heart.png");
		size = 20;
	}

	void update()
	{
		if (pickedUp)
		{
			powerUp = new PowerUps();
			player.hp += 2;
		}
	}

	void draw()
	{
		super.draw();
		fill(0, 200, 0);
		strokeWeight(0);
		imageMode(CENTER);
		image(img, position.x, position.y, 35, 35);
		strokeWeight(2);
	}

}