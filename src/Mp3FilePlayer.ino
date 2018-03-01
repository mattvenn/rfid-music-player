// Simple WAV file player example
//
// Requires the audio shield:
//   http://www.pjrc.com/store/teensy3_audio.html
//
// This example code is in the public domain.

#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>

#include <play_sd_mp3.h>


// GUItool: begin automatically generated code
AudioPlaySdMp3           playMp31;       //xy=154,78
AudioOutputI2S           i2s1;           //xy=334,89
AudioConnection          patchCord1(playMp31, 0, i2s1, 0);
AudioConnection          patchCord2(playMp31, 1, i2s1, 1);
AudioControlSGTL5000     sgtl5000_1;     //xy=240,153
// GUItool: end automatically generated code

String rfid = "";
String last_rfid = "";

void setup() {
  Serial.begin(9600);
  while(!Serial) {;;}
  Serial.println("started");
  setup_rfid();


  // Audio connections require memory to work.  For more
  // detailed information, see the MemoryAndCpuUsage example
  AudioMemory(5);

  sgtl5000_1.enable();
  sgtl5000_1.volume(0.01);

 // SPI.setMOSI(7);
//  SPI.setSCK(14);

  if (!(SD.begin(10))) {
    // stop here, but print a message repetitively
    while (1) {
      Serial.println("Unable to access the SD card");
      delay(500);
    }
  }
}

void playFile(const char *filename)
{
  Serial.print("Playing file: ");
  Serial.println(filename);

  // Start playing the file.  This sketch continues to
  // run while the file plays.
  playMp31.play(filename);

  // Simply wait for the file to finish playing.
  while (playMp31.isPlaying()) {
      Serial.print("Playing file: ");
      Serial.println(filename);
    // uncomment these lines if your audio shield
    // has the optional volume pot soldered
    //float vol = analogRead(15);
    //vol = vol / 1024;

#if 1	
//	 Serial.print("Max Usage: ");
//	 Serial.print(playMp31.processorUsageMax());
//	 Serial.print("% Audio, ");
//	 Serial.print(playMp31.processorUsageMaxDecoder());	 	 
//	 Serial.print("% Decoding max, ");
	 
//	 Serial.print(playMp31.processorUsageMaxSD());	 
//	 Serial.print("% SD max, ");
	 	 
	 Serial.print(AudioProcessorUsageMax());	 
	 Serial.println("% All");
	 
	 AudioProcessorUsageMaxReset();
	 playMp31.processorUsageMaxReset();
	 playMp31.processorUsageMaxResetDecoder();

#endif 
     if(read_rfid() != "")
     {
        playMp31.stop();
        break;
     }
	 delay(250);
  }
}

void loop() {
 if(read_rfid() != "")
 {
    Serial.println(rfid);
    if(rfid == "967fa958")
    {
        Serial.println("one");
        playFile("one.mp3");	
    }
    else if(rfid == "50dcb373")
    {
        Serial.println("two");
        playFile("two.mp3");	
    }

 }
 delay(250);
}
