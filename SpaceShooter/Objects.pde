void Objects()
{
	player.update();
	if (PlayerToBulletCollision())
	{
		player.hp -= 1;
		if (player.hp == 0) gameState = 1;
		//Remove bullet on collision
	}
	if (PlayerToEnemyCollision())
	{
		player.hp -= 1;
		if (player.hp == 0) gameState = 1;
	}
	if (powerUp.size != 0)
	{
		if(PowerUpCollision())
		{
			powerUp.pickedUp = true;
		}
	}
	powerUp.update();
	powerUp.draw();
	player.healthUpdate();
	player.draw();
	for (int i = 0; i < playerBullets.size(); i++)
	{
		Bullet bullet = playerBullets.get(i);
		bullet.draw();
		bullet.update();
		if (bullet.outOfBounds())
		{
			playerBullets.remove(i);
		}
	}

	for (int i = 0; i < enemyBullets.size(); i++)
	{
		Bullet bullet = enemyBullets.get(i);
		bullet.draw();
		bullet.update();
		if (bullet.outOfBounds())
		{
			enemyBullets.remove(i);
		}
	}

	for (int i = 0; i < enemies.size(); ++i)
	{
		Enemy enemy = enemies.get(i);
		if (frameCount%120 == 0 && (enemies.get(i) instanceof EnemyStandard || enemies.get(i) instanceof EnemyFast))
			enemy.fireBullet(enemyBullets);
		enemy.update();
	}

	for (int i = 0; i < enemies.size(); ++i)
	{
		Enemy enemy = enemies.get(i);
		enemy.draw();
	}

	for (int i = 0; i < effects.size(); i++) 
	{ 
		effects.get(i).draw();
		if (effects.get(i).size <= 0) effects.remove(i);
	}
	ui.draw();
}
void GeneratePowerUp(PVector enemyPos)
{
	//10% chans för powerup på en kill.
	int rand = (int)random(1, 101);
	if (rand <= 100)
	{
		//randomiserar vilken powerup man får.
		rand = (int)random(1, 3);
		switch (rand)
		{
			case 1:
			powerUp = new Shield( enemyPos.x, enemyPos.y );
			break;

			case 2:
			powerUp = new Health( enemyPos.x, enemyPos.y );
			break;	

			default:
			println("Default");
			break;
		}
	}
}