public class ObjectSpawner{
	PVector position;
	PVector direction;
	int speed;
	int size;

  //constructor with specified position.
  public ObjectSpawner(float newX, float newY)
  {
  	position = new PVector();
  	position.x = newX;
  	position.y = newY;

  	direction = new PVector();
  	direction.x = 1;	//placeholder value
  	direction.y = 1;	//placeholder value
  }

  //constructor with unspecified position
  public ObjectSpawner()
  {
  	position = new PVector();
  	position.x = random(20, width-20);		//placeholder value
  	position.y = random(20, height/2);		//placeholder value

  	direction = new PVector();
  	direction.x = 1;	//placeholder value
  	direction.y = 1;	//placeholder value
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
