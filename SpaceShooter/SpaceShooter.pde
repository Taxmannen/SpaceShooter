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
}

void draw() 
{
	currentGameState(gameState);
	if (gameState == 2)
	{
		bg.draw();
		Objects();ui.draw();
		if (spaceBar) firePlayerBullet();
		EnemyToBulletCollision();
		ui.draw();
	}
}