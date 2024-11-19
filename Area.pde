class Area {
  Position upperLeftCorner, lowerRightCorner;

  Area(Position upperLC, Position lowerRC) {
    upperLeftCorner = upperLC;
    lowerRightCorner = lowerRC;
  }

  //function to calculate if the given Position is in the Area rectangle.
  boolean isInArea(Position pos) {
    return(pos.x >= upperLeftCorner.x && pos.x <= lowerRightCorner.x && pos.y >= upperLeftCorner.y && pos.y <= lowerRightCorner.y);
  }
}
