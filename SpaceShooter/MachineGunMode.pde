public class MachineGunMode extends PowerUps
{
	int time;
	public MachineGunMode(float x, float y)
	{
		super(x, y);
		size = 25;
	}
	public MachineGunMode()
	{
		super();
	}
	void update()
	{
		super.update();
		if(pickedUp)
		{
			position.set(-10, -10);
			if(time/60 < 10)
			{
				time++;
				if(spaceBar && time%5 == 0)
					firePlayerBullet();
			}
			else
			{
				powerUp = new PowerUps();
			}
		}
	}
	void draw()
	{
		super.draw();
		fill(64);
		stroke(64);
		ellipse(position.x, position.y, size, size);
	}
}