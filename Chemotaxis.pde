 //declare bacteria variables here  
 Bacteria [] bacColony; 
 //Predator [] predatorColony;
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(1024, 1024);
 	bacColony = new Bacteria [50];
 	//predatorColony = new Predator [10];
 	for (int i = 0; i < bacColony.length; i++)
 	{
 		bacColony[i] = new Bacteria(512, 512);
 	}
 /*	for (int w = 0; w < predatorColony.length; w++)
 	{
 		predatorColony[w] = new Predator((int) (Math.random() * 1024), (int) (Math.random() * 1024));
 	}*/
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
 /*	for (int b = 0; b < predatorColony.length; b++)
 	{
 		predatorColony[b].show();
 		predatorColony[b].move();
 	} */
 }
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor;
 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 		myColor = color(255, 0, 0);
 	}   
 	void move()
 	{
        if (mouseActivated == 0)
        {
        myX = myX + ((int) (Math.random() * 10 - 5));
        myY = myY + ((int) (Math.random() * 10 - 5));
        }
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX, myY, 20, 20);
 	}
 }    
 /* class Predator
 {
    int preX, preY, whichOne, whichOneEqu;
    Predator(int x, int y)
    {
    	preX = x;
    	preY = y;
    	whichOne = 0;
    	whichOneEqu = 0;
    }
    void attract()
    {
    	for (int z = 0; z < bacColony.length; z++)
    	{
    		whichOneEqu = bacColony[z].myX - preX;
    		if (whichOneEqu > whichOne)
    		{
    			whichOne = z;
    		}
    	}
    }
    void move()
    {
    	if(preX > bacColony[whichOne].myX)
    	{
    		preX = preX + ((int) (Math.random() * 10 - 6));
    	}
    	else
    	{
    		preX = preX + ((int) (Math.random() * 10 - 4));
    	}
    	if(preY > bacColony[whichOne].myX)
    	{
    		preY = preY + ((int) (Math.random() * 10 - 6));
    	}
    	else
    	{
    		preY = preY + ((int) (Math.random() * 10 - 4));
    	}
    }
    void show()
    {
    	fill(0, 255, 0);
    	ellipse(preX, preY, 20, 20);
    }
 }
 */