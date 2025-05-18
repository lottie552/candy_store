/**
 * ABSTRACT CLASS: CanAnimate
 * Purpose: Base class for interactive elements requiring update/display cycles
 * Requires: None (base class)
 * Extended by: Clickable, Draggable, or custom interactive objects
 * 
 * Implement:
 * - void update(): Handle state changes per frame
 * - void display(): Draw object to screen
 * - Area getArea(): Define interactive boundary
 */
public abstract class CanAnimate {
  public abstract void update();
  public abstract void display();
  public abstract Area getArea();
}