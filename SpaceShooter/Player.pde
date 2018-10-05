class Player extends ObjectSpawner 
{	
	float time;
	float oldTime;
	int score;
	int timeScore;

	float angle;
	float rotationSpeed = 4.5;
	float maxSpeed = 5;
	int maxHP = 10;

	public Player()
	{
  		super();
  		img = loadImage("Assets/Ship.png");
  		strokeWeight(2);
  		position.x = width/2;
  		position.y = height/2;
  		hp = 10;
  		score = 0;
  		time = 0;
  		size = 50;
  		oldTime = millis();
	}

	void update()
	{
		time = millis() - oldTime;
		timeScore = (int)time/1000;

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
		image(img, 0, 0, size, size);
		popMatrix();
	}

	void healthUpdate()
	{
		if (hp > maxHP) hp = maxHP;
	}
}