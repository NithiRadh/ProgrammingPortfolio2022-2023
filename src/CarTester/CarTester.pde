// Nithi Radhakrishnan | Oct 24 2022| Cars App
Car a1,a2;
Car[] cars = new Car[111];

  void setup() {
  size(displayWidth, displayHeight);
  a1= new Car();
  a2= new Car();
  for(int i=0; i<cars. length; i++) {
  cars[i]=new Car();
  }
}



void draw() {
  background (#117C2B);
  a1.display();
  a1.drive();
  a2.display();
  a2.drive();
  for(int i=0; i<cars. length; i++) {
  cars[i].display();
  cars[i].drive();
  }
}
