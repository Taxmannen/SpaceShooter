class Bullet extends ObjectSpawner
{

  //constructor
	public Bullet()
	{

	}
	public Bullet(PVector pos)
	{
		position = new PVector(pos.x, pos.y);
		direction = new PVector(0, 1);
		size = 10;
	}

  //update function
	void update()
	{
		position.add(direction);
	}

  //draw-function
	void draw()
	{
		ellipse(position.x, position.y, size, size);
	}

}