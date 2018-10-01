class Bullet extends ObjectSpawner
{
	int colour;
 	//constructor
	public Bullet()
	{

	}
	public Bullet(PVector pos, int bulletColour)
	{
		position = new PVector(pos.x, pos.y);
		direction = new PVector(0, 1);
		size = 10;
		colour = bulletColour;
	}

	//update function
	void update()
	{
		position.add(direction);
	}

 	//draw-function
	void draw()
	{
		ellipseMode(CENTER);
		fill(colour);
		ellipse(position.x, position.y, size, size);
	}
}