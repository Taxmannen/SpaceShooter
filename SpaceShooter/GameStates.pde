void currentGameState(int gs)
{
	//Menu screen
	if (gameState == 0)
	{
		background(0);
		textSize(50);
    	textAlign(CENTER);
		text("Menu.\nPress Space to start.", width/2, height/3);
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
		textAlign(CENTER);
		text("Game Over.\nPress Space to reset.", width/2, height/3);
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
