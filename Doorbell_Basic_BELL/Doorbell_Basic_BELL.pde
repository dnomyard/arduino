/*
 * ********* Doorbell Basic BELL ********
 * requires pre-paired XBee Radios
 * and the BUTTON program on the receiving end
 * by Rob Faludi http://faludi.com
 */

#define VERSION "1.00a0"

int BELL = 5;
char myChar;
int RSSI_PIN = 8;
unsigned long duration;

void setup() {
  pinMode(BELL, OUTPUT);
  Serial.begin(9600);
  pinMode(RSSI_PIN, INPUT);
}


void loop() {
  // look for a capital D over the serial port and ring the bell if found
  if (Serial.available() > 0) {
    myChar = Serial.read();
//    Serial.print(myChar);
//    if (myChar == 'D'){
      //ring the bell briefly
      digitalWrite(BELL, HIGH);
      delay(10);
      digitalWrite(BELL, LOW);
      duration = pulseIn(RSSI_PIN, HIGH);
      Serial.println(duration);
//    }
  }
}
