#include <Servo.h>
const int buttonPin = 2;
const int LED1 = 13;
const int LED2 = 12;
const int LED3 = 11;
const int LED4 = 10;
const int LED5 = 9;
const int LED6 = 8;
int buttonState = 0;
void setup() {
  // put your setup code here, to run once:
  pinMode (LED1,OUTPUT);
  pinMode (LED2, OUTPUT);
  pinMode (LED3, OUTPUT);
  pinMode (LED4, OUTPUT);
  pinMode (LED5, OUTPUT);
  pinMode (LED6, OUTPUT);
  pinMode(buttonPin, INPUT);
}
void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(buttonPin);
  if(buttonState == HIGH){
  digitalWrite(LED1, HIGH);
  delay(1000);
  digitalWrite(LED2, HIGH);
  delay(2000);
  digitalWrite(LED3, HIGH);
  delay(3000);
  digitalWrite(LED4, HIGH);
  delay(4000);
  digitalWrite(LED5, HIGH);
  delay(5000);
  digitalWrite(LED6, HIGH);
  delay(6000);
  } else{
  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);
  digitalWrite(LED5, LOW);
  digitalWrite(LED6, LOW);
  }
}