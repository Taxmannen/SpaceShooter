Player player;
Ui ui;
int gameState;
int numberOfEnemies;
ArrayList<Bullet> playerBullets = new ArrayList<Bullet>();
ArrayList<Bullet> enemyBullets = new ArrayList<Bullet>();
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
PImage bg;

void setup()
{
	size(1600, 900);
	frameRate(60);
	reset();
}

void draw() 
{
	background(bg);
	Objects();
	if (spaceBar) firePlayerBullet();
	EnemyToBulletCollision();

}