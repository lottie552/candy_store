// ColorPicker class
class RandomColorPicker {
  // Array to store colors
  color[] colors;

  // Constructor to initialize with predefined colors
  RandomColorPicker() {
    colors = new color[5];
    colors[0] = color(123, 29, 0);
    colors[1] = color(207, 162, 65);
    colors[2] = color(207, 162, 65);
    colors[3] = color(207, 162, 65);
    colors[4] = color(207, 162, 65);
  }

  // Method to get a random color from the array
  color getRandomColor() {
    return colors[int(random(0, colors.length))];
  }
}
