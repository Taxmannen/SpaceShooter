Player player;
Ui ui;
int gameState;
int numberOfEnemies;
PowerUps powerUp;
ArrayList<Bullet> playerBullets = new ArrayList<Bullet>();
ArrayList<Bullet> enemyBullets = new ArrayList<Bullet>();
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
Background bg; 
boolean once;

void setup()
{
	size(1600, 900);
	frameRate(60);
	reset();
	gameState = 0;
}

void draw() 
{
	currentGameState(gameState);
	if (gameState == 2)
	{
		bg.draw();
		Objects();
		if (spaceBar && once) firePlayerBullet();
		EnemyToBulletCollision();
		ui.draw();
	}
}