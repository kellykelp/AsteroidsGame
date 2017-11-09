Spaceship omg = new Spaceship();
Stars[] starss = new Stars[400];
Asteroid[] bob = new Asteroid[20]; 

public void setup() 
{
	size(800, 600);
	for (int i = 0; i < starss.length; i++)
	{
		starss[i] = new Stars();
	}

	for (int i = 0; i < bob.length; i++)
	{
		bob[i] = new Asteroid();
	}
}

public void draw() 
{
	background(28, 27, 71);
	for (int i = 0; i < starss.length; i++)
	{
  		starss[i].show();
  	}

  	for (int i = 0; i < bob.length; i++)
  	{
  		bob[i].show();
  		bob[i].move();
  	}

	omg.show();	
	omg.move(); 
}

public void keyTyped()
{
	if (key == 'h')
	{
		background(0);
		omg.setDirectionX(0);
		omg.setDirectionY(0);
		omg.setX((int)(Math.random()*500));
		omg.setY((int)(Math.random()*500));
		omg.setPointDirection((int)(Math.random()*360));
	}

	if (key == 'a') { omg.turn(-10); }
	if (key == 'd') { omg.turn(10); }
	if (key == 'w') { omg.accelerate(0.15); }

}

