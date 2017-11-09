class Stars //note that this class does NOT extend Floater
{
  protected int myPosX, myPosY;
  protected int mySColor; 
  protected int mySizee;

  public Stars()
  {
  	myPosX = (int)(Math.random()*width);
  	myPosY = (int)(Math.random()*height);
    mySizee = (int)(Math.random()*4);
  	mySColor = color(255);

  }

  public void show()
  {
  	noStroke();
    fill(mySColor);
  	ellipse(myPosX, myPosY, mySizee, mySizee);
  }
}
