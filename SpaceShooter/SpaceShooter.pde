Player player;
int numberOfEnemies;
ArrayList<Bullet> playerBullets = new ArrayList<Bullet>();
ArrayList<Bullet> enemyBullets = new ArrayList<Bullet>();
ArrayList<Enemy> enemies = new ArrayList<Enemy>();

void setup()
{
	size(1600, 900);
	frameRate(60);
	player = new Player();
	numberOfEnemies = 5;
	for (int i = 0; i < numberOfEnemies; ++i)
	{
		if (i == 0)
		{
			enemies.add(new EnemyTank());
		}
		else if (i == 1)
		{
			enemies.add(new EnemyFast());
		}
		else
		enemies.add(new EnemyStandard());
	}
}

void draw() 
{
	background(0);
	player.update();
	if(PlayerToBulletCollision())
	{
		player = new Player();
	}
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
	for (int i = 0; i < enemies.size(); ++i)
	{
		Enemy enemy = enemies.get(i);
		if(frameCount%120 == 0)
			enemy.fireBullet(enemyBullets);
		enemy.update();
	}
	for (int i = 0; i < enemies.size(); ++i)
	{
		Enemy enemy = enemies.get(i);
		enemy.draw();
	}
	if(spaceBar)
	{
		firePlayerBullet();
	}
	EnemyToBulletCollision();

}