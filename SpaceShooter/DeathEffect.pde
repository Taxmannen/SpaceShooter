class DeathEffect extends Effect
{
	int circleCount;
	float radius;

	DeathEffect(float x, float y)
	{
		position = new PVector(x, y);
		circleCount = 20;
		size = 7.5;
	}

	void draw()
	{
		noStroke();
		fill(255, 0, 0);

		radius += 1;
		size -= 0.1f;
		if (size < 0) size = 0;

		float angle = TWO_PI/circleCount;
		for (int i = 0; i < circleCount; i++) ellipse(position.x + radius * sin(angle*i), position.y + radius*cos(angle*i), size, size);
	}
}