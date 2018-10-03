class Player extends ObjectSpawner 
{
	public int health;
	public int score;
	
	PImage img;
	float angle;
	float rotationSpeed = 7.5;
	float maxSpeed = 10;

	public Player()
	{
  		super();
  		strokeWeight(2);
  		position.x = width/2;
  		position.y = height/2;
  		health = 10;
  		score = 0;
  		img = loadImage("Assets/Ship.png");
	}

	void update()
	{
		angle += getAxisRaw("Horizontal") * rotationSpeed;
		
		if      (angle > 360) angle = 0;
		else if (angle < 0)   angle = 360;

		if 		(getAxisRaw("Vertical") < 0 && speed < maxSpeed) speed += 1;
		else if (getAxisRaw("Vertical") > 0 && speed > -maxSpeed/2) speed -= 1;
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
  		imageMode(CENTER);
		image(img, 0, 0, 50, 50);
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