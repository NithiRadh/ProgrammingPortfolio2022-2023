class Car {
  color c;
  float xpos, ypos, xspeed;

  // Constructor
  Car() {
  c = color(random(255),random(255),random(255));
  xpos = random(width);
  ypos = random(height);
  xspeed = random(-10,-10);
  }
  
   void display() {
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20, 10);
    circle(xpos,ypos,15);
    ellipse(xpos,ypos,10,1);
    noStroke();
    fill(#CAB6F7);
    rect(xpos, ypos, 15, 5);
    fill(0);
    rect(xpos-6,ypos-6,6,3);
    rect(xpos-6,ypos+7,6,3);
    rect(xpos+6,ypos-6,6,3);
    rect(xpos+6,ypos+7,6,3);
  }

  void drive() {
    xpos+=+xspeed;
    if (xpos > width) {
      xpos=0;
    }
    if (xpos<0) {
      xpos=width;
  }
 }
}
