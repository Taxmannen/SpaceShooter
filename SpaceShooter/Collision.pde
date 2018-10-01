boolean PlayerToBulletCollision()
{
	return false;
}
boolean EnemyToBulletCollision()
{
	for (ObjectSpawner enemy : enemies)
	{
		for (ObjectSpawner bullet : playerBullets)
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