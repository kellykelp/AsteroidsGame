class Asteroid extends Floater{

	private int rotSpeed;
	public Asteroid()
	{
		corners = 6;
		int[] xX = {-11, 7, 13, 6, -11, -5};
		int[] yY = {-8, -8, 0, 10, 8, 0};
		xCorners = xX; 
		yCorners = yY;
		rotSpeed = (int)(Math.random()*360); 

    	myColor = color(10, 130, 0);
    	myCenterX = myCenterY = (Math.random()*500);
    	myDirectionX = myDirectionY = 0;
    	myPointDirection = 0;
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