Word[] words;  // Array of Word objects
int state;     // Program states

void setup() {
  size(400, 400);

  // Load words from file
  WordLoader loader = new WordLoader();
  loader.loadFile("example.txt");
  String[] loadedWords = loader.processContent();

  // Initialize Word objects with random positions
  words = new Word[loadedWords.length];
  for (int i = 0; i < loadedWords.length; i++) {
    PVector position = new PVector(random(50, width - 50), random(50, height - 50)); // Using PVector for position
    words[i] = new Word(loadedWords[i], position);
  }

  state = 0;  // Initial state
}

void draw() {
  background(10, 200, 200);

  switch (state) {  // Switch between states
    case 0:
      for (Word w : words) {
        w.drawWord();
      }
      break;
    case 1:
      for (Word w : words) {
        w.drawLetters();
      }
      break;
  }
}

void mouseClicked() {  // Switch state on mouse click
  state = 1 - state;
}
