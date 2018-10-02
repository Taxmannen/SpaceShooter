Player player;
Enemy[] enemies;
int numberOfEnemies;
ArrayList<Bullet> playerBullets = new ArrayList<Bullet>();
ArrayList<Bullet> enemyBullets = new ArrayList<Bullet>();

void setup()
{
	size(1600, 900);
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
	for (int i = 0; i < enemyBullets.size(); i++)
	{
		Bullet bullet = enemyBullets.get(i);
		bullet.draw();
		bullet.update();
		if(bullet.outOfBounds())
		{
			enemyBullets.remove(i);
		}
	}
	for (int i = 0; i < numberOfEnemies; ++i)
	{
		if(frameCount%120 == 0)
			enemies[i].fireBullet(enemyBullets);
		enemies[i].update();
	}
	for (int i = 0; i < numberOfEnemies; ++i)
		enemies[i].draw();
	if(spaceBar)
	{
		firePlayerBullet();
	}

}