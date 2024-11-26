// Derived class for splitting lines into words
class WordLoader extends TextLoader {
  
  // Override the processContent method
  @Override
  String[] processContent() {
    // Join lines and split into words
    String fullText = join(lines, " ");
    return splitTokens(fullText, " ,.!?;:()[]\"'\n\t"); // Delimiters for splitting words
  }
}