// Nithi Radhakrishnan | 19 Sept 2022 | Grades
float val;

void setup () {
  size (1000, 200);
  val = 0.0;
}

void draw () {
  background(127);
  textSize(30);
  text("Grades by: Nithi Radhakrishnan",500,50);
  val=mouseX/250.0;
  noCursor();
  line(0, 100, width, 100);
  ellipse(mouseX, 100, 5, 5);
  textAlign(CENTER);
  //text();
  for(int i=0; i<1000; i=i+50) {
    line(i,95,i,105);
    text(i,i,85);
  }
  text(val, mouseX, 115);
  text("Letter Grade:" + calcGrade(val),width/2,150);
  line(000,105,000,95);
  text("0.00",5,100);
  line(100,105,100,95);
  text("0.400",100,100);
  line(200,105,200,95);
  text("0.00",5,100);
  line(300,105,300,95);
  text("0.00",5,100);
  line(400,105,400,95);
  text("0.00",5,100);
  line(500,105,500,95);
  text("0.00",5,100);
  line(600,105,600,95);
  text("0.00",5,100);
  line(700,105,700,95);
  text("0.00",5,100);
  line(800,105,800,95);
  text("0.00",5,100);
  line(900,105,900,95);
  text("0.00",5,100);
}


String calcGrade(float grade) {
  String letterGrade = "";
  if (grade > 3.5) {
    letterGrade = "A";
  } else if (grade>=3.0) {
    letterGrade = "A-";
  } else if (grade>=2.84) {
    letterGrade= "B+";
  } else if (grade>=2.67) {
    letterGrade = "B";
  } else if (grade>=2.50) {
    letterGrade = "B-";
  } else if (grade>=2.34) {
    letterGrade= "C+";
  } else if (grade>=2.17) {
    letterGrade= "C";
  } else if (grade>=2.00) {
    letterGrade= "C-";
  } else if (grade>=1.66) {
    letterGrade= "D+";
  } else if (grade>=1.33) {
    letterGrade= "D";
  } else if (grade>=1.00) {
    letterGrade= "D-";
  } else {
    letterGrade = "F";
  }
  return letterGrade;
}
