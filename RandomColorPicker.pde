color[] col= new color[5];
col[0] = color(123, 29, 0);
col[1] = color(207, 162, 65);
col[2] = color(207, 162, 65);
col[3] = color(207, 162, 65);
col[4] = color(207, 162, 65);

void setup() {
  size(500, 500);
}


void draw() {
  for (int i = 0; i < random(5, 10); ++i) {
    fill(col [int(random(0, 4))]);
    ellipse(50+150*i, 250, 100, 100);
  }
}
