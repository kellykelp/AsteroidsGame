class Asteroid extends Floater{

	private int rotSpeed;
	public Asteroid()
	{
		rotSpeed = (int)(Math.random()*6)-3; 
		myColor = color((int)(Math.random()*250));
		corners = 6;
		int[] xX = {-22, 14, 26, 12, -22, -10};
		int[] yY = {-16, -16, 0, 20, 16, 0};
		xCorners = xX; 
		yCorners = yY;

		myCenterX = (int)(Math.random()*width);
		myCenterY = (int)(Math.random()*height);
		myPointDirection = (int)(Math.random()*360);
		myDirectionX = (int)(Math.random()*3)-1;
		myDirectionY = (int)(Math.random()*3)-1;

		if (myDirectionX == 0) {myDirectionX = 1;}
		if (myDirectionY == 0) {myDirectionY = 1;}

    }

	public void move()
	{
		turn(rotSpeed);
		super.move(); 
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