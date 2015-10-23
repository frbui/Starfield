Particle[] potato = new Particle[500];//your code here
void setup()
{
	size(500,500);//your code here
	background(10,10,10);
	fill(100);
	for (int i = 0; i < potato.length; i++)
	{
		if (Math.random() < .99)
		{
			potato[i] = new NormalParticle();
		}
		else
		{
			potato[i] = new JumboParticle();
		}

	}
	
	
	potato[0] = new OddballParticle();
	


}
void draw()
{
	fill(255,255,0);
	ellipse(100,100,100,100);
	for (int i = 0 ; i < 100; i++)
	{
		potato[i].show();
		potato[i].move();
		potato[i].reset();
	} //your code here
}
class NormalParticle implements Particle
{
	int colour;
	double theX, theY, speed, theAngle, siz; //your code here
	NormalParticle()
	{
		theX = 100 + (Math.random()*100-50);
		theY = 100 + (Math.random()*100-50);
		colour = color(255,128,0);
		speed = 2;
		theAngle = Math.PI*2*Math.random();
	}
	public void move()
	{
		theX = theX + Math.cos(theAngle)*speed;
		theY = theY + Math.sin(theAngle)*speed;	
	}
	public void show()
	{
		fill(colour);
		ellipse((float)theX, (float)theY, 20,20);
	}
	public void reset()
	{
		if (theX > 550 || theX < -50)
		{
			theX = 100;
			theY = 100;
		}
		if (theY > 550 || theY < -50)
		{
			theX = 100;
			theY = 100;
		}
	}
}
interface Particle
{
	public void move();
	public void show();
	public void reset();//your code here
}
class OddballParticle implements Particle //uses an interface
{
	int colour;
	double theX, theY, speed, theAngle, siz; //your code here
	OddballParticle()
	{
		theX = 70 + (Math.random()*100-50);
		theY = 100 + (Math.random()*100-50);
		colour = color(255,255,105);
		speed = 9;
		theAngle = Math.PI*1*Math.random();
	}
	public void move()
	{
		theX = theX + Math.cos(theAngle)*speed;
		theY = theY + Math.sin(theAngle)*speed;	
	}
	public void show()
	{
		fill(colour);
		rect((float)theX, (float)theY, 20,20);
	}
	public void reset()
	{
		if (theX > 500 || theX < 0)
		{
			theX = 100;
			theY = 100;
		}
		if (theY > 500 || theY < 0)
		{
			theX = 100;
			theY = 100;
		}
	}
}//your code here

class JumboParticle implements Particle//uses inheritance
{
	int colour;
	double theX, theY, speed, theAngle, siz; //your code here
	JumboParticle()
	{
		theX = 100 + (Math.random()*100-50);
		theY = 100 + (Math.random()*100-50);
		colour = color(0,128,255);
		speed = 1;
		theAngle = Math.PI*1*Math.random();
	}
	public void move()
	{
		theX = theX + Math.cos(theAngle)*speed;
		theY = theY + Math.sin(theAngle)*speed;	
	}
	public void show()
	{
		fill(1);
		rect((float)theX,(float)theY,50,50);
	}
	public void reset()
	{
			if (theX > 500 || theX < 0)
		{
			theX = 100;
			theY = 100;
		}
		if (theY > 500 || theY < 0)
		{
			theX = 100;
			theY = 100;
		}
	}//your code here
}
