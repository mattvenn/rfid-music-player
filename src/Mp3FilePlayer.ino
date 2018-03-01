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

// state machine defs
#define STATE_START         1
#define STATE_WAIT_STOP     2
#define STATE_PLAY          3
#define STATE_WAIT_PLAY     4

int state = STATE_START;

// GUItool: begin automatically generated code
AudioPlaySdMp3           playMp31;       //xy=154,78
AudioOutputI2S           i2s1;           //xy=334,89
AudioConnection          patchCord1(playMp31, 0, i2s1, 0);
AudioConnection          patchCord2(playMp31, 1, i2s1, 1);
AudioControlSGTL5000     sgtl5000_1;     //xy=240,153
// GUItool: end automatically generated code

String rfid = "";
String filename = "";
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


  if (!(SD.begin(10))) {
    // stop here, but print a message repetitively
    while (1) {
      Serial.println("Unable to access the SD card");
      delay(500);
    }
  }
}



void loop() {
    switch(state)
    {
        case STATE_START:
        {
            state = STATE_WAIT_STOP;
            break;
        }
        case STATE_WAIT_STOP:
        {
            if(read_rfid()) // returns true or false, updates the global rfid variable
            {
                if(get_file_from_rfid(rfid)) // returns true or false, updates the global filename variable
                    state = STATE_PLAY;
            }
            break;
        }
        case STATE_PLAY:
            Serial.println(filename);
            playMp31.play(filename.c_str());
            state = STATE_WAIT_PLAY;
            break;

        case STATE_WAIT_PLAY:
            if(!playMp31.isPlaying())
            {
                Serial.println("mp3 ended");
                state = STATE_WAIT_STOP;
            }

            // has the optional volume pot soldered
            //float vol = analogRead(15);
            //vol = vol / 1024;

             
            Serial.print(AudioProcessorUsageMax());	 
            Serial.println("% All");

            AudioProcessorUsageMaxReset();
            playMp31.processorUsageMaxReset();
            playMp31.processorUsageMaxResetDecoder();

            if(read_rfid())
            {
                if(rfid != last_rfid) // different card
                {
                    Serial.println("card changed");
                    playMp31.stop();
                    state = STATE_WAIT_STOP;
                }
                else
                    break;

            }
            else // card removed
            {
                Serial.println("card removed");
                playMp31.stop();
                state = STATE_WAIT_STOP;
            }

            break;
        
        default:
            Serial.println("no case!");
            break;
    }

    delay(100);
}

bool get_file_from_rfid(String rfid)
{
    filename = "";
    Serial.println(rfid);

    if(rfid == "967fa958")
        filename = "one.mp3";
    else if(rfid == "50dcb373")
        filename = "two.mp3";

    if(filename == "")
        return false;
    return true;
}
