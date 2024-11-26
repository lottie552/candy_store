WordLoader wordLoader;
String[] words;

void setup() {
  size(800, 600); // Set canvas size
  wordLoader = new WordLoader(); // Instantiate the specialized loader
  loadAndProcessFile("example.txt"); // Load and process the file
}

void draw() {
  background(255); // Clear the canvas with a white background
  fill(0);         // Set text color to black
  textSize(16);    // Set text size
  
  // Display words on the canvas
  float x = 10;
  float y = 30;
  for (String word : words) {
    text(word, x, y); // Draw each word on the canvas
    x += textWidth(word) + 10; // Move to the right by word width + padding
    
    // Wrap to the next line if it exceeds canvas width
    if (x > width - 10) {
      x = 10;
      y += 30;
    }
    
    // Stop if we exceed canvas height
    if (y > height - 30) {
      break;
    }
  }
}

// Function to load and process the file
void loadAndProcessFile(String filename) {
  wordLoader.loadFile(filename); // Load the file
  words = wordLoader.processContent(); // Process to get words
}