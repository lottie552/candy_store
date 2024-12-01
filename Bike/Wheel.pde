class Wheel extends CanAnimate {
  PVector weelPos;
  float radius;
  float rotation = 0.01;

  Wheel(PVector wP, float scale) {
    weelPos = wP;
    radius = scale; // Radius proportional to the bike's scale
  }

  void display() {
    ellipseMode(RADIUS);

    if (doAnimate) {
      rotation += 0.0175; // Approximate 1 degree
      if (rotation >= 0.35) { // Reset after ~20 degrees
        rotation = 0;
      }
    }

    // Draw wheel
    stroke(0);
    noFill();
    strokeWeight(radius / 7.5); // Adjust stroke weight relative to radius
    circle(weelPos.x, weelPos.y, radius);

    // Draw spokes
    strokeWeight(1);
    for (int i = 0; i < 360; i += 20) {
      float angle = radians(i);
      float x = weelPos.x + radius * sin(angle - rotation);
      float y = weelPos.y + radius * cos(angle - rotation);
      line(weelPos.x, weelPos.y, x, y);
    }
  }

  Area getArea() {
    PVector ul = new PVector(weelPos.x - radius, weelPos.y - radius);
    PVector lr = new PVector(weelPos.x + radius, weelPos.y + radius);
    return new Area(ul, lr); // Update Area if necessary to use PVector
  }
}
