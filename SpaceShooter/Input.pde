boolean moveLeft;
boolean moveRight;
boolean moveUp;
boolean moveDown;
boolean spaceBar;
void keyPressed() 
{
	if (key == CODED) 
	{
		if 		(keyCode == RIGHT) moveRight = true;
		else if (keyCode == LEFT) moveLeft = true;
		else if (keyCode == UP) moveUp = true;
		else if (keyCode == DOWN) moveDown = true;
	}
	else 
	{
		if 		(key == 'a') moveLeft = true;
		else if (key == 'd') moveRight = true;
		else if (key == 'w') moveUp = true;
		else if (key == 's') moveDown = true;
	}
	if(keyCode == 32)
	{
		spaceBar = true;
	}

}

void keyReleased() 
{
	if (key == CODED) 
	{
		if 		(keyCode == RIGHT) moveRight = false;
		else if (keyCode == LEFT) moveLeft = false;
		else if (keyCode == UP) moveUp = false;
		else if (keyCode == DOWN) moveDown = false;
	}
	else 
	{
		if 		(key == 'a') moveLeft = false;
		else if (key == 'd') moveRight = false;
		else if (key == 'w') moveUp = false;
		else if (key == 's') moveDown = false;
	}
	if(keyCode == 32)
	{
		spaceBar = false;
		once = true;
	}
}

float getAxisRaw(String axis) 
{
	if (axis == "Horizontal")
	{
		if (moveLeft && moveRight) return 0;
		if (moveLeft) return -1;
		if (moveRight) return 1;
	}

	else if (axis == "Vertical") 
	{
		if (moveUp && moveDown) return 0;
		if (moveUp) return -1;
		if (moveDown) return 1;
	}
	return 0;
}
void firePlayerBullet()
{
	spaceBar = false;
	once = false;
	PVector dir = new PVector(sin(radians(player.angle)) * player.maxSpeed, cos(radians(player.angle)) * -player.maxSpeed);
	dir.normalize();
	dir.mult(3);
	playerBullets.add(new Bullet(player.position, dir, 255, 5));
}