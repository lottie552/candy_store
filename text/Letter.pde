// Letter class for individual letter animations
class Letter {
  char myLetter;
  PVector position; // Using PVector for letter position
  float angle;
  color letterColor;

  // Constructor to initialize letter properties
  Letter(char letter, float xPosition, float yPosition) {
    myLetter = letter;
    position = new PVector(xPosition, yPosition); // Initialize position as a PVector
    angle = random(2 * PI); // Random angle for rotation
    // Random color assignment for the letter
    letterColor = color(int(random(150, 250)), int(random(50)), int(random(150, 200)));
  }

  // Method to draw the letter with animation (rotation)
  void drawLetter() {
    pushMatrix();  // Save current drawing state
    translate(position.x, position.y); // Use PVector for position
    rotate(angle);  // Rotate based on angle
    fill(letterColor);  // Set letter color
    textSize(40);  // Set text size
    textAlign(CENTER);  // Center the text
    text(myLetter, 0, 0);  // Draw the letter at the position
    popMatrix();  // Restore previous drawing state
  }
}
