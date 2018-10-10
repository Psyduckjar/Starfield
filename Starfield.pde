Particle [] bruh = new Particle[50];
void setup()
{
	background(0);
  size(1000,1000);
  for(int i = 0; i < 50; i++) {
    bruh[i] = new NormalParticle();
  }
  bruh[1] = new OddballParticle();
  bruh[0] = new JumboParticle();
  
}
void draw()
{
	for(int i = 0; i < bruh.length; i++) {
  bruh[i].move();
  bruh[i].show();
}
}
interface Particle
{
  public void move();
  public void show();
}

class NormalParticle implements Particle
{
 double myX,myY,myAngle;
 int mySpeed;
  NormalParticle() 
  {
    myX = 500;
    myY = 500;
    myAngle = ((Math.random()*2*PI));
    mySpeed = (int)(Math.random()*8);
  }
 void move() {
   //myAngle = myAngle * 2;
   myX = myX + (Math.cos((float)myAngle) * mySpeed);
    myY = myY + (Math.sin((float)myAngle) * mySpeed);
    if (myX > 1000)
    {
      myX = 0;
    }
    else if (myX < 0) 
    {
      myX = 1000;
    }    
     if(myY > 1000 ) 
     {
       myY = 0;
     }
     else if (myY < 0) 
     {
       myY = 1000;
     }
  }
 void show() {
    
   fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse((float)myX,(float)myY,5,5);
  }
}

class OddballParticle implements Particle
{
  double ox,oy,oa,os;
  int oc;
  OddballParticle()
  {
    oa = PI;
    ox = cos((float)oa)*25;
    oy = sin((float)oa)*25;
    oc = color(255,0,0);
    os = 2;
  }
  public void move()
  {
    oa = oa +0.05;
    ox = cos(2*PI*(float)oa)*50+500;
    oy = sin(2*PI*(float)oa)*50+500;
  }
  public void show()
  {
    fill(oc);
    ellipse((float)ox,(float)oy,15,15);
  }
}
class JumboParticle extends NormalParticle
{
	public void show() {
  int rc = (int)(Math.random()*25);  
  fill(255,0,0);
    ellipse((float)myX,(float)myY,rc,rc);
}
}
