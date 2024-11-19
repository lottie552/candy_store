// A CanAnimate class that must be extended by all classes that can do animations. So starting and
// stoppiing animations can be done within 1 mouseClicked() function.
class CanAnimate {
  //start or stop animations depending on this value
  boolean doAnimate = false;

  //Method to toggle aninmation of the object
  void animate() {
    doAnimate = !doAnimate;
  }

  //The Area (rectangle) to which the object responds if it is clicked
  Area getArea() {
    Position ul = new Position(0, 0);
    Position lr = new Position(0, 0);
    return new Area(ul, lr);
  }
}
