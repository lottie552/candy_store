/**
 * INTERFACE: CanAnimate
 * 
 * CORE REQUIREMENTS FOR ALL IMPLEMENTING CLASSES:
 * 1. Must implement getArea() - defines interaction region
 * 2. Must implement update() - handles state changes
 * 3. Must implement display() - handles visual rendering
 * 
 * NOTE: Even non-interactive elements must implement getArea()
 *       (return a zero-size Area if not interactive)
 */
interface CanAnimate {
  void update();
  void display();
  Area getArea();
}
