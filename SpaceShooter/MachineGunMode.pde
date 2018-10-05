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
			player.machineGunMode = true;
			powerUp = new PowerUps();
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