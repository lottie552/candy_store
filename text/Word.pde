// Word class for handling words and their animations
class Word {
  String myWord;
  PVector position; // Using PVector for the word's position
  float angle;
  Letter[] letters;
  
  Word(String word, PVector position) {
    myWord = word;
    this.position = position; // Set position as PVector
    angle = random(2 * PI);
    letters = new Letter[myWord.length()];
    
    // Split the word into individual letters
    for (int i = 0; i < letters.length; i++) {
      PVector letterPosition = new PVector(random(20, width - 20), random(20, height - 20)); // Random positions for letters
      letters[i] = new Letter(myWord.charAt(i), letterPosition);
    }
  }
  
  void drawWord() {
    pushMatrix();
    translate(position.x, position.y); // Use PVector x and y
    rotate(angle);
    fill(200, 10, 200);
    textSize(35);
    textAlign(CENTER);
    text(myWord, 0, 0);
    popMatrix();
  }
  
  void drawLetters() {
    for (Letter l : letters) {
      l.drawLetter();
    }
  }
}
