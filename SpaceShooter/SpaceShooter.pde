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
	Objects();
	if(spaceBar)
	{
		firePlayerBullet();
	}
	EnemyToBulletCollision();

}