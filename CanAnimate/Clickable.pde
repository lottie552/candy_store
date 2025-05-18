/**
 * ABSTRACT CLASS: Clickable
 * Purpose: Toggleable UI elements with click detection
 * Requires: CanAnimate.pde, Area.pde
 * 
 * Implementation:
 * 1. Extend and implement:
 *   - update(), display(), getArea()
 * 2. Add to hotspots ArrayList<CanAnimate>
 * 3. In mousePressed():
 *   for (CanAnimate c : hotspots) {
 *     if (c instanceof Clickable && c.getArea().isInArea(mouseX, mouseY)) {
 *       ((Clickable)c).handleClick();
 *     }
 *   }
 * 
 * Features:
 * - isClicked: Tracks toggle state
 * - handleClick(): Built-in click handler
 */
public abstract class Clickable extends CanAnimate {
  public boolean isClicked = false;
  
  public void handleClick() {
    isClicked = !isClicked;
  }
  
  // Required implementations
  public abstract void update();
  public abstract void display();
  public abstract Area getArea();
}