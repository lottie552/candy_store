// Letter class for individual letter animations
class Letter {
  char myLetter;
  PVector position; // Using PVector for position
  float angle;
  color letterColor;

  Letter(char letter, float xPosition, float yPosition) {
    myLetter = letter;
    position = new PVector(xPosition, yPosition); // Initialize position as a PVector
    angle = random(2 * PI);
    letterColor = color(int(random(150, 250)), int(random(50)), int(random(150, 200)));
  }

  void drawLetter() {
    pushMatrix();
    translate(position.x, position.y); // Use PVector x and y
    rotate(angle);
    fill(letterColor);
    textSize(40);
    textAlign(CENTER);
    text(myLetter, 0, 0);
    popMatrix();
  }
}
