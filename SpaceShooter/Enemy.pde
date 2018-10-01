class Enemy extends ObjectSpawner {
  
  //constructor
	Enemy(float newX, float newY)
	{
		super(newX,newY);
		speed = 2;
	}

	Enemy()
	{
		super();
		speed = 5;
	}

  
  //update function
	void update()
	{
		super.update();
		position.x += direction.x * speed;
		position.y += direction.y * speed;

		if (position.x > width+5 || position.x < -15)
		{
			direction.x *= -1;
		}
		if (position.y > height/2 || position.y < -15)
		{
			direction.y *= -1;
		}

	}

  //draw function
	void draw()
	{
		super.draw();
		ellipse(position.x, position.y, 10, 10);
	}

}
