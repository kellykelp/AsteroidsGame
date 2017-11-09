class Spaceship extends Floater  
{   
    Spaceship()
    {
    	corners = 4;
    	//Spaceship/rocket = 14 corners
    	//int[] xS = {0, 6, 6, 12, 6, 6, 3, 0, -3, -6, -6, -12, -6, -6};
    	//int[] yS = {-20, -10, -7, 3, 3, 6, 9, 6, 9, 6, 3, 3, -7, -10};
    	//xmas tree = 15
    	//int[] xS = {0, 9, 3, 12, 6, 18, 3, 3, -3, -3, -18, -6, -12, -3, -9};
    	//int[] yS = {-18, -9, -9, 0, 0, 9, 9, 18, 18, 9, 9, 0, 0, -9, -9};

    	int[] xS = {-16, 32, -16, -4};
    	int[] yS = {-16, 0, 16, 0};
    	xCorners = xS;
    	yCorners = yS;

    	//myColor = color(10, 130, 0);
        myColor = color(165, 231, 255);
    	myCenterX = myCenterY = 250;
    	myDirectionX = myDirectionY = 0;
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
