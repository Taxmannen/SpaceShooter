public class MultiShot extends PowerUps
{
	public MultiShot(float x, float y)
	{
		super(x, y);
		size = 25;
	}
	public MultiShot()
	{
		super();
	}
	void update()
	{
		super.update();
		if(pickedUp)
		{
			player.multiShot = true;
			powerUp = new PowerUps();
		}
	}
	void draw()
	{
		super.draw();
		fill(200);
		stroke(200);
		ellipse(position.x, position.y, size, size);
	}
}