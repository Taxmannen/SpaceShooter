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
			player.mgmTime = 0;
			powerUp = new PowerUps();
			powerUpSound.play();
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