//==========THROTTLE=========

#include <Servo.h>
#include <Stepper.h>

// Defines the number of steps per rotation
const int stepsPerRevolution = 2038;

// Creates an instance of stepper class
// Pins entered in sequence IN1-IN3-IN2-IN4 for proper step sequence
Stepper myStepper = Stepper(stepsPerRevolution, 8, 10, 9, 11);
Servo myservo;  // create servo object to control a servo

int potpin = A0;  // analog pin used to connect the potentiometer
int val;    // variable to read the value from the analog pin
float voltage;
//=====TEMPERATURE===========
int analogPin = A2;
int raw = 0;
int Vin = 5;
float Vout = 0;
float R1 = 1000;
float R2 = 0;
float buffer = 0;

void setup() {
  //==========THROTTLE=========
   myservo.attach(3);
  Serial.begin(9600);// attaches the servo on pin 9 to the servo object
  pinMode(7, OUTPUT);
  //=====TEMPERATURE===========
pinMode(2,OUTPUT);//RED
pinMode(4,OUTPUT);//BLUE
myStepper.setSpeed(15);
}

void loop() {
  //==========THROTTLE=========
val = analogRead(potpin);     // reads the value of the potentiometer (value between 0 and 1023)
  voltage=val*5.0/1023;
  if (voltage<=4.6 && voltage>=0.4)
  {
  val = map(val, 0, 1023, 0,110 );     // scale it for use with the servo (value between 0 and 180)
  myservo.write(val);                  // sets the servo position according to the scaled value
  delay(15);                           // waits for the servo to get there
  digitalWrite(7,LOW);
}
else if(voltage>=4.5 or voltage<=0.4)
{myservo.write(0);
}

val = analogRead(A0);
  voltage = val * 5.0/1023;
  Serial.print("TrottleVoltage= ");
  Serial.println(voltage);
  if(voltage>4.6 or voltage<0.4)
  {digitalWrite(7,HIGH);}
//=====TEMPERATURE===========
  raw = analogRead(analogPin);
  if(raw){
    buffer = raw * Vin;
    Vout = (buffer)/1024.0;
    buffer = (Vin/Vout) - 1;
    R2= R1 * buffer;
    Serial.print("Vout: ");
    Serial.println(Vout);
    Serial.print("TemperatureSensor: ");
    Serial.println(R2);
    delay(500);
  
  if(R2<1100)
  {
    digitalWrite(2,HIGH);
    
  }
  else if(R2>1100)
  {
    digitalWrite(2,LOW);
  }
 if (R2>7500)
 {
  digitalWrite(4,HIGH);
  
 }
else if(R2<6500 && R2>1100)
{
  digitalWrite(4,LOW);
  
}  
}
// Rotate CW slowly at 5 RPM
  
  
  }
