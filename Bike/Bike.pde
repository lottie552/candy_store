class Bike {
  float wheelSize = 30;
  Position bikePos;
  Position frontWheelPos;
  Position backWheelPos;

  Wheel frontWheel;
  Wheel backWheel;


  Bike(Position pB) {
    bikePos = pB;
    // Calculate the frontwheel position.
    frontWheelPos = new Position((bikePos.x + wheelSize * 3.6), (bikePos.y + (wheelSize) + 15));
    // Calculate the backwheel position.
    backWheelPos = new Position((bikePos.x + wheelSize / 2), (bikePos.y + (wheelSize) + 15));

    // Create the wheels.
    frontWheel  = new Wheel(frontWheelPos, wheelSize);
    backWheel  = new Wheel(backWheelPos, wheelSize);
    // Add the hotspots for the wheels for animations to start on mouseclicked.
    hotspots.add(frontWheel);
    hotspots.add(backWheel);
  }

  void display() {
    frontWheel.display();
    backWheel.display();
    // Set draw color, strokeWeight and nofill() for drawing the frame.

    noFill();
    strokeWeight(4);
    stroke(0);
    line(backWheelPos.x + wheelSize - 3, bikePos.y - 1, backWheelPos.x + 1.6 * wheelSize, backWheelPos.y);
    line(backWheelPos.x + wheelSize * 2.6, bikePos.y + 5, backWheelPos.x + wheelSize * 2.6 + 5, bikePos.y - 5);
    line(backWheelPos.x + wheelSize * 2.6 - 5, bikePos.y - 5, backWheelPos.x + wheelSize * 2.6 + 5, bikePos.y - 5);
    stroke(#ff0000);
    triangle(backWheelPos.x, backWheelPos.y, backWheelPos.x + 1.6 * wheelSize, backWheelPos.y, backWheelPos.x + wheelSize, bikePos.y + 5);
    triangle(backWheelPos.x + 1.6 * wheelSize, backWheelPos.y, backWheelPos.x + wheelSize, bikePos.y + 5, backWheelPos.x + wheelSize * 2.6, bikePos.y + 5);
    line(backWheelPos.x + wheelSize * 2.6, bikePos.y + 5, frontWheelPos.x, frontWheelPos.y);

    fill(0);
    noStroke();
    rectMode(CENTER);
    rect(backWheelPos.x + wheelSize - 3, bikePos.y - 4, 20, 5);
    rectMode(CORNER);

    //reset strokeWeight to 1.
    strokeWeight(1);
  }
}
