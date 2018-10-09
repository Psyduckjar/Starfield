NormalParticle [] bruh;
void setup()
{
	background(0);
  size(1000,1000);
  bruh = new NormalParticle[50];
  for(int i = 0; i < 50; i++) {
    bruh[i] = new NormalParticle();
  }
  
}
void draw()
{
	for(int i = 0; i < bruh.length; i++) {
  bruh[i].move();
  bruh[i].show();
}
}
class NormalParticle implements Particle
{
 double myX,myY,myAngle;
 int mySpeed;
  NormalParticle() {
    myX = 500;
    myY = 500;
    myAngle = ((Math.random()*2*Math.PI));
    mySpeed = ((int)(Math.random()*8));
  }
  void move() {
    myX = myX + (Math.cos(myAngle) * mySpeed);
    myY = myY + (Math.sin(myAngle) * mySpeed);
  }
  void show() {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse((float)myX,(float)myY,5,5);
  }



}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}
