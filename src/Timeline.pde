// Nithi Radhakrishnan| 12 Sept 2022 | Timeline

void setup() {
  size(900, 400);
  background(127);
}

void draw() {
  background(400);
  
  //Render the title and timeline
  textSize(30);
  textAlign(CENTER);
  fill(#EAA6E4);
  text("Computer History Timeline", width/2, 60);
  textSize(20);
  text("by Nithi Radhakrishnan", width/2, 80);

  // Render the timeline
  strokeWeight(3);
  line(100, 250, 800, 250);
  text("1940", 80, 240);
  text("1960", 840, 240);

  // Render timeline events
  histEvent(120, 200, "Z2- 1940", "Created by German engineer Konrad Zuse, it replaced the arithmetic and control logic with electrical relay circuits.  ", true);
  histEvent(300, 200, "Colossus- 1944 ", "Tommy Flowers was recommended to Max Newman, and spent 11 months from 1943 \n designing a more flexible Colossus Computer. It was tested in December 1943, and got shipped then delivered on January 18, 1944.", true);
  histEvent(180, 300,"Z3- 1941", "Zuse followed his earlier machine up with the Z3, the world's first working electromechanical programmable, \n fully automatic digital computer.", false);
  histEvent(380, 300,"Manchester Baby- 1948", "The world's first electronic stored-program computer. It was built \n at the Victoria University of Manchester by Frederic C. Williams, Tom Kilburn and Geoff Tootill, and ran its first program on 21 June 1948.", false);
  histEvent(480, 200, "EDSAC- 1949", "A contender for being the first recognizably modern digital stored-program computer. It was designed and constructed by \n Maurice Wilkes and his team at the University of Cambridge Mathematical Laboratory in England at the University of Cambridge in 1949. ", true);
  histEvent(580, 300, "Commercial computers-1951", "The first commercial computer was the Ferranti Mark 1, built by Ferranti and delivered to the University of Manchester in February 1951. \n It was based on the Manchester Mark 1. The main improvements over the Manchester Mark 1 \n were in the size of the primary storage (using random access Williams tubes), secondary storage, a faster multiplier, and additional instructions.", false);
  histEvent(680, 200, "IBM 704- 1954", " It is a large mainframe computer introduced by IBM, which is created by Charles Ranlett FlintCreated.", true);
  histEvent(780, 300, "Ferranti Mercury- 1957", "Built by Ferranti, founded by Sebastian Ziani de Ferranti, which had additional installments.", false);
}

void histEvent(int x, int y, String title, String detail, boolean top) {
  if(top== true) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  
  rectMode(CENTER);
  fill(77);
  strokeWeight(3);
  rect(x, y, 150, 30, 8);
  fill(255);
  textSize(15);
  text(title, x, y+5);
  if (mouseX > x-75 && mouseX < x+75 && mouseY > y-20 && mouseY < y+20) {
    fill(0);
    text(detail,width/2,350);
 }
}
