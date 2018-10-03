class Health extends PowerUps
{
	//constructors
	public Health(float x, float y)
	{
		super(x,y);
		size = 20;
	}
	public Health()
	{
		super();
		size = 20;
	}

	void draw()
	{
		super.draw();
		fill(0, 200, 0);
		strokeWeight(0);
		ellipse(position.x, position.y, size, size);
		strokeWeight(2);
	}

}