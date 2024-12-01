// Base class for loading a text file
class TextLoader {
  String[] lines; // Store lines of the file
  
  // Load the file
  void loadFile(String filename) {
    lines = loadStrings(filename);
  }
  
  // Placeholder method to process content (to be overridden)
  String[] processContent() {
    return lines; // Default implementation returns raw lines
  }
}
