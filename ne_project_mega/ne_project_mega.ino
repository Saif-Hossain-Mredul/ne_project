#include <ArduinoJson.h>

int muxPinsList[13][4] = {
  { 2, 3, 4, 5 },      // MP-1 activating pins
  { 6, 7, 8, 9 },      // MP-2 activating pins
  { 10, 11, 12, 13 },  // MP-3 activating pins
  { 14, 15, 16, 17 },  // MP-4 activating pins
  { 18, 19, 20, 21 },  // MP-5 activating pins
  { 22, 23, 24, 25 },  // MP-6 activating pins
  { 26, 27, 28, 29 },  // MP-7 activating pins
  { 30, 31, 32, 33 },  // MP-8 activating pins
  { 34, 35, 36, 37 },  // MP-9 activating pins
  { 38, 39, 40, 41 },  // MP-10 activating pins
  { 42, 43, 44, 45 },  // MP-11 activating pins
  { 46, 47, 48, 49 },  // MP-12 activating pins
  { 50, 51, 52, 53 }   // MP-13 activating pins
};

// correspinding signal pins
int signalPins[13] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };

void setup() {
  for (int i = 0; i < 13; i++) {
    for (int j = 0; j < 4; j++) {
      int pin = muxPinsList[i][j];
      Serial.println(pin);

      pinMode(pin, OUTPUT);
      digitalWrite(pin, LOW);
    }
  }

  Serial.begin(115200);
  Serial.setTimeout(101);
}

void loop() {
  StaticJsonDocument<1536> doc;

  // looping over the "muxPinsList" to get the pins for specific multiplexor and read value from it
  for (int i = 0; i < 6; i++) {

    // creating array for holding the miltiplexor activating pins
    int muxPins[4];

    // looping over the nested array to get the actual pin values
    for (int j = 0; j < 4; j++) {
      muxPins[j] = muxPinsList[i][j];
    }

    // creating a nested json array to hold the values
    JsonArray rowVal = doc.createNestedArray("row_" + String(i));

    // reading value from the multiplexor
    readMP(muxPins, signalPins[i], rowVal);
  }

  // serilizing JSON for sending to server
  String output;
  serializeJson(doc, output);

  Serial.println(output);
  delay(101);
}

// this function reads the value of specific multiplexor
void readMP(int controlPin[], int SIG_pin, JsonArray& row) {
  for (int i = 0; i < 13; i++) {
    row.add(readMux(i, controlPin, SIG_pin));
  }
}

// this function reads value from a specific channel of multiplexor
float readMux(int channel, int controlPin[], int SIG_pin) {
  // int controlPin[] = { s0, s1, s2, s3 };

  int muxChannel[16][4] = {
    { 0, 0, 0, 0 },  //channel 0
    { 1, 0, 0, 0 },  //channel 1
    { 0, 1, 0, 0 },  //channel 2
    { 1, 1, 0, 0 },  //channel 3
    { 0, 0, 1, 0 },  //channel 4
    { 1, 0, 1, 0 },  //channel 5
    { 0, 1, 1, 0 },  //channel 6
    { 1, 1, 1, 0 },  //channel 7
    { 0, 0, 0, 1 },  //channel 8
    { 1, 0, 0, 1 },  //channel 9
    { 0, 1, 0, 1 },  //channel 10
    { 1, 1, 0, 1 },  //channel 11
    { 0, 0, 1, 1 },  //channel 12
    { 1, 0, 1, 1 },  //channel 13
    { 0, 1, 1, 1 },  //channel 14
    { 1, 1, 1, 1 }   //channel 15
  };

  //loop through the 4 sig
  for (int i = 0; i < 4; i++) {
    digitalWrite(controlPin[i], muxChannel[channel][i]);
  }

  //read the value at the SIG pin
  int val = analogRead(SIG_pin);

  //return the value
  float voltage = ((val) / 1024.0) * 5;
  return voltage;
}