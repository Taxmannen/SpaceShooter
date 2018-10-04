class Background
{
	PImage background;
	int scrollSpeed = 2;

	Background() 
	{
		background = loadImage("Assets/Background.png");
	}

	void draw() 
	{
		int y = (frameCount % background.height) * scrollSpeed;
  		for (int i = -y ; i < height ; i += background.height)
    	copy(background, 0, 0, width, background.height, 0, -i, width, background.height);
	}
}