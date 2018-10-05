Player player;
Ui ui;
int gameState;
int numberOfEnemies;
PowerUps powerUp;
ArrayList<Bullet> playerBullets = new ArrayList<Bullet>();
ArrayList<Bullet> enemyBullets = new ArrayList<Bullet>();
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
ArrayList<Effect> effects = new ArrayList<Effect>();
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
		EnemyToBulletCollision();
		ui.draw();
	}
}