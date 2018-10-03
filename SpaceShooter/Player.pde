class Player extends ObjectSpawner 
{
	public int health;
	public int score;
	
	float angle;
	float rotationSpeed = 7.5;

	public Player()
	{
  		super();
  		strokeWeight(2);
  		position.x = width/2;
  		position.y = height/2;
  		health = 10;
  		score = 0;
	}

	void update()
	{
		angle += getAxisRaw("Horizontal") * rotationSpeed;
		
		if      (angle > 360) angle = 0;
		else if (angle < 0)   angle = 360;

		if 		(getAxisRaw("Vertical") < 0 && speed < 10) speed += 1;
		else if (getAxisRaw("Vertical") > 0 && speed > -5) speed -= 1;
		else if (speed < 0) speed += 0.25f; 
		else if (speed > 0) speed -= 0.25f;

		position.x += sin(radians(angle)) * speed; 
		position.y -= cos(radians(angle)) * speed;

		screenCheck();
	}

	void draw()
	{
		pushMatrix();
		stroke(255);
  		translate(position.x, position.y);
  		rotate(radians(angle));
		line(0, -10, 10, 10);
		line(0, -10, -10, 10);
		popMatrix();
	}

	void screenCheck() 
	{
		if (position.x > width) position.x = 0;
		else if (position.x < 0) position.x = width;

		if (position.y > height) position.y = 0;
		else if (position.y < 0) position.y = height;
	}
}