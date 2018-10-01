Player player;

void setup()
{
	size(512, 512);
	player = new Player();
}

void draw() 
{
	background(255);
	player.update();
	player.draw();
}