Player player;
Ui ui;
int numberOfEnemies;
ArrayList<Bullet> playerBullets = new ArrayList<Bullet>();
ArrayList<Bullet> enemyBullets = new ArrayList<Bullet>();
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
PImage bg;

void setup()
{
	size(1600, 900);
	frameRate(60);
	bg = loadImage("Assets/Background.jpg");
	player = new Player();
	ui = new Ui();
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
		else enemies.add(new EnemyStandard());
	}
}

void draw() 
{
	background(bg);
	Objects();

	//FLYTTAS
	ui.update();
	ui.draw();

	if(spaceBar)
	{
		firePlayerBullet();
	}
	EnemyToBulletCollision();

}