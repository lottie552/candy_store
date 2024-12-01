// Letter class for individual letter animations
class Letter {
  char myLetter;
  PVector position; // Using PVector for letter position
  float angle;
  color letterColor;

  Letter(char letter, PVector position) {
    myLetter = letter;
    this.position = position; // Set position as PVector
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
