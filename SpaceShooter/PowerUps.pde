class PowerUps extends ObjectSpawner
{
	boolean pickedUp = false;

	//constructors
	public PowerUps(float x, float y)
	{
		super(x,y);

	}
	public PowerUps()
	{
		super();
	}

	void update()
	{
	}

	void draw()
	{
		ellipseMode(CENTER);
		rectMode(CENTER);
	}

}