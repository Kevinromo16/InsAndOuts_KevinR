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



void setup(){
  pinMode(buttonPin, INPUT_PULLUP);
  Serial.begin(9600);


  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led4, OUTPUT);
  pinMode(led5, OUTPUT);
  pinMode(led6, OUTPUT);
  pinMode(led7, OUTPUT);




}

void loop(){
  int xVal= analogRead(xPin);
  int yVal = analogRead(yPin);
  int buttonVal = digitalRead(buttonPin);

  Serial.print("X = ");
  Serial.print(xVal);

  Serial.print("    Y = ");
  Serial.print(yVal);

  Serial.print("    Button = ");
  Serial.println(buttonVal);

  delay(100);

  if(Serial.available()>0){
    char led1State = Serial.read();
    if(led1State == '1'){
      digitalWrite(led1, HIGH);
    } else if(led1State == '8'){
      digitalWrite(led1, LOW);
    }
  }

  if(Serial.available()>0){
    char led2State = Serial.read();
    if(led2State == '2'){
      digitalWrite(led2, HIGH);
    } else if(led2State == '8'){
      digitalWrite(led2, LOW);
    }
  }

  if(Serial.available()>0){
    char led3State = Serial.read();
    if(led3State == '3'){
      digitalWrite(led3, HIGH);
    } else if(led3State == '8'){
      digitalWrite(led3, LOW);
    }
  }

  if(Serial.available()>0){
    char led4State = Serial.read();
    if(led4State == '4'){
      digitalWrite(led4, HIGH);
    } else if(led4State == '8'){
      digitalWrite(led4, LOW);
    }
  }

  if(Serial.available()>0){
    char led5State = Serial.read();
    if(led5State == '5'){
      digitalWrite(led5, HIGH);
    } else if(led5State == '8'){
      digitalWrite(led5, LOW);
    }
  }

  if(Serial.available()>0){
    char led6State = Serial.read();
    if(led6State == '6'){
      digitalWrite(led6, HIGH);
    } else if(led6State == '8'){
      digitalWrite(led6, LOW);
    }
  }

  if(Serial.available()>0){
    char led7State = Serial.read();
    if(led7State == '7'){
      digitalWrite(led7, HIGH);
    } else if(led7State == '8'){
      digitalWrite(led7, LOW);
    }
  }


}

