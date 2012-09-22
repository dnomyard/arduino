// Sweep
// by BARRAGAN <http://barraganstudio.com>
// This example code is in the public domain.


#include <Servo.h>
 
Servo myESC;  // create servo object to control a servo
                // a maximum of eight servo objects can be created
 
int pos = 0;    // variable to store the servo position
 
void setup()
{
  myESC.attach(10);  // attaches the servo on pin 9 to the servo object
  Serial.begin(9600);
  Serial.println("Motor test (via servo pins");
}
 
 
void loop()
{
  for(pos = 95; pos < 115; pos += 1)  // goes from 0 degrees to 180 degrees
  {                                  // in steps of 1 degree
    myESC.write(pos);              // tell servo to go to position in variable 'pos'
    Serial.print("serial value = ");
    Serial.print(pos);
    Serial.println();
    delay(500);                       // waits 15ms for the servo to reach the position
  }
  
}
