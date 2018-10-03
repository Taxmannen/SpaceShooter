class Background 
{
	PImage img;
	int speed = 5;

	Background() 
	{
		img = loadImage("Assets/Background.jpg");
	}

	void draw() 
	{
		background(img);
		/*int x = (frameCount % img.width) * speed;
  		for (int i = -x ; i < width ; i += img.width)
    	copy(img, 0, 0, img.width, height, i, 0, img.width, height);*/
	}
}