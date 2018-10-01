Player player;
Enemy[] enemies;
int numberOfEnemies;
Bullet[] playerBullets;

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
	playerBullets = new Bullet[5];
	for (int i = 0; i < 5; ++i)
	{
		playerBullets[i] = new Bullet(new PVector(random(width), 0));
	}
}

void draw() 
{
	background(0);
	player.update();
	player.draw();
	for (Bullet bullet : playerBullets)
	{
		bullet.draw();
		bullet.update();
	}
	if (EnemyToBulletCollision())
	{
		println(EnemyToBulletCollision());
	}
	for (int i = 0; i < numberOfEnemies; ++i)
		enemies[i].update();
	for (int i = 0; i < numberOfEnemies; ++i)
		enemies[i].draw();


}