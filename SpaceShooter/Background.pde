class Background 
{
	PImage bg;

	Background() 
	{
		bg = loadImage("Assets/Background.jpg");
	}

	void update()
	{

	}

	void draw() 
	{
		background(bg);
	}
}