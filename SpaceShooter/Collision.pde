boolean PlayerToBulletCollision()
{
	for (Bullet bullet : enemyBullets)
	{
		if(player.position.x < bullet.position.x + bullet.size/2 && player.position.x > bullet.position.x - bullet.size/2)
		{
			if(player.position.y < bullet.position.y + bullet.size/2 && player.position.y > bullet.position.y - bullet.size/2)
			{
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
					//Temporary solution
					playerBullets.remove(j);
					enemies.remove(i);
					//Add player.score on enemy remove
				}
			}
		}
	}
}