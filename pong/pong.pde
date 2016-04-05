import ddf.minim.*;
Ball ball = new Ball(); 
Minim minim;
AudioSample sound;
int paddleY = 470;
int paddleE  =30;
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

  rect(mouseX,paddleY, 80, paddleE);

ball.update();

 println(ball.x);
}
class Ball {

  int size= 50;

  int x = 250, y = 300;

  int speedX=10; 

  int speedY=10; 
  
  void update(){
    
  x = x + speedX; 
   
  y = y + speedY;
  
     if (x > width ) {
       println("if X working");
       
       speedX = -speedX ;

    }
      if (x < 0) {

       
       speedX = -speedX ;

    }
    
    if(y<0){
      println("height working");
speedY = -speedY;
      
    }
    
if(y==500){
 
  println("if Y working");
    speedY = -speedY;
    sound.trigger();  
}  

}


}






class Paddle{
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY - paddleLength && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}

  
  
  
  
  
  
  
  
  
  
}
