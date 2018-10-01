class Player extends ObjectSpawner 
{
	public Player()
	{
  		super();
  		strokeWeight(2);
  		speed = 10;
	}

	void update()
	{
		println(position.x);
		position.x += getAxisRaw("Horizontal") * speed;
		position.y += getAxisRaw("Vertical") * speed;
	}

	void draw()
	{
		stroke(255);
		line(position.x, position.y, position.x + 10, position.y + 20);
		line(position.x, position.y, position.x - 10, position.y + 20);
	}
}