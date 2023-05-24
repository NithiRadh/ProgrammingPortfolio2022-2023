//Nithi Radhakrishnan|| 9 Sept 2022 | Zoog

void setup() {
  size(500,900);
}

void draw () {
  //background(#F0BFFF);
  ellipseMode(CENTER);
  rectMode(CENTER);
  zoog(mouseX,mouseY);
  zoog(int(random(width)),int(random(height)));
}

void zoog(int x, int y) {
  // Draw Zoog's Body
  stroke(0);
  fill(#BAB8ED);
  rect(x,y,20,100);
  
  //Draw Zoog's Head
  stroke(#25F007);
  fill(255);
  ellipse(x,y-30,60,60);
  
  //Draw Zoog's Eyes
  fill(#F0072A);
  ellipse(x-19,y-30,16,32);
  ellipse(x+19,y-30,16,32);
  
   //Draw Zoog's Pupils
  fill(400);
  ellipse(x-19,y-30,16,8);
  ellipse(x+19,y-30,16,8);
  
  //Draw Zoog's Legs
  stroke(0);
  line(x-10,y+50,x-20,y+60);
  line(x+10,y+50,x+20,y+60);
}
  
