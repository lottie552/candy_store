class Area {
  PVector upperLeftCorner, lowerRightCorner;

  Area(PVector upperLC, PVector lowerRC) {
    upperLeftCorner = upperLC;
    lowerRightCorner = lowerRC;
  }

  // Function to calculate if the given PVector is in the Area rectangle.
  boolean isInArea(PVector pos) {
    return (pos.x >= upperLeftCorner.x && pos.x <= lowerRightCorner.x && pos.y >= upperLeftCorner.y && pos.y <= lowerRightCorner.y);
  }
}
