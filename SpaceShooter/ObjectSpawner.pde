public class ObjectSpawner{
	PVector position;
	PVector direction;
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
  	direction.x = 1;
  	direction.y = 1;
  }

  //constructor with unspecified position
  public ObjectSpawner()
  {
  	position = new PVector();
  	position.x = random(20, width-20);
  	position.y = random(20, height/2);

  	direction = new PVector();
  	direction.x = 1;
  	direction.y = 1;
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

}
