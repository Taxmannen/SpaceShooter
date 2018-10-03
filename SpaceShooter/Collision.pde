boolean PlayerToBulletCollision()
{
	for (int i = 0; i < enemyBullets.size(); i++)
	{
		Bullet bullet = enemyBullets.get(i);
		if(player.position.x - 10 < bullet.position.x + bullet.size/2 && player.position.x + 10 > bullet.position.x - bullet.size/2)
		{
			if(player.position.y - 10 < bullet.position.y + bullet.size/2 && player.position.y + 10 > bullet.position.y - bullet.size/2)
			{
				enemyBullets.remove(i);
				return true;
			}
		}
	}
	return false;
}
void EnemyToBulletCollision()
{
	for (int i = 0; i < enemies.size(); i++)
	{
		Enemy enemy = enemies.get(i);
		for (int j = 0; j < playerBullets.size(); j++)
		{
			Bullet bullet = playerBullets.get(j);
			if((bullet.position.x - bullet.size/2 < enemy.position.x + enemy.size/2 && bullet.position.x - bullet.size/2 > enemy.position.x - enemy.size/2) || 
				(bullet.position.x + bullet.size/2 < enemy.position.x + enemy.size/2 && bullet.position.x + bullet.size/2 > enemy.position.x - enemy.size/2))
			{
				if((bullet.position.y - bullet.size/2 < enemy.position.y + enemy.size/2 && bullet.position.y - bullet.size/2 > enemy.position.y - enemy.size/2) || 
					(bullet.position.y + bullet.size/2 < enemy.position.y + enemy.size/2 && bullet.position.y + bullet.size/2 > enemy.position.y - enemy.size/2))
				{
					playerBullets.remove(j);
					enemy.hp -= 1;
					if(enemy.hp == 0)
					{
						powerUp = new Shield( enemy.position.x, enemy.position.y );
						enemies.remove(i);
						player.score += 1;
					}
				}
			}
		}
	}
}
boolean PlayerToEnemyCollision()
{
	for (Enemy enemy : enemies) 
	{
		if(player.position.x - 10 < enemy.position.x + enemy.size/2 && player.position.x + 10 > enemy.position.x - enemy.size/2)
		{
			if(player.position.y - 10 < enemy.position.y + enemy.size/2 && player.position.y + 10 > enemy.position.y - enemy.size/2)
			{
				return true;
			}
		}
	}
	return false;
}