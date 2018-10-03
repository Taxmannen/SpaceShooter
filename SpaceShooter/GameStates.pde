void currentGameState(int gs)
{
	//Menu screen
	if (gameState == 0)
	{
		background(0);
		textSize(50);
    	textAlign(CENTER);
		text("Menu.\nPress R to start.", width/2, height/3);
		if (restart)
		{
			gameState = 2;
			restart = false;
		}
	}

	//Game Over screen.
	if (gameState == 1)
	{
		background(0);
		textSize(50);
		textAlign(CENTER);
		text("Game Over.\nPress R to restart.", width/2, height/3);
		if (restart)
		{
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
