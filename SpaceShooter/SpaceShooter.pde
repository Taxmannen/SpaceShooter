import processing.sound.*;
SoundFile bulletSound;
SoundFile deathSound;
SoundFile healthSound;
SoundFile powerUpSound;
SoundFile musicDeath;
SoundFile musicGame;
SoundFile musicMenu;

Player player;
Background bg;
Ui ui;
int gameState;
int numberOfEnemies;
PowerUps powerUp;
ArrayList<Bullet> playerBullets = new ArrayList<Bullet>();
ArrayList<Bullet> enemyBullets = new ArrayList<Bullet>();
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
ArrayList<Effect> effects = new ArrayList<Effect>();
boolean once;

void setup()
{
	size(1600, 900);
	frameRate(60);
	reset();
	soundSetup();
	gameState = 0;
}

void draw() 
{
	currentGameState(gameState);
	if (gameState == 2)
	{
		musicMenu.stop();
		bg.draw();
		Objects();
		EnemyToBulletCollision();
		ui.draw();
	}
}

void soundSetup() 
{
	bulletSound  = new SoundFile(this, "Assets/Sounds/Bullet.wav");
	deathSound   = new SoundFile(this, "Assets/Sounds/Death.wav");
	healthSound  = new SoundFile(this, "Assets/Sounds/Health.wav");
	powerUpSound = new SoundFile(this, "Assets/Sounds/Power Up.wav");
	musicMenu = new SoundFile(this, "Assets/Sounds/MusicMenu.wav");
	musicGame = new SoundFile(this, "Assets/Sounds/MusicGame.wav");
	musicDeath = new SoundFile(this, "Assets/Sounds/MusicDeath.wav");

}