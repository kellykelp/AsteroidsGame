class Spaceship extends Floater  
{   
    //your code here
    Spaceship()
    {
    	corners = 14;
    	int[] xS = {0, 2, 2, 5, 2, 2, 1, 0, -1, -2, -2, -5, -2, -2};
    	int[] yS = {-4, -3, -2, 0, 0, 1, 2, 2, 2, 1, 0, 0, -2, -3};
    	xCorners = xS;
    	yCorners = yS;

    	myColor = color(0,0,0);
    	myCenterX = myCenterY = 250;
    	myDirectionX = myDirectionX = 0;
    	myPointDirection = 0;

    }
	public void setX(int x) {myCenterX = x;}  
	public int getX() {return myCenterX;}   
	public void setY(int y) {myCenterY = y;}
	public int getY() {return myCenterY;}
	public void setDirectionX(double x) {myDirectionX = x;}   
	public double getDirectionX() {return myDirectionX;}   
	public void setDirectionY(double y) {myDirectionY = y;}   
	public double getDirectionY() {return myDirectionY;}   
	public void setPointDirection(int degrees) {myPointDirection = degrees;}   
	public double getPointDirection() {return myPointDirection;} 
}
