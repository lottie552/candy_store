class Word {
  String wordText;
  PVector position; // Using PVector for position

  Word(String wordText, PVector position) {
    this.wordText = wordText;
    this.position = position; // Set position as PVector
  }

  void drawWord() {
    fill(0);
    textSize(32);
    textAlign(CENTER, CENTER);
    text(wordText, position.x, position.y); // Use position.x and position.y
  }

  void drawLetters() {
    fill(255, 0, 0); // Red color for letters in this state
    textSize(32);
    textAlign(CENTER, CENTER);
    for (int i = 0; i < wordText.length(); i++) {
      float xOffset = i * 20 - wordText.length() * 10; // Adjust letter spacing
      text(wordText.charAt(i), position.x + xOffset, position.y); // Draw each letter at an offset position
    }
  }
}
