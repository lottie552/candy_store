// Word class for handling words and their animations
class Word {
  String myWord;
  PVector position; // Using PVector for position
  float angle;
  Letter[] letters;
  
  Word(String word, float xPosition, float yPosition) {
    myWord = word;
    position = new PVector(xPosition, yPosition); // Initialize position with PVector
    angle = random(2 * PI);
    letters = new Letter[myWord.length()];
    
    // Split the word into individual letters
    for (int i = 0; i < letters.length; i++) {
      float letterX = random(20, width - 20);
      float letterY = random(20, height - 20);
      letters[i] = new Letter(myWord.charAt(i), letterX, letterY);
    }
  }
  
  void drawWord() {
    pushMatrix();
    translate(position.x, position.y); // Use PVector for position
    rotate(angle);
    fill(200, 10, 200);
    textSize(35);
    textAlign(CENTER);
    text(myWord, 0, 0);
    popMatrix();
  }
  
  void drawLetters() {
    for (Letter l : letters) {
      l.drawLetter(); // Draw each letter of the word
    }
  }
}
