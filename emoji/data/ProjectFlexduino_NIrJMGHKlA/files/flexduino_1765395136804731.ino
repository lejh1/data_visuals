#include <SoftwareSerial.h>
#include <Servo.h>

SoftwareSerial Genotronex(10, 11); // RX, TX
Servo panServo;
Servo tiltServo;

int forwardMotorEn = 5;
int forward1 = 8;
int forward2 = 7;

int backwardMotorEn = 3;
int backward1 = 6;
int backward2 = 4;
char data;

int panServoPin = 13;
int tiltServoPin = 12;
int distancePin = 5;

const int x = 90;
const int y = 90;

const int numrows = 5;
const int numcols = 9;

const int panAngleRange = 152;
const int tiltAngleRange = 60; 

const int deltax = panAngleRange / (numcols-1);
const int deltay = tiltAngleRange / (numrows-1);

const int rowsFromMiddle = (numrows - 1) / 2;
const int columnsFromMiddle = (numcols - 1) / 2;


#include <SoftwareSerial.h>
SoftwareSerial mySerial(10, 11); // RX, TX

void setup() {
  panServo.attach(panServoPin);
  tiltServo.attach(tiltServoPin);

  panServo.write(x);
  tiltServo.write(y);
  pinMode(forwardMotorEn, OUTPUT);
  pinMode(backwardMotorEn, OUTPUT);
  pinMode(forward1, OUTPUT);
  pinMode(forward2, OUTPUT);
  pinMode(backward1, OUTPUT);
  pinMode(backward2, OUTPUT);
  delay(1000);
  Serial.begin(4800);
  mySerial.begin(9600);
}

void panAndTiltServos(int pan, int tilt) {
  Serial.print("Pan: ");
  Serial.println(pan);
  Serial.print("Tilt: ");
  Serial.print(tilt);
  
  panServo.write(pan);
  tiltServo.write(tilt);
}

void loop() {
  if (mySerial.available()) {
    data = mySerial.read();
    switch(data) {
      case 'A':
        panAndTiltServos(x - ((columnsFromMiddle)*deltax), y + ((rowsFromMiddle)*deltay));
        break;
      case 'B':
        panAndTiltServos(x - ((columnsFromMiddle - 1)*deltax), y + ((rowsFromMiddle)*deltay));
        break;
      case 'C':
        panAndTiltServos(x - ((columnsFromMiddle - 2)*deltax), y + ((rowsFromMiddle)*deltay));
        break;
      case 'D':
        panAndTiltServos(x - ((columnsFromMiddle - 3)*deltax), y + ((rowsFromMiddle)*deltay));
        break;
      case 'E':
        panAndTiltServos(x - ((columnsFromMiddle - 4)*deltax), y + ((rowsFromMiddle)*deltay));
        break;
      case 'F':
        panAndTiltServos(x + ((columnsFromMiddle - 3)*deltax), y + ((rowsFromMiddle)*deltay));
        break;
      case 'G':
        panAndTiltServos(x + ((columnsFromMiddle - 2)*deltax), y + ((rowsFromMiddle)*deltay));
        break;
      case 'H':
        panAndTiltServos(x + ((columnsFromMiddle - 1)*deltax), y + ((rowsFromMiddle)*deltay));
        break;
      case 'I':
        panAndTiltServos(x + ((columnsFromMiddle)*deltax), y + ((rowsFromMiddle)*deltay));
        break;

      case 'J':
        panAndTiltServos(x - ((columnsFromMiddle)*deltax), y + ((rowsFromMiddle - 1)*deltay));
        break;
      case 'K':
        panAndTiltServos(x - ((columnsFromMiddle - 1)*deltax), y + ((rowsFromMiddle - 1)*deltay));
        break;
      case 'L':
        panAndTiltServos(x - ((columnsFromMiddle - 2)*deltax), y + ((rowsFromMiddle - 1)*deltay));
        break;
      case 'M':
        panAndTiltServos(x - ((columnsFromMiddle - 3)*deltax), y + ((rowsFromMiddle - 1)*deltay));
        break;
      case 'N':
        panAndTiltServos(x - ((columnsFromMiddle - 4)*deltax), y + ((rowsFromMiddle - 1)*deltay));
        break;
      case 'O':
        panAndTiltServos(x + ((columnsFromMiddle - 3)*deltax), y + ((rowsFromMiddle - 1)*deltay));
        break;
      case 'P':
        panAndTiltServos(x + ((columnsFromMiddle - 2)*deltax), y + ((rowsFromMiddle - 1)*deltay));
        break;
      case 'Q':
        panAndTiltServos(x + ((columnsFromMiddle - 1)*deltax), y + ((rowsFromMiddle - 1)*deltay));
        break;
      case 'R':
        panAndTiltServos(x + ((columnsFromMiddle)*deltax), y + ((rowsFromMiddle - 1)*deltay));
        break;

      case 'S':
        panAndTiltServos(x - ((columnsFromMiddle)*deltax), y);
        break;
      case 'T':
        panAndTiltServos(x - ((columnsFromMiddle - 1)*deltax), y);
        break;
      case 'U':
        panAndTiltServos(x - ((columnsFromMiddle - 2)*deltax), y);
        break;
      case 'V':
        panAndTiltServos(x - ((columnsFromMiddle - 3)*deltax), y);
        break;
      case 'W':
        panAndTiltServos(x - ((columnsFromMiddle - 4)*deltax), y);
        break;
      case 'X':
        panAndTiltServos(x + ((columnsFromMiddle - 3)*deltax), y);
        break;
      case 'Y':
        panAndTiltServos(x + ((columnsFromMiddle - 2)*deltax), y);
        break;
      case 'Z':
        panAndTiltServos(x + ((columnsFromMiddle - 1)*deltax), y);
        break;
      case '0':
        panAndTiltServos(x + ((columnsFromMiddle)*deltax), y);
        break;

      case '1':
        panAndTiltServos(x - ((columnsFromMiddle)*deltax), y - ((rowsFromMiddle - 1)*deltay));
        break;
      case '2':
        panAndTiltServos(x - ((columnsFromMiddle - 1)*deltax), y - ((rowsFromMiddle - 1)*deltay));
        break;
      case '3':
        panAndTiltServos(x - ((columnsFromMiddle - 2)*deltax), y - ((rowsFromMiddle - 1)*deltay));
        break;
      case '4':
        panAndTiltServos(x - ((columnsFromMiddle - 3)*deltax), y - ((rowsFromMiddle - 1)*deltay));
        break;
      case '5':
        panAndTiltServos(x - ((columnsFromMiddle - 4)*deltax), y - ((rowsFromMiddle - 1)*deltay));
        break;
      case '6':
        panAndTiltServos(x + ((columnsFromMiddle - 3)*deltax), y - ((rowsFromMiddle - 1)*deltay));
        break;
      case '7':
        panAndTiltServos(x + ((columnsFromMiddle - 2)*deltax), y - ((rowsFromMiddle - 1)*deltay));
        break;
      case '8':
        panAndTiltServos(x + ((columnsFromMiddle - 1)*deltax), y - ((rowsFromMiddle - 1)*deltay));
        break;
      case '9':
        panAndTiltServos(x + ((columnsFromMiddle)*deltax), y - ((rowsFromMiddle - 1)*deltay));
        break;

      case 'h':
        panAndTiltServos(x - ((columnsFromMiddle)*deltax), y - ((rowsFromMiddle)*deltay));
        break;
      case 'i':
        panAndTiltServos(x - ((columnsFromMiddle - 1)*deltax), y - ((rowsFromMiddle)*deltay));
        break;
      case 'j':
        panAndTiltServos(x - ((columnsFromMiddle - 2)*deltax), y - ((rowsFromMiddle)*deltay));
        break;
      case 'k':
        panAndTiltServos(x - ((columnsFromMiddle - 3)*deltax), y - ((rowsFromMiddle)*deltay));
        break;
      case 'l':
        panAndTiltServos(x - ((columnsFromMiddle - 4)*deltax), y - ((rowsFromMiddle)*deltay));
        break;
      case 'm':
        panAndTiltServos(x + ((columnsFromMiddle - 3)*deltax), y - ((rowsFromMiddle)*deltay));
        break;
      case 'n':
        panAndTiltServos(x + ((columnsFromMiddle - 2)*deltax), y - ((rowsFromMiddle)*deltay));
        break;
      case 'o':
        panAndTiltServos(x + ((columnsFromMiddle - 1)*deltax), y - ((rowsFromMiddle)*deltay));
        break;
      case 'p':
        panAndTiltServos(x + ((columnsFromMiddle)*deltax), y - ((rowsFromMiddle)*deltay));
        break;

      case 'w':
        digitalWrite(backward1, LOW);
        digitalWrite(backward2, HIGH);
        analogWrite(backwardMotorEn, 255);
        break;
      case 'a':
        digitalWrite(forward1, LOW);
        digitalWrite(forward2, HIGH);
        analogWrite(forwardMotorEn, 255);
        break;
      case 's': 
        digitalWrite(backward1, HIGH);
        digitalWrite(backward2, LOW);
        analogWrite(backwardMotorEn, 255);
        break;
      case 'd':
        digitalWrite(forward1, HIGH);
        digitalWrite(forward2, LOW);
        analogWrite(forwardMotorEn, 255);
        break;
      case ' ':
        digitalWrite(backward1, LOW);
        digitalWrite(backward2, LOW);
        analogWrite(backwardMotorEn, 0);
        break;
      default:
        break;
    }
  }
  int distance = analogRead(distancePin);
  if (distance > 400) {
    digitalWrite(backward1, LOW);
    digitalWrite(backward2, LOW);
    analogWrite(backwardMotorEn, 0);
  }
  delay(200);
}

