Player player;

void setup()
{
	player = new Player();
}

void draw() 
{
	player.update();
	player.draw();
}