Particle[] dust = new Particle[200];
OddballParticle[] oddDust = new OddballParticle[10];
void setup()
{
  size(600, 600);
  for (int i = 0; i < dust.length; i++) {
    dust[i] = new Particle();
  }
  
    for (int i = 0; i < oddDust.length; i++) {
    oddDust[i] = new OddballParticle();
  }
}
void draw()
{
  background (0);
  for (int i = 0; i < dust.length; i++) {
    dust[i].show();
    dust[i].move();
  }
  
  for (int i = 0; i < oddDust.length; i++){
  oddDust[i].show();
  oddDust[i].move();
  }
}
class Particle
{
  double myX, myY, myAngle, mySpeed, myLength, myWidth;
  int myColor;
  Particle() {
    myX = 300;
    myY = 300;
    myLength = 10;
    myWidth = 10;
    myAngle = (Math.random()*2)*Math.PI;
    mySpeed = (Math.random()*10);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }

  void move() {
    myX += cos((float)myAngle) * mySpeed;
    myY += sin((float)myAngle) * mySpeed;
  }

  void show() {
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, (float)myLength, (float)myWidth);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
    myX = 300;
    myY = 300;
    myAngle = (Math.random()*2)*Math.PI;
    mySpeed = (Math.random()*100);
    myColor = color((int)(Math.random()*111), (int)(Math.random()*111), (int)(Math.random()*111));
    myLength = 100;
    myWidth = 100;
  }
}
