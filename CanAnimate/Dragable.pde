/**
  ABSTRACT CLASS: Draggable
  Purpose: Objects with drag-and-drop functionality
  Requires: CanAnimate.pde, Area.pde
  
  Implementation:
  1. Extend and implement:
    - update(), display(), getArea()
    - getPosition(), setPosition()
  2. Add to hotspots ArrayList<CanAnimate>
  3. In mouse handlers:
    - mousePressed(): Call startDragging()
    - mouseDragged(): Call updateDrag()
    - mouseReleased(): Call stopDragging()
  
  Features:
  - Automatic drag offset calculation
  - Position constraint helpers
 */
abstract class Draggable implements CanAnimate {
  protected boolean isDragging = false;
  protected PVector dragOffset;
  
  void startDragging(PVector mousePos) {
    if (getArea().isInArea(mousePos)) {
      isDragging = true;
      dragOffset = PVector.sub(getPosition(), mousePos);
    }
  }
  
  void updateDrag(PVector mousePos) {
    if (isDragging) {
      setPosition(PVector.add(mousePos, dragOffset));
    }
  }
  
  void stopDragging() {
    isDragging = false;
  }
  
  // Required implementations
  abstract PVector getPosition();
  abstract void setPosition(PVector newPos);
  abstract void update();
  abstract void display();
  abstract Area getArea();
}