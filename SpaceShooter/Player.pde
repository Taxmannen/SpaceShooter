class Player extends ObjectSpawner 
{	
	float time;
	float oldTime;
	int score;
	int timeScore;

	float angle;
	float rotationSpeed = 4.5;
	float maxSpeed = 5;
	int maxHP = 10;
	int mgmTime = 0;
	int shieldHp = 0;
	boolean shield = false, machineGunMode = false, multiShot = false;

	public Player()
	{
  		super();
  		img = loadImage("Assets/Ship.png");
  		strokeWeight(2);
  		position.x = width/2;
  		position.y = height/2;
  		hp = 10;
  		score = 0;
  		time = 0;
  		size = 60;
  		oldTime = millis();
	}

	void update()
	{
		time = millis() - oldTime;
		timeScore = (int)time/1000;

		angle += getAxisRaw("Horizontal") * rotationSpeed;
		
		if      (angle > 360) angle = 0;
		else if (angle < 0)   angle = 360;

		if 		(getAxisRaw("Vertical") < 0 && speed < maxSpeed) speed += 1;
		else if (getAxisRaw("Vertical") > 0 && speed > -maxSpeed/2) speed -= 1;
		else if (speed < 0) speed += 0.25f; 
		else if (speed > 0) speed -= 0.25f;

		if (spaceBar && once) 
		{
			MultiFiring();
			firePlayerBullet();
		}
		Mgm();
		PowerShield();

		position.x += sin(radians(angle)) * speed; 
		position.y -= cos(radians(angle)) * speed;

		screenCheck();
	}

	void draw()
	{
		pushMatrix();
		stroke(255);
  		translate(position.x, position.y);
  		rotate(radians(angle));
  		imageMode(CENTER);
		image(img, 0, 0, size, size);
		popMatrix();
	}

	void healthUpdate()
	{
		if (hp > maxHP) hp = maxHP;
	}
	void MultiFiring()
	{
		if(spaceBar && once && multiShot)
		{
			playerBullets.add(new Bullet(player.position, new PVector(sin(radians(player.angle + 30)) * player.maxSpeed, cos(radians(player.angle + 30)) * -player.maxSpeed), 255, 5));
			playerBullets.add(new Bullet(player.position, new PVector(sin(radians(player.angle - 30)) * player.maxSpeed, cos(radians(player.angle - 30)) * -player.maxSpeed), 255, 5));
		}
	}
	void Mgm()
	{
		if(mgmTime/60 < 10 && machineGunMode)
		{
			mgmTime++;
			if(spaceBar && mgmTime%5 == 0)
			{
				firePlayerBullet();
				if(multiShot)
				{
					playerBullets.add(new Bullet(player.position, new PVector(sin(radians(player.angle + 30)) * player.maxSpeed, cos(radians(player.angle + 30)) * -player.maxSpeed), 255, 5));
					playerBullets.add(new Bullet(player.position, new PVector(sin(radians(player.angle - 30)) * player.maxSpeed, cos(radians(player.angle - 30)) * -player.maxSpeed), 255, 5));
				}
			}
		}
		else
		{
			machineGunMode = false;
			mgmTime = 0;
		}
	}
	void PowerShield()
	{
		if(shield)
		{
			noFill();
			strokeWeight(shieldHp * 2);
			ellipse(position.x, position.y, size + 20, size + 20);
			strokeWeight(2);
			if(PowerUpEnemyCollision())
			{
				shieldHp--;
				if (shieldHp <= 0)
				{
					shield = false;
				}
			}
		}
	}
	void firePlayerBullet()
	{
		once = false;
		PVector dir = new PVector(sin(radians(player.angle)) * player.maxSpeed, cos(radians(player.angle)) * -player.maxSpeed);
		dir.normalize();
		dir.mult(3);
		playerBullets.add(new Bullet(player.position, dir, 255, 5));
		bulletSound.play();
	}
}