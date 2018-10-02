class Bullet extends ObjectSpawner
{
	int colour;
 	//constructor
	public Bullet()
	{
		position = new PVector(-20, -20);
		direction = new PVector(0, 0);
		size = 0;
		colour = 0;
	}
	public Bullet(PVector pos, int bulletColour)
	{
		position = new PVector(pos.x, pos.y);
		//temp direction
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

	boolean outOfBounds()
	{
		if(position.x + size/2 < 0 || position.x - size/2 > width)
		{
			return true;
		}
		else if(position.y + size/2 < 0 || position.y - size/2 > height)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}