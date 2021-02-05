import processing.serial.*;//import serial lib
Serial port; //serial object called port
float brightness = 0;//used to control brightness of screen

void setup()
{
  size(500,500);//window size
  printArray(Serial.list());
  port = new Serial(this,Serial.list()[0],9600); 
  port.bufferUntil('\n');//waiting until it receives \n
}

void draw()//updates the screen
{
 background(0,0,brightness);//(R,G,B)...here we are varying blue colour
}
  
void serialEvent(Serial port)
{
  brightness=float(port.readStringUntil('\n'));
} 
