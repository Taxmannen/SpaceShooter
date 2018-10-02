class Player extends ObjectSpawner 
{
	float rotation;
	float rotationSpeed;

	public Player()
	{
  		super();
  		strokeWeight(2);
  		position.x = width/2;
  		position.y = height/2;
  		speed = 10;
  		rotationSpeed = 7.5;
	}

	void update()
	{
		rotation += getAxisRaw("Horizontal") * rotationSpeed;
		
		if (rotation > 360) rotation = 0;
		else if (rotation < 0) rotation = 360;

		if (getAxisRaw("Vertical") < 0)  
		{
			position.x += sin(radians(rotation)) * speed; 
			position.y += cos(radians(rotation)) *- speed;
		}
		else if (getAxisRaw("Vertical") > 0)
		{
			position.x -= sin(radians(rotation)) * (speed/2); 
			position.y -= cos(radians(rotation)) *- (speed/2);
		}
	}

	void draw()
	{
		pushMatrix();
		stroke(255);
  		translate(position.x, position.y);
  		rotate(radians(rotation));
		line(0, -10, 10, 10);
		line(0, -10, -10, 10);
		popMatrix();
	}
}