import ddf.minim.*;
Ball ball = new Ball(); 


Minim minim;

AudioSample sound;

void setup() {

  size(500, 500);

  minim = new Minim (this);

  sound = minim.loadSample("pong.wav");
}


void draw() {

  background(0, 0, 0);


  fill(100, 20, 10);

  ellipse(ball.x, ball.y, ball.size, ball.size);

  stroke(10, 10, 10); 

  fill(255, 255, 255);

  rect(mouseX, 450, 80, 50);

  ball.update();
}
class Ball {

  int size= 50;

  int x = 100, y = 100;

  int speedX=5; 

  int speedY=5; 



  void update() {

    x = x+speedX;

    y = y + speedY; 

    if (x > 500 || x < 0) {
      speedX =- speedY;
    }

    if (y > 500 || y < 0 ) {
     speedY = -speedX; 
    }

    if (y== 500) {

      sound.trigger();
      x +=-x;
      y +=-y;
    }
  }
}

