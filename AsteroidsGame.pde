Spaceship rocket = new Spaceship();
Stars[] star = new Stars[500];
Bullet shoot = new Bullet(rocket); 
//Asteroid[] bob = new Asteroid[20]; 

ArrayList <Asteroid> rocks = new ArrayList <Asteroid> (); 
// Declarations are inside functions, never outside!

public void setup() 
{
	size(800, 600);
	// rocks = new ArrayList <Asteroid>(); 
	for (int i = 0; i < star.length; i++)
	{
		star[i] = new Stars();
	}

	for (int i = 0; i < 20; i++)
	{
		rocks.add(new Asteroid()); 
	}

	// for (int i = 0; i < bob.length; i++)
	// {
	// 	bob[i] = new Asteroid();
	// }
}

public void draw() 
{
	background(28, 27, 71);
	for (int i = 0; i < star.length; i++)
	{
  		star[i].show();
  	}

  	for (int i = 0; i < rocks.size(); i++)
  	{
  		rocks.get(i).show();
  		rocks.get(i).move(); 
  		if (dist(rocket.getX(), rocket.getY(), rocks.get(i).getX(), rocks.get(i).getY()) < 20)
  		{
  			rocks.remove(i);
  		}
  	}
  	if (rocks.size() < 20)
  	{
  		rocks.add(new Asteroid());
  	}

	rocket.show();	
	rocket.move();

	shoot.show();
	shoot.move();


  	// for (int i = 0; i < bob.length; i++)
  	// {
  	// 	bob[i].show();
  	// 	bob[i].move();
  	// } 
}

public void keyTyped()
{
	if (key == 'h')
	{
		background(0);
		rocket.setDirectionX(0);
		rocket.setDirectionY(0);
		rocket.setX((int)(Math.random()*500));
		rocket.setY((int)(Math.random()*500));
		rocket.setPointDirection((int)(Math.random()*360));
	}

	if (key == 'a') { rocket.turn(-10); }
	if (key == 'd') { rocket.turn(10); }
	if (key == 'w') { rocket.accelerate(0.15); }

}

