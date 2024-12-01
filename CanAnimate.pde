// A CanAnimate class that must be extended by all classes that can do animations. So starting and
// stopping animations can be done within 1 mouseClicked() function.
class CanAnimate {
  // Start or stop animations depending on this value
  boolean doAnimate = false;

  // Method to toggle animation of the object
  void animate() {
    doAnimate = !doAnimate;
  }

  // The Area (rectangle) to which the object responds if it is clicked
  Area getArea() {
    PVector ul = new PVector(0, 0);
    PVector lr = new PVector(0, 0);
    return new Area(ul, lr);
  }
}
