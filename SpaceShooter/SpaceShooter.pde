Player player;
Ui ui;
int gameState;
int numberOfEnemies;
ArrayList<Bullet> playerBullets = new ArrayList<Bullet>();
ArrayList<Bullet> enemyBullets = new ArrayList<Bullet>();
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
Background bg; 

void setup()
{
	size(1600, 900);
	frameRate(60);
	reset();
	bg = new Background();
}

void draw() 
{
	currentGameState(gameState);
	if (gameState == 2)
	{
		Objects();
		if (spaceBar) firePlayerBullet();
		EnemyToBulletCollision();
	}
}