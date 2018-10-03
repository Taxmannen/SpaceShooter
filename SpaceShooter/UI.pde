class Ui 
{
	void draw() 
	{ 
		//Healthbar
		translate(75, 35);
		noFill();
		stroke(255);
		rect(0, 0, 104, 30, 7);
		
		fill(0, 255, 0);
		stroke(255);
		for (int i = 0; i < player.health; i++) rect(-45 + (10 * i), 0, 10, 26);


		//Score Text
		translate(width - 90, 5);
		fill(255);
		textSize(25);
		textAlign(RIGHT);
		text("SCORE: " + player.score, 0, 0);
	}
}	