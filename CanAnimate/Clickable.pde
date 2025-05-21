/**
 * ABSTRACT CLASS: Clickable
 * REQUIRES: CanAnimate.pde, Area.pde
 * 
 * IMPLEMENTATION MANDATES:
 * 1. getArea() must return click-sensitive region
 * 2. Use isClicked for visual state toggling
 * 3. Call handleClick() in mousePressed()
 * 
 * EXAMPLE USAGE:
 * class MyButton extends Clickable {
 *   Area getArea() {
 *     return new Area(position, 50, 50); // Clickable 50x50 area
 *   }
 *   // ... implement update() and display() ...
 * }
 */
abstract class Clickable implements CanAnimate {
  boolean isClicked = false;
  
  void handleClick() {
    isClicked = !isClicked;
  }
  // Required implementations
  abstract void update();
  abstract void display();
  abstract Area getArea();
}