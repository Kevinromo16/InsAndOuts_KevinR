
#include <Servo.h>  //include Arduino Servo library

Servo servo;  //creates new Servo object called servo

const int LED1 = 11;
const int LED2 = 10;
const int LED3 = 9;
const int LED4 = 8;
const int LED5 = 7;



const int SENSOR = A0;
const int SERVOPIN = 3;
int angle = 0;   // Tracks servo position in degrees

int val = 0; // Tracks incoming value from Serial port


void setup() {
  pinMode (LED1, OUTPUT);
  pinMode (LED2, OUTPUT);
  pinMode (LED3, OUTPUT);
  pinMode (LED4, OUTPUT);
  pinMode (LED5, OUTPUT);

  pinMode (LED1, OUTPUT);
  servo.attach(SERVOPIN); //Specifies pin as output for servo
  Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  val = analogRead(SENSOR);     // reads pot 0 to 1023
  val = val / 4;
  delay(100);

  if(val > 1 && val < 50){
    digitalWrite (LED1, HIGH);
    for (angle = 0; angle <30; angle++)
    servo.write(angle);
    delay(1);
    } 

    else if (val > 51 && val < 100){
    digitalWrite (LED2, HIGH);
    digitalWrite (LED1, LOW);
    for (angle = 0; angle <60; angle++)
    servo.write(angle);
    delay(1);
    } 

    else if (val > 101 && val < 150){
    digitalWrite (LED3, HIGH);
    digitalWrite (LED2, LOW);
    for (angle = 0; angle <90; angle++)
    servo.write(angle);
    delay(1);
    } 

    else if (val > 151 && val < 200){
    digitalWrite (LED4, HIGH);
    digitalWrite (LED3, LOW);
    for (angle = 0; angle <120; angle++)
    servo.write(angle);
    delay(1);
    }

    else if (val > 200 && val < 255){
    digitalWrite (LED5, HIGH);
    digitalWrite (LED4, LOW);
    for (angle = 0; angle <150; angle++)
    servo.write(angle);
    delay(1);
    }
  

}
