/**
 * ABSTRACT CLASS: Draggable
 * Purpose: Objects with drag-and-drop functionality
 * Requires: CanAnimate.pde, Area.pde
 * 
 * Implementation:
 * 1. Extend and implement:
 *   - update(), display(), getArea()
 *   - getPosition(), setPosition()
 * 2. Add to hotspots ArrayList<CanAnimate>
 * 3. In mouse handlers:
 *   - mousePressed(): Call startDragging()
 *   - mouseDragged(): Call updateDrag()
 *   - mouseReleased(): Call stopDragging()
 * 
 * Features:
 * - Automatic drag offset calculation
 * - Position constraint helpers
 */
public abstract class Draggable extends CanAnimate {
  protected boolean isDragging = false;
  protected PVector dragOffset;
  
  public void startDragging(PVector mousePos) {
    if (getArea().isInArea(mousePos)) {
      isDragging = true;
      dragOffset = PVector.sub(getPosition(), mousePos);
    }
  }
  
  public void updateDrag(PVector mousePos) {
    if (isDragging) {
      setPosition(PVector.add(mousePos, dragOffset));
    }
  }
  
  public void stopDragging() {
    isDragging = false;
  }
  
  // Required implementations
  public abstract PVector getPosition();
  public abstract void setPosition(PVector newPos);
  public abstract void update();
  public abstract void display();
  public abstract Area getArea();
}