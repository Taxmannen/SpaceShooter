void Objects()
{
	player.update();
	if (PlayerToBulletCollision())
	{
		player.health -= 1;
		if (player.health == 0) gameState = 1;
		//Remove bullet on collision
	}
	player.draw();
	for (int i = 0; i < playerBullets.size(); i++)
	{
		Bullet bullet = playerBullets.get(i);
		bullet.draw();
		bullet.update();
		if(bullet.outOfBounds())
		{
			playerBullets.remove(i);
		}
	}
	for (int i = 0; i < enemyBullets.size(); i++)
	{
		Bullet bullet = enemyBullets.get(i);
		bullet.draw();
		bullet.update();
		if(bullet.outOfBounds())
		{
			enemyBullets.remove(i);
		}
	}
	for (int i = 0; i < enemies.size(); ++i)
	{
		Enemy enemy = enemies.get(i);
		if(frameCount%120 == 0 && (enemies.get(i) instanceof EnemyStandard || enemies.get(i) instanceof EnemyFast))
			enemy.fireBullet(enemyBullets);
		enemy.update();
	}
	for (int i = 0; i < enemies.size(); ++i)
	{
		Enemy enemy = enemies.get(i);
		enemy.draw();
	}
}