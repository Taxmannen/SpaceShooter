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
			position.set(-10, -10);
			if(spaceBar && once)
			{
				playerBullets.add(new Bullet(player.position, new PVector(sin(radians(player.angle + 30)) * player.maxSpeed, cos(radians(player.angle + 30)) * -player.maxSpeed), 255, 5));
				playerBullets.add(new Bullet(player.position, new PVector(sin(radians(player.angle - 30)) * player.maxSpeed, cos(radians(player.angle - 30)) * -player.maxSpeed), 255, 5));
			}
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