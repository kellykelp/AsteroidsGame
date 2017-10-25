class Spaceship extends Floater  
{   
    //your code here
    Spaceship()
    {
    	corners = 14;
    	int[] xS = {0, 6, 6, 12, 6, 6, 3, 0, -3, -6, -6, -12, -6, -6};
    	int[] yS = {-16, -10, -7, 3, 3, 6, 9, 6, 9, 6, 3, 3, -7, -10};
    	xCorners = xS;
    	yCorners = yS;

  //   	int[] xS = {-8, 16, -8, -2};
  //   	int[] yS = {-8, 0, 8, 0}; 
		// xCorners = xS;
	 //    yCorners = yS;

    	myColor = color(0);
    	myCenterX = myCenterY = 250;
    	myDirectionX = myDirectionX = 0;
    	myPointDirection = 0;
    }

	public void setX(int x) {myCenterX = x;}  
	public int getX() {return (int)myCenterX;}   
	public void setY(int y) {myCenterY = y;}
	public int getY() {return (int)myCenterY;}
	public void setDirectionX(double x) {myDirectionX = x;}   
	public double getDirectionX() {return myDirectionX;}   
	public void setDirectionY(double y) {myDirectionY = y;}   
	public double getDirectionY() {return myDirectionY;}   
	public void setPointDirection(int degrees) {myPointDirection = degrees;}   
	public double getPointDirection() {return myPointDirection;} 
}
