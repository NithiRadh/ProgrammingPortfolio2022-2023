// Nithi Radhakrishnan | Nov 2022 | Calc Project
Button[] numButtons = new Button[10];
Button[] opButtons = new Button[12];
String dVal =  "0.0";
boolean left = true;
boolean newNum = false;
float l, r, result;
char op = ' ';

void setup() {
  size(340, 830);
  numButtons[0] = new Button(20, 520, 150, 70, '0', #A62DF7, #F7F7F7);
  numButtons[1] = new Button(20, 440, 70, 70, '1', #3BAAF2, #F7F7F7 );
  numButtons[2] = new Button(100, 440, 70, 70, '2', #3BAAF2, #F7F7F7);
  numButtons[3] = new Button(180, 440, 70, 70, '3', #3BAAF2, #F7F7F7);
  numButtons[4] = new Button(20, 360, 70, 70, '4', #33FC59, #F7F7F7);
  numButtons[5] = new Button(100, 360, 70, 70, '5', #33FC59, #F7F7F7);
  numButtons[6] = new Button(180, 360, 70, 70, '6', #33FC59, #F7F7F7);
  numButtons[7] = new Button(20, 280, 70, 70, '7', #FFFF62, #F7F7F7);
  numButtons[8] = new Button(100, 280, 70, 70, '8', #FFFF62, #F7F7F7);
  numButtons[9] = new Button(180, 280, 70, 70, '9', #FFFF62, #F7F7F7);

  opButtons[0] = new Button(260, 440, 70, 150, '=', #3BAAF2, #F7F7F7);
  opButtons[1] = new Button(260, 360, 70, 70, '.', #33FC59, #F7F7F7);
  opButtons[2] = new Button(180, 520, 70, 70, 'C', #A62DF7, #F7F7F7);
  opButtons[3] = new Button(260, 280, 70, 70, '+', #FFFF62, #F7F7F7);
  opButtons[4] = new Button(260, 200, 70, 70, '-', #FC9D0D, #F7F7F7);
  opButtons[5] = new Button(260, 120, 70, 70, '÷', #F52F19, #F7F7F7);
  opButtons[6] = new Button(180, 120, 70, 70, '×', #F52F19, #F7F7F7);
  opButtons[7] = new Button(100, 120, 70, 70, '%', #F52F19, #F7F7F7);
  opButtons[8] = new Button(20, 120, 70, 70, '√', #F52F19, #F7F7F7);
  opButtons[9] = new Button(20, 200, 70, 70, 's', #FC9D0D, #F7F7F7);
  opButtons[10] = new Button(100, 200, 70, 70, 'π', #FC9D0D, #F7F7F7);
  opButtons[11] = new Button(180, 200, 70, 70, '±', #FC9D0D, #F7F7F7);
}

void draw() {
  background(#B8F3FC);
  for (int i= 0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i]. hover(mouseX, mouseY);
  }
  for (int i = 0; i<opButtons.length; i++) {
    opButtons[i]. display();
    opButtons[i]. hover(mouseX, mouseY);
  }
  updateDisplay();
}

void keyPressed() {
  println("key:" + key);
  println("keycode:" + keyCode);
  if (keyCode == 49|| keyCode == 97) {
    handleEvent("1", true);
  } else if (keyCode == 46 || keyCode == 110) {
    handleEvent(".", true);
  } else if (keyCode == 50 || keyCode == 100) {
    handleEvent("2", true);
  } else if (keyCode == 51 || keyCode == 115) {
    handleEvent("3", true);
  } else if (keyCode == 52 || keyCode == 120) {
    handleEvent("4", true);
  } else if (keyCode == 53 || keyCode == 125) {
    handleEvent("5", true);
  } else if (keyCode == 54 || keyCode == 130) {
    handleEvent("6", true);
  } else if (keyCode == 55 || keyCode == 135) {
    handleEvent("7", true);
  } else if (keyCode == 56 || keyCode == 140) {
    handleEvent("8", true);
  } else if (keyCode == 57 || keyCode == 145) {
    handleEvent("9", true);
  } else if (keyCode == 48 || keyCode == 150) {
    handleEvent("0", true);
  } else if (keyCode == 107 || keyCode == 61) {
    handleEvent("+", false);
  } else if (keyCode == 106 || keyCode == 160) {
    handleEvent("×", true);
  } else if (keyCode == 8 || keyCode == 90 || keyCode == 8) {
    handleEvent("C", false);
  } else if (keyCode == 10 || keyCode == 165) {
    handleEvent("=", true);
  }else if (keyCode == 10 || keyCode == 165) {
    handleEvent("=", true);
  }
}

void handleEvent(String val, boolean num) {
  if (num && dVal.length() <17) {
    if (dVal.equals("0.0")) {
      dVal = val;
    } else  if (newNum) {
      dVal = val;
      newNum = false;
    } else {
      dVal += val;
    }
    if (left) {
      l=float(dVal);
    } else {
      r = float(dVal);
    }
  } else if (val.equals("C")) {
    dVal = "0.0";
    left=true;
    l=0;
    r=0;
    result = 0;
    op = ' ';
  } else if (val.equals(".")) {
    if (!dVal.contains(".")) {
      dVal += '.';
    }
  } else if (val. equals("+")) {
    op = '+';
    newNum = true;
    left = false;
  } else if (val.equals("-")) {
    op = '-';
    newNum = true;
    left = false;
  } else if (val.equals("×")) {
    op = '×';
    newNum = true;
    left = false;
  } else if (val.equals("÷")) {
    op = '÷';
    newNum = true;
    left = false;
  }else if(val.equals("=")) {
    performCalculation();
}
}

void mouseReleased() {
  for (int i= 0; i<numButtons.length; i++) {
    if (numButtons[i].on) {
      handleEvent(str(numButtons[i].val), true);
    }
  }


  for (int i = 0; i<opButtons.length; i++) {
    if (opButtons[i].on && opButtons[i].val == 'C') {
      handleEvent(str(opButtons[i].val), false);
    } else if (opButtons[i].on && opButtons[i].val == '+') {
      handleEvent("+", false);
    } else if (opButtons[i].on && opButtons[i].val == '-') {
      handleEvent("-", false);
    } else if (opButtons[i].on && opButtons[i].val == '×') {
      handleEvent("×", false);
    } else if (opButtons[i].on && opButtons[i].val == '÷') {
      handleEvent("÷", false);
    } else if (opButtons[i].on && opButtons[i].val == '.') {
      handleEvent(".", false);
    } else if (opButtons[i].on && opButtons[i].val == '±') {
      if (left) {
        l = l*-1;
        dVal = str(l);
      } else {
        r = r * -1;
        dVal = str(r);
      }
    } else if (opButtons[i].on && opButtons[i].val == 's') {
      if (left) {
        l = sq(l);
        dVal = str(l);
      } else {
        r = sq(r);
        dVal = str(r);
      }
    } else if (opButtons[i].on && opButtons[i].val == 'π') {
      if (left) {
        l = PI;
        dVal = str(l);
      } else {
        r = PI;
        dVal = str(r);
      }
    } else if (opButtons[i].on && opButtons[i].val == '%') {
      if (left) {
        l = l* 100;
        dVal = str(l);
      } else {
        r = r * 100;
        dVal = str(r);
      }
    } else if (opButtons[i].on && opButtons[i].val == '=') {
      handleEvent("=", false);
    } else if (opButtons[i].on && opButtons[i].val == '√') {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    }
  }
  println("l:" + l + " r:" + r + " op:" + op + "result:" + result + "left:" + left);
}

void updateDisplay() {
  fill(#F7F7F7);
  rect(20, 20, width-40, 80, 8);
  fill(#010708);
  textAlign(RIGHT);
  text(dVal, width-60, 80);
  fill(#8AD5FC);
  noStroke();
  circle(170, 730, 180);
  fill(255);
  ellipse(130, 720, 50, 85);
  ellipse(210, 720, 50, 85);
  fill(#BC1D75);
  ellipse(120, 720, 30, 65);
  ellipse(200, 720, 30, 65);
  fill(0);
  ellipse(117, 720, 25, 55);
  ellipse(197, 720, 25, 55);
  fill(255);
  ellipse(111, 720, 15, 30);
  ellipse(191, 720, 15, 30);
  circle(120, 733, 8);
  circle(200, 733, 8);
  noFill();
  stroke(0);
  strokeWeight(3);
  arc(210, 720, 50, 85, PI-QUARTER_PI, TWO_PI, OPEN);
  arc(130, 720, 50, 85, PI+QUARTER_PI, 2*PI+QUARTER_PI, OPEN);
  noFill();
  stroke(#6BABDA);
  arc(170, 780, 35, 20, PI+QUARTER_PI, TWO_PI-QUARTER_PI);
  arc(190, 790, 10, 10, PI, PI+QUARTER_PI);
  arc(160, 790, 10, 10, PI, PI+QUARTER_PI);
  arc(160, 790, 60, 50, HALF_PI, PI);
  fill(#FC9D0D);
  //circle(640, 20, 740);



  if (dVal.length() <17) {
    textSize(20);
  } else if (dVal.length() <18) {
    textSize(18);
  } else if (dVal.length() <19) {
    textSize(16);
  } else if (dVal.length() <20) {
    textSize(14);
  } else {
    textSize(12);
  }
}

void performCalculation() {
  if (op == '+') {
    result = l + r;
  } else if (op == '-') {
    result = l - r;
  } else if (op == '×') {
    result = l * r;
  } else if (op == '÷') {
    result = l / r;
  } else if (op == '%') {
    result = l % r;
  }
  dVal = str(result);
  l = result;
  left = true;
}
