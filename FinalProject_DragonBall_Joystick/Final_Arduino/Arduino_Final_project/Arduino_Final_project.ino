
const int xPin = A0;
const int yPin = A1;
const int buttonPin = 8;
const int led1 = 13;
const int led2 = 12;
const int led3 = 11;
const int led4 = 10;
const int led5 = 9;
const int led6 = 7;
const int led7 = 6;
int xVal = 0;
int yVal = 0;
int buttonVal = 0;



void setup(){
  //pinMode(buttonPin, INPUT_PULLUP);
  Serial.begin(9600);


  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led4, OUTPUT);
  pinMode(led5, OUTPUT);
  pinMode(led6, OUTPUT);
  pinMode(led7, OUTPUT);

  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(8, INPUT);
  pinMode(8, INPUT_PULLUP);


}

void loop(){
  xVal= analogRead(xPin);
  yVal = analogRead(yPin);
  buttonVal = digitalRead(buttonPin);

  analogWrite(xPin, xVal/4);
  analogWrite(yVal, yVal/4);

  Serial.print("X = ");
  Serial.print(xVal);

  Serial.print("    Y = ");
  Serial.print(yVal);

  Serial.print("    Button = ");
  Serial.println(buttonVal);

  delay(100);

  if(Serial.available()>0){
    char led1State = Serial.read();
    if(led1State == '0'){
      digitalWrite(led1, HIGH);
    }
  }

  if(Serial.available()>0){
    char led2State = Serial.read();
    if(led2State == '1'){
      digitalWrite(led2, HIGH);
    }
  }

  if(Serial.available()>0){
    char led3State = Serial.read();
    if(led3State == '2'){
      digitalWrite(led3, HIGH);
    }
  }

  if(Serial.available()>0){
    char led4State = Serial.read();
    if(led4State == '3'){
      digitalWrite(led4, HIGH);
    }
  }

  if(Serial.available()>0){
    char led5State = Serial.read();
    if(led5State == '4'){
      digitalWrite(led5, HIGH);
    }
  }

  if(Serial.available()>0){
    char led6State = Serial.read();
    if(led6State == '5'){
      digitalWrite(led6, HIGH);
    }
  }

  if(Serial.available()>0){
    char led7State = Serial.read();
    if(led7State == '6'){
      digitalWrite(led7, HIGH);
    }
  }
  
}
