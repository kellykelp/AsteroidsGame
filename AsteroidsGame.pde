Spaceship omg;
Stars[] starss = new Stars[400];
boolean turningIshappening = false;
Asteroid bob; 

 //your variable declarations here
public void setup() 
{
  //your code here
  size(500, 500);
  for (int i = 0; i < starss.length; i++)
  {
  	starss[i] = new Stars();
  }
	omg = new Spaceship(); 
	bob = new Asteroid(); 
}
public void draw() 
{
	//your code here
	background(0);
	for (int i = 0; i < starss.length; i++)
	{
  		starss[i].show();
  	}
	omg.show();
	bob.show();
		
	omg.move(); 
}

public void keyTyped()
{
	if (key == 'h')
	{
		background(0);
		omg.setDirectionX(Math.random()*361);
		omg.setDirectionY(Math.random()*361);
		omg.setX((int)(Math.random()*500));
		omg.setY((int)(Math.random()*500));
		omg.setPointDirection((int)(Math.random()*361));
	}

	if (key == 'a')
	{
		omg.turn(-10);	
	}
	if (key == 'd')
	{
		omg.turn(10);
	}
	if (key == 'w')
	{
		omg.accelerate(.12);
	}

}

