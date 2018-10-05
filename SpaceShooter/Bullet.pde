class Bullet extends ObjectSpawner
{
	int colour;
 	//constructor
	public Bullet()
	{
		
	}
	public Bullet(PVector pos, PVector dir, int bulletColour, float speed)
	{
		position = new PVector(pos.x, pos.y);
		direction = new PVector(dir.x, dir.y);
		size = 10;
		colour = bulletColour;
		direction.mult(speed);
		bulletSound.play();
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