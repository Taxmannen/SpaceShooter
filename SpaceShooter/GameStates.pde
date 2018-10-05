void currentGameState(int gs)
{
	//Menu screen
	if (gameState == 0)
	{
		if (frameCount == 1)
		{
			musicMenu.play();
		}

		PImage bg = loadImage("Assets/Menu.png");
		image(bg, 0, 0);
		textAlign(CENTER);
		textSize(125);
		fill(0, 255, 255);
		text("Space Shooter\n9001!", width/2, height/3+-70);
		textSize(60);
		fill(255, 0, 235);
		text("Press R to start.", width/2, height/2+200);
		if (restart)
		{
			musicMenu.stop();
			musicGame.play();
			gameState = 2;
			restart = false;
		}
	}

	//Game Over screen.
	if (gameState == 1)
	{
		background(0);
		imageMode(CORNER);
		PImage go = loadImage("Assets/Background.png");
		image(go, 0, 0);
		textAlign(CENTER);
		textSize(155);
		fill(200, 0, 0);
		text("Game Over!", width/2, height/3-50);
		textSize(55);
		fill(100, 100, 255);
		text("Your total score was " + (player.score + player.timeScore), width/2, height/2);
		textSize(35);
		fill(127);
		text("Press R to restart.", width/2, height/2+285);

		if (restart)
		{
			musicDeath.stop();
			musicGame.play();
			restart = false;
			playerBullets.clear();
			enemyBullets.clear();
			enemies.clear();
			reset();
		}
	}
}

void reset()
{
	gameState = 2;
	bg = new Background();
	ui = new Ui();
	powerUp = new Shield(-20, -20);
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
		else enemies.add(new EnemyStandard());
	}
}
