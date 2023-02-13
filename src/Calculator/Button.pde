class Button {
  // Member Variables
  int x, y, w, h;
  char val;
  color c1, c2;
  boolean on;

  // Constructor
  Button(int x, int y, int w, int h, char val, color c1, color c2) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    //c1 = color(#F52F19);
    //c2 = color(#F7F7F7);
    this.c1=c1;
    this.c2=c2;
    on = false;
  }

  void display() {
    strokeWeight(1.5);
    if (on) {
      fill(c2);
    } else {
      fill(c1);
    }
    rect(x, y, w, h, 8);
    fill(0);
    stroke(0);
   
    textSize(30);
    textAlign(CENTER);
    if (val == 's') {
      text("x²", x+40, y+45);
    } else if (val== '0'){
        
      text(val, x+75, y+45);
    } else if (val== '=') {
      text(val, x+40, y+75);
    } else {
      text(val, x+35, y+45);
    }
  }

  void hover(int mx, int my) {
    on = (mx > x && mx < x+w && my > y && my < y+h);
  }
}
