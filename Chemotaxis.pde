 //declare bacteria variables here  
 Bacteria [] bacColony; 
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(1024, 1024);
 	bacColony = new Bacteria [10];
 	for (int i = 0; i < bacColony.length; i++)
 	{
 		bacColony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(0);
 	for (int j = 0; j < bacColony.length; j++)
 	{
 	bacColony[j].show();
 	bacColony[j].move();	
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = 512;
 		myY = 512;
 		myColor = color(255, 0, 0);
 	}   
 	void move()
 	{
        myX = myX + (int) (Math.random * 10 - 5);
        myY = myY + (int) (Math.random * 10 - 5);
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX, myY, 20, 20);
 	}
 }    