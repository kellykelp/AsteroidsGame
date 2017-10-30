class Stars //note that this class does NOT extend Floater
{
  //your code here
  protected int myPosX, myPosY;
  protected int mySColor; 
  protected int mySizee;

  public Stars()
  {
  	myPosX = (int)(Math.random()*500);
  	myPosY = (int)(Math.random()*500);
  	mySColor = color(0);
  	mySizee = (int)(Math.random()*4);

  }

  void show()
  {
  	ellipse(myPosX, myPosY, mySizee, mySizee);
  }
}
