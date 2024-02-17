
int analogPin = 0;
int raw = 0;
int Vin = 5;
float Vout = 0;
float R1 = 1000;
float R2 = 0;
float buffer = 0;

void setup(){
Serial.begin(9600);
pinMode(2,OUTPUT);//RED
pinMode(4,OUTPUT);//BLUE
}

void loop(){
  raw = analogRead(analogPin);
  if(raw){
    buffer = raw * Vin;
    Vout = (buffer)/1024.0;
    buffer = (Vin/Vout) - 1;
    R2= R1 * buffer;
    Serial.print("Vout: ");
    Serial.println(Vout);
    Serial.print("R2: ");
    Serial.println(R2);
    delay(1000);
  
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
else if(R2<6500)
{
  digitalWrite(4,LOW);

}  

}}
