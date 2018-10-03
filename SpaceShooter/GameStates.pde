void currentGameState(int gs)
{
	//Menu screen
	if (gameState == 0)
	{
		background(0);
		textSize(50);
		text("Menu. Press Space to start.", width/2, height/2);
		if (spaceBar)
		{
			gameState = 2;
		}
	}

	//Game Over screen.
	if (gameState == 1)
	{
		background(0);
		textSize(50);
		text("Game Over. Space to reset.", width/2, height/2);
		if (spaceBar)
		{
			playerBullets.clear();
			enemyBullets.clear();
			enemies.clear();
			reset();
		}
	}


}

void reset()
{
	gameState = 0;
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