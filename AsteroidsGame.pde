Spaceship omg;
 //your variable declarations here
public void setup() 
{
  //your code here
  size(500, 500);
  omg = new Spaceship(); 
}
public void draw() 
{
  //your code here
  background(255);
  omg.show();
}

public void keyTyped()
{
	if (key == 'h')
	{
		omg.setDirectionX(0);
		omg.setDirectionY(0);
	}

	if (key == 'w')
	{
		omg.move();	}
}

