Spaceship omg;
Stars[] starss = new Stars[400];

 //your variable declarations here
public void setup() 
{
  //your code here
  size(500, 500);
  omg = new Spaceship(); 
  for (int i = 0; i < starss.length; i++)
  {
  	starss[i] = new Stars();
  }

}
public void draw() 
{
  //your code here
  background(255);
  omg.show();
  for (int i = 0; i < starss.length; i++)
  {
  	starss[i].show();
  }
}

public void keyTyped()
{
	if (key == 'h')
	{
		omg.setDirectionX(Math.random()*361);
		omg.setDirectionY(Math.random()*361);
		omg.setX((int)(Math.random()*500));
		omg.setY((int)(Math.random()*500));
	}

	if (key == 'w')
	{
		omg.move();	}
}

