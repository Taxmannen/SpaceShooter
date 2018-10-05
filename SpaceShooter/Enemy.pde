class Enemy extends ObjectSpawner
{

  //constructor
  public Enemy(float newX, float newY)
  {
  	super(newX,newY);
  }

  public Enemy()
  {
  	super();
  }

  //update function
  void update()
  {
  	super.update();
  	float magnitude = sqrt( (player.position.x - position.x) * (player.position.x - position.x) + (player.position.y - position.y) * (player.position.y - position.y) );

  	direction.x = (player.position.x - position.x) / magnitude;
  	direction.y = (player.position.y - position.y) / magnitude;

  	position.x += direction.x * speed;
  	position.y += direction.y * speed;
  }

  //draw function
  void draw()
  {
  	super.draw();
  	rectMode(CENTER);
  	ellipseMode(CENTER);
  }

  void fireBullet(ArrayList<Bullet> bulletList)
  {
    bulletList.add(new Bullet(position, direction, 128, 4));
  }
}