Player player;
Enemy[] enemies;
int numberOfEnemies;

void setup()
{
	size(800, 600);
	frameRate(60);
	player = new Player();
	numberOfEnemies = 5;
	enemies = new Enemy[numberOfEnemies];
	for (int i = 0; i < numberOfEnemies; ++i)
	{
		enemies[i] = new Enemy();
	}
}

void draw() 
{
	background(0);
	player.update();
	player.draw();

	for (int i = 0; i < numberOfEnemies; ++i)
		enemies[i].update();
	for (int i = 0; i < numberOfEnemies; ++i)
		enemies[i].draw();


}