public class ObjectSpawner{
	PVector position;
	PVector direction;
  PImage img;
	float speed;
	int size;
  int hp;

  //constructor with specified position.
  public ObjectSpawner(float newX, float newY)
  {
  	position = new PVector();
  	position.x = newX;
  	position.y = newY;

  	direction = new PVector();
  }

  //constructor with unspecified position
  public ObjectSpawner()
  {
  	position = new PVector();
  	position.x = random(20, width-20);
  	position.y = random(20, height/2);

  	direction = new PVector();
  }
  
  //code for the objects' update values
  void update()
  {
  	direction.normalize();
  }
  
  //code for drawing the objects on the screen
  void draw()
  {

  }
  
  void screenCheck() 
  {
    if (position.x > width) position.x = 0;
    else if (position.x < 0) position.x = width;

    if (position.y > height) position.y = 0;
    else if (position.y < 0) position.y = height;
  }
}
