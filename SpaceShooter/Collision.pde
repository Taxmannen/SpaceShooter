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
						GeneratePowerUp(enemy.position);
						if (enemies.get(i) instanceof EnemyStandard) player.score += 10;
						else if (enemies.get(i) instanceof EnemyTank) player.score += 20;
						else if (enemies.get(i) instanceof EnemyFast) player.score += 30;
						enemies.remove(i);
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
				Positioning(enemy);
				return true;
			}
		}
	}
	return false;
}
void Positioning(Enemy enemy)
{
	float x = player.position.x - enemy.position.x;
	float y = player.position.y - enemy.position.y;
	if(abs(x) > abs(y))
	{
		player.position.x = enemy.position.x + (enemy.size/2 + 10) * (x/abs(x));
	}
	else
	{
		player.position.y = enemy.position.y + (enemy.size/2 + 10) * (y/abs(y));
	}
}
boolean PowerUpCollision()
{
	return dist(player.position.x, player.position.y, powerUp.position.x, powerUp.position.y) < 10 + powerUp.size/2;
}