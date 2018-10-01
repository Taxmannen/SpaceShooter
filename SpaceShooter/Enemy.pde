class Enemy extends ObjectSpawner {
  
  //constructor
	public Enemy(float newX, float newY)
	{
		super(newX,newY);
		speed = 2;
		size = 20;
	}

	public Enemy()
	{
		super();
		speed = 2;
		size = 20;
	}

  
  //update function
	void update()
	{
		super.update();
		float magnitude = sqrt( (player.position.x - position.x) * (player.position.x - position.x) + (player.position.y - position.y) * (player.position.y - position.y) );
		direction.x = (player.position.x - position.x) / magnitude;
		direction.y = (player.position.y - position.y) / magnitude;

		if (dist( position.x, position.y, player.position.x, player.position.y )<250)
		{
			direction.x *=-1;
			direction.y *=-1;
		}
		
		position.x += direction.x * speed;
		position.y += direction.y * speed;


		if (position.x > width+10 || position.x < -10)
		{
			direction.x *= -1;
		}
		if (position.y > height+10 || position.y < -10)
		{
			direction.y *= -1;
		}

	}

  //draw function
	void draw()
	{
		super.draw();
		rect(position.x, position.y, size, size);
	}

}
