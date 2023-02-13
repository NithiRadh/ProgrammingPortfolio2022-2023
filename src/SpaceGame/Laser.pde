class Laser {
  int x, y, w, h, speed;
  color c1;

  // Constructor
  Laser(int x, int y) {
    this.x = x;
    this.y = y;
    w = 5;
    h = 15;
    speed = 8;
    c1 = color(255, 0, 0);
  }

  void display() {
    rectMode(CENTER);
    fill(c1);
    noStroke();
    rect(x, y, w, h);
    fill(255);
    rect(x, y, w-2, h-2);
  }

  void move() {
    y -= speed;
  }

  boolean reachedTop() {
    if (y<-10) {
      return true;
    } else {
      return false;
    }
  }


  boolean intersect() {
    return true;
  }
}
