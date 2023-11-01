Particle[] dust = new Particle[1000];
int i = 0;
int moveOther = 0;
void setup()
{
  size(600, 600);
  for (int i = 0; i < dust.length; i++) {
    dust[i] = new Particle();
    dust[0] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < dust.length; i++) {
    dust[i].show();
    dust[i].move();
  }

  if (dust[0].myX > 550 || dust[0].myX < 0 || dust[0].myY > 550 || dust[0].myY < 0){
    moveOther++;
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
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle() {
    myX = 300;
    myY = 300;
    myAngle = (Math.random()*2)*Math.PI;
    mySpeed = (Math.random()*5)+1;
    myColor = color(255);
    myLength = 50;
    myWidth = 50;
  }
  void show() {
    fill (myColor);
    rect((float)myX, (float)myY, (float)myLength, (float)myWidth);
  }
  void move() {

    if (moveOther % 2 == 0) {
      myX += cos((float)myAngle) * mySpeed;
      myY += sin((float)myAngle) * mySpeed;
    } else{
      myX -= cos((float)myAngle) * mySpeed;
      myY -= sin((float)myAngle) * mySpeed;
    }
  }
}
