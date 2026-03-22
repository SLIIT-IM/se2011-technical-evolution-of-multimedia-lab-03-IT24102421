int ballX = 200;
int ballY = 100;

int speedX = 3;
int speedY = 3;

void setup() {
  size(600, 400);
}

void draw() {
  background(220);

  noStroke();
  fill(255, 80, 80);
  ellipse(ballX, ballY, 40, 40);

  ballX = ballX + speedX;
  ballY = ballY + speedY;

  if (ballX < 20 || ballX > width - 20) {
    speedX = -speedX;
  }

  if (ballY > height - 60 && ballX > mouseX - 40 && ballX < mouseX + 40) {
    speedY = -abs(speedY);
  }

  if (ballY > height) {
    ballY = 20;
    ballX = width/2;
  }

  fill(0, 150, 255);
  rect(mouseX - 40, height - 40, 80, 20);
  
  if(ballY < 20){
    speedY *= -1;
  }
}
