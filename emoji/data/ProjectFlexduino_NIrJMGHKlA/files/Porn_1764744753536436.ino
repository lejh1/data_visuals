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

#include <SoftwareSerial.h>
SoftwareSerial mySerial(10, 11); // RX, TX

void setup() {
  panServo.attach(panServoPin);
  tiltServo.attach(tiltServoPin);

  panServo.write(90);
  tiltServo.write(90);
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
  panServo.write(pan);
  tiltServo.write(tilt);
}

void loop() {
  if (mySerial.available()) {
    data = mySerial.read();
    Serial.println(data);
    switch(data) {
      case '0':
        panAndTiltServos(17, 54);
        break;
      case '1':
        panAndTiltServos(52, 54);
        break;
      case '2': 
        panAndTiltServos(90, 54);
        break;
      case '3':
        panAndTiltServos(123, 54);
        break;
      case '4': 
        panAndTiltServos(158, 54);
        break;
      case '5':
        panAndTiltServos(17, 72);
        break;
      case '6':
        panAndTiltServos(52, 72); 
        break;
      case '7':
        panAndTiltServos(90, 72);
        break;
      case '8': 
        panAndTiltServos(123, 72);
        break;
      case '9':
        panAndTiltServos(158, 72);
        break;
      case '!': 
        panAndTiltServos(17, 90);
        break;
      case '@':
        panAndTiltServos(52, 90);
        break;
      case '#': 
        panAndTiltServos(90, 90);
        break;
      case '$':
        panAndTiltServos(123, 90);
        break;
      case '%': 
        panAndTiltServos(158, 90);
        break;
      case '^':
        panAndTiltServos(17, 108);
        break;
      case '&': 
        panAndTiltServos(52, 108);
        break;
      case '*':
        panAndTiltServos(90, 108);
        break;
      case '(': 
        panAndTiltServos(123, 108);
        break;
      case ')':
        panAndTiltServos(158, 108);
        break;
      case '-': 
        panAndTiltServos(17, 126);
        break;
      case '+':
        panAndTiltServos(52, 126);
        break;
      case '{':
        panAndTiltServos(90, 126);
        break;
      case '}': 
        panAndTiltServos(123, 126);
        break;
      case '?':
        panAndTiltServos(158, 126);
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
//  int distance = analogRead(distancePin);
//  if (distance > 400) {
//    digitalWrite(backward1, LOW);
//    digitalWrite(backward2, LOW);
//    analogWrite(backwardMotorEn, 0);
//  }
  delay(200);
}

