#define RELE_PIN 2
#define RELE_OUT A0
int val;
float voltage;
void setup() {
 pinMode(RELE_PIN,OUTPUT);
 pinMode(RELE_OUT,INPUT);
Serial.begin(9600);
}

void loop() {
  val = analogRead(A0);
  voltage = val * 5.0/1023;
  delay (1000);
  Serial.print("Voltage= ");
  Serial.println(voltage);
  if(voltage<4){
  digitalWrite(RELE_PIN,HIGH);}
  else if(voltage>4)
  {digitalWrite(RELE_PIN,LOW);}
}
