// RandomColorPicker class
class RandomColorPicker {
  // Array to store colors
  color[] colors;

  // Constructor to initialize with predefined colors
  RandomColorPicker() {
    colors = new color[5]; // Adjust the size of the array if you want more colors
    colors[0] = color(123, 29, 0);  // Add more colors as needed by assigning them to new indices
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

/*
  How to add more colors:
  1. Increase the size of the 'colors' array in the constructor. For example:
     colors = new color[6];
  2. Assign a color value to the new index. For example:
     colors[5] = color(50, 150, 200);
*/
