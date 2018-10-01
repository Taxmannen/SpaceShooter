boolean PlayerToBulletCollision()
{
	for (Bullet bullet : enemyBullets)
	{
		if((bullet.position.x - bullet.size/2 < player.position.x + player.size/2 && bullet.position.x - bullet.size/2 > player.position.x - player.size/2) || 
				(bullet.position.x + bullet.size/2 < player.position.x + player.size/2 && bullet.position.x + bullet.size/2 > player.position.x - player.size/2))
			{
				if((bullet.position.y - bullet.size/2 < player.position.y + player.size/2 && bullet.position.y - bullet.size/2 > player.position.y - player.size/2) || 
					(bullet.position.y + bullet.size/2 < player.position.y + player.size/2 && bullet.position.y + bullet.size/2 > player.position.y - player.size/2))
				{
					return true;
				}
			}
	}
	return false;
}
boolean EnemyToBulletCollision()
{
	for (Enemy enemy : enemies)
	{
		for (Bullet bullet : playerBullets)
		{
			if((bullet.position.x - bullet.size/2 < enemy.position.x + enemy.size/2 && bullet.position.x - bullet.size/2 > enemy.position.x - enemy.size/2) || 
				(bullet.position.x + bullet.size/2 < enemy.position.x + enemy.size/2 && bullet.position.x + bullet.size/2 > enemy.position.x - enemy.size/2))
			{
				if((bullet.position.y - bullet.size/2 < enemy.position.y + enemy.size/2 && bullet.position.y - bullet.size/2 > enemy.position.y - enemy.size/2) || 
					(bullet.position.y + bullet.size/2 < enemy.position.y + enemy.size/2 && bullet.position.y + bullet.size/2 > enemy.position.y - enemy.size/2))
				{
					return true;
				}
			}
		}
	}
	return false;
}