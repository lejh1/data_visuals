#include <SoftwareSerial.h>// import the serial library

SoftwareSerial Genotronex(10, 11); // RX, TX
//int ledpin=13; // led on D13 will show blink on / off
int BluetoothData; // the data given from Computer

int enA = 5;
int in1 = 8;
int in2 = 7

int enB = 3;
int in3 = 6;
int in4 = 4;

boolean movingForward = false;
boolean stopped = true;
int press = 1;

void setup() {
  Genotronex.begin(9600);
  pinMode(enA, OUTPUT);
  pinMode(enB, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  pinMode(in3, OUTPUT);
  pinMode(in4, OUTPUT);
}

void loop() {
   if (Genotronex.available()){
      BluetoothData=Genotronex.read();
      if(BluetoothData=='w'){ 
        movingForward = true;  
        digitalWrite(in3, LOW);
        digitalWrite(in4, HIGH);
        analogWrite(enB, 2);
      }
      //left
      else if (BluetoothData== 'a'){
          digitalWrite(in1, LOW);
          digitalWrite(in2, HIGH);
          analogWrite(enA, 255);
          delay(1000);
          digitalWrite(in1, LOW);
          digitalWrite(in2, LOW);
          
      }
      //right
      else if (BluetoothData== 'd'){
          digitalWrite(in1, HIGH);
          digitalWrite(in2, LOW);
          analogWrite(enA, 255);
          delay(1000);
          digitalWrite(in1, LOW);
          digitalWrite(in2, LOW);             
      }
      //stop
      else if (BluetoothData=='s'){
          digitalWrite(in3, LOW);
          digitalWrite(in4, LOW);
          Genotronex.println("Stopping");
  


    }
}
delay(100);
}

