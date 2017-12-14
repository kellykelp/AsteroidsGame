Spaceship rocket = new Spaceship();
Stars[] star = new Stars[500];
int count = 0; 
ArrayList <Asteroid> rocks = new ArrayList <Asteroid> (); 
// Declarations are inside functions, never outside!

ArrayList <Bullet> pewpew = new ArrayList <Bullet> (); 

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

	for (int i = 0; i < pewpew.size(); i++)
	{
		pewpew.add(new Bullet(rocket));
	}
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
  			count--; 
  		}

  		for (int j = 0; j < pewpew.size(); j++)
  		{
  			if (dist(pewpew.get(j).getX(), pewpew.get(j).getY(), rocks.get(i).getX(), rocks.get(i).getY()) < 30)
  			{
  				rocks.remove(i); 
  				pewpew.remove(j);
  				count++; 
  				break;
  			}
  		}
  	}
  	if (rocks.size() < 20)
  	{
  		rocks.add(new Asteroid());
  	}

	rocket.show();	
	rocket.move();

	for (int i = 0; i < pewpew.size(); i++)
	{
		pewpew.get(i).show();
		pewpew.get(i).move();

		if ((pewpew.get(i).getX() > 800 || pewpew.get(i).getX() < 0) || (pewpew.get(i).getY() > 600 || pewpew.get(i).getY() < 0))
		{
			pewpew.remove(i);
		}
	}

	textSize(20);
	fill(255);
	text("Score: " + count, 50, 50); 
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
	if (key == 'v') { pewpew.add(new Bullet(rocket)); }
}
