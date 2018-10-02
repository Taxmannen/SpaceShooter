Player player;
Enemy[] enemies;
int numberOfEnemies;
Bullet[] enemyBullets;
ArrayList<Bullet> playerBullets = new ArrayList<Bullet>();

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
	enemyBullets = new Bullet[5];
	for (int i = 0; i < 5; ++i)
	{
		enemyBullets[i] = new Bullet(new PVector(random(width), 0), 128);
	}
}

void draw() 
{
	background(0);
	player.update();
	player.draw();
	for (int i = 0; i < playerBullets.size(); i++)
	{
		Bullet bullet = playerBullets.get(i);
		bullet.draw();
		bullet.update();
		if(bullet.outOfBounds())
		{
			playerBullets.remove(i);
		}
	}
	for (Bullet bullet : enemyBullets)
	{
		bullet.draw();
		bullet.update();
	}
	for (int i = 0; i < numberOfEnemies; ++i)
		enemies[i].update();
	for (int i = 0; i < numberOfEnemies; ++i)
		enemies[i].draw();
	if(spaceBar)
	{
		fireBullet();
	}

}