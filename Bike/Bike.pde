class Bike {
  float scale; // Scale factor to determine the size of the bike
  PVector bikePos;
  PVector frontWheelPos;
  PVector backWheelPos;

  Wheel frontWheel;
  Wheel backWheel;

  Bike(PVector pB, float scale) {
    this.scale = scale; // Assign scale
    bikePos = pB;

    // Calculate wheel positions relative to scale
    frontWheelPos = new PVector(bikePos.x + scale * 3.6, bikePos.y + scale + scale * 0.5);
    backWheelPos = new PVector(bikePos.x + scale / 2, bikePos.y + scale + scale * 0.5);

    // Create the wheels
    frontWheel = new Wheel(frontWheelPos, scale);
    backWheel = new Wheel(backWheelPos, scale);

    // Add hotspots for wheels
    hotspots.add(frontWheel);
    hotspots.add(backWheel);
  }

  void display() {
    frontWheel.display();
    backWheel.display();

    noFill();
    strokeWeight(scale / 7.5); // Adjust stroke weight relative to scale
    stroke(0);

    // Frame lines
    line(backWheelPos.x + scale - 3, bikePos.y - 1, backWheelPos.x + 1.6 * scale, backWheelPos.y);
    line(backWheelPos.x + scale * 2.6, bikePos.y + scale / 10, backWheelPos.x + scale * 2.6 + scale / 10, bikePos.y - scale / 10);
    line(backWheelPos.x + scale * 2.6 - scale / 10, bikePos.y - scale / 10, backWheelPos.x + scale * 2.6 + scale / 10, bikePos.y - scale / 10);

    stroke(#ff0000);
    // Frame triangles
    triangle(backWheelPos.x, backWheelPos.y, backWheelPos.x + 1.6 * scale, backWheelPos.y, backWheelPos.x + scale, bikePos.y + scale / 10);
    triangle(backWheelPos.x + 1.6 * scale, backWheelPos.y, backWheelPos.x + scale, bikePos.y + scale / 10, backWheelPos.x + scale * 2.6, bikePos.y + scale / 10);

    // Handlebar line
    line(backWheelPos.x + scale * 2.6, bikePos.y + scale / 10, frontWheelPos.x, frontWheelPos.y);

    fill(0);
    noStroke();
    rectMode(CENTER);
    // Seat rectangle
    rect(backWheelPos.x + scale - 3, bikePos.y - scale / 4, scale * 2 / 5, scale / 10);
    rectMode(CORNER);

    // Reset stroke weight
    strokeWeight(1);
  }
}
