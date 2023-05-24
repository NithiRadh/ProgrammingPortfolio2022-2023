// Nithi Radhakrishnan | Oct 3 2022 | TempConverter
//Nithi Radhakrishnan | Oct 5 2022 | Conversion App

void setup() {
  size(1000,200);
}

void draw() {
  background(128);
  textSize(15);
  text("Move the cursor from left to right to see the conversion of USD to  Rupees", width/2,180);
  line(0,100,width,100);
  textSize(25);
  textAlign(CENTER);
  text("Conversion of USD to RUPEE",width/2,60);
  textSize(15);
  text("By Nithi Radhakrishnan", width/2,40);
  for(int i=0; i<width; i+=20) {
    line(i,95,i,105);
    textSize(10);
    textAlign(CENTER);
    text(i,i,90);
  }
  ellipse(mouseX,100,5,5);
  text(mouseX*10,mouseX,115);
  
  text("Rupee:" + RupeeToUSD(mouseX),width/2,130);
  text("Usd:" + UsdToRUPEE(mouseX),width/2,145);
}

float RupeeToUSD(float val) {
  val = (val)*81.60;
  return val;
}
float UsdToRUPEE(float val) {
  val= mouseX;
  return val;
}
