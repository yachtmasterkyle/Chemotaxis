Bacteria [] colony; //declare bacteria variables here   
void setup()   
{     
	colony = new Bacteria[10];
	for(int i = 0; i < colony.length; i++)
	{
		colony[i] = new Bacteria();
	} //initialize bacteria variables here
	size(400, 400);   
}   
void draw()   
{    
	background(0);	 //move and show the bacteria   
	for(int i = 0; i < colony.length; i++)
	{
		colony[i].move();
		colony[i].show();
	}
}  
class Bacteria    
{         
	int myX, myY, myColor, myColor2, myColor3;
	Bacteria()
	{
		myX = 200;
		myY = 200;
		myColor = (int)(Math.random()*255);
		myColor2 = (int)(Math.random()*255);
		myColor3 = (int)(Math.random()*255);
	}
	void show()
	{
		fill(myColor,myColor2,myColor3);
		ellipse(myX, myY, 20, 20);
	}
	void move()
	{
		myX = myX + (int)(Math.random() * 5) - 2;
		myY = myY + (int)(Math.random() * 5) - 2;
	}
}    