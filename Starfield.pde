Particle[] dust = new Particle[100];
void setup()
{
  size(600, 600);
  for (int i = 0; i < dust.length; i++) {
    dust[i] = new Particle();
  }
}
void draw()
{
  for (int i = 0; i < dust.length; i++) {
    dust[i].show();
  }
}
class Particle
{
  double myX, myY, myColor;
  Particle() {
  }

  void move() {
  }

  void show() {
    ellipse(10, 10, 10, 10);
  }
}

class OddballParticle //inherits from Particle
{
  //your code here
}
