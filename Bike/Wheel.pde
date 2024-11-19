// Wheel can animate, so extend CanAnimate class
class Wheel extends CanAnimate {
  Position weelPos;
  float radius;
  float rotation = 0.01;


  Wheel(Position wP, float r) {
    weelPos = wP;
    radius = r;
  }

  void display() {
    ellipseMode(RADIUS);

    if (doAnimate) {
      rotation = rotation + 0.0175; // aproximate 1 degree
      if (rotation >= 0.35) { // aproximate 20 degrees so the next spoke...
        rotation= 0;
      }
    }
    // Set draw color, strokeWeight and nofill() for drawing the weel.
    stroke(0);
    noFill();
    strokeWeight(4);
    circle(weelPos.x, weelPos.y, radius);
    //reset strokeWeight to 1 for drawing the spokes.
    strokeWeight(1);
    // draw the spokes.
    for (int i = 0; i < 360; i = i + 20) {
      float angle = radians(i);
      float x = weelPos.x + radius * sin(angle - rotation);
      float y = weelPos.y + radius * cos(angle - rotation);
      line(weelPos.x, weelPos.y, x, y);
    }
  }

  //Give the actual Area of this object instead of the area of the CanAnimate class.
  Area getArea() {
    Position ul = new Position(weelPos.x - radius, weelPos.y - radius);
    Position lr = new Position(weelPos.x + radius, weelPos.y + radius);
    return new Area(ul, lr);
  }
}
