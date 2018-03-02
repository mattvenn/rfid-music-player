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
#include <FastLED.h>
#define NUM_LEDS 10
#define DATA_PIN 6

CRGB leds[NUM_LEDS];

#include <play_sd_mp3.h>

// state machine defs
#define STATE_START         1
#define STATE_WAIT_STOP     2
#define STATE_PLAY_NEXT     3
#define STATE_WAIT_PLAY     4
#define STATE_PLAY_NO_CARD  5
#define STATE_SETUP_SD      6
#define STATE_SD_ERROR      7

// pin defs
#define SD_SS               10

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
String dir_name = "";
File directory;
String last_rfid = "";

void setup() {
    Serial.begin(9600);
    //while(!Serial) {;;}
    Serial.println("started");
    setup_rfid();

    FastLED.addLeds<WS2812, DATA_PIN, GRB>(leds, NUM_LEDS);

    // Audio connections require memory to work.  For more
    // detailed information, see the MemoryAndCpuUsage example
    AudioMemory(5);

    sgtl5000_1.enable();
    sgtl5000_1.volume(0.01);
}

float get_breath(float speed)
{
    return (exp(sin(millis()/speed*PI)) - 0.36787944)*30;
}

void loop() {
    switch(state)
    {
        case STATE_START:
        {
            state = STATE_SETUP_SD;
            break;
        }
        case STATE_SETUP_SD:
            if(SD.begin(SD_SS))
                state = STATE_WAIT_STOP;
            else
                state = STATE_SD_ERROR;
            break;

        case STATE_SD_ERROR:
        {
            // stuck here forever
            // breath efffect: https://gist.github.com/hsiboy/4eae11073e9d5b21eae3
            fill_solid(leds, NUM_LEDS, CRGB::Red);
            FastLED.setBrightness(get_breath(4000));
            FastLED.show(); 
            break;
        }
        case STATE_WAIT_STOP:
        {
            fill_solid(leds, NUM_LEDS, CRGB::Green);
            FastLED.setBrightness(get_breath(4000));
            FastLED.show(); 

            if(read_rfid()) // returns true or false, updates the global rfid variable
            {
                if(!get_dir_from_rfid(rfid)) // returns true or false, updates the global filename variable
                    if(rfid != "")
                        append_new_rfid(rfid);   // add the rfid card to the index - sets the directory to the nocard directory

                state = STATE_PLAY_NEXT;
                Serial.print("playing directory: [");
                Serial.print(dir_name);
                Serial.println("]");
                directory = SD.open(dir_name.c_str());
                Serial.println(directory.isDirectory());
            }
            break;
        }

        case STATE_PLAY_NEXT:
            {
                File entry = directory.openNextFile();
                if (! entry) // no more files or this wasn't a directory
                {
                    state = STATE_WAIT_STOP;
                    Serial.println("no dir!");
                }
                else
                {
                    filename = dir_name + "/" + entry.name();
                    Serial.println(filename);
                    playMp31.play(filename.c_str());
                    state = STATE_WAIT_PLAY;
                }
                break;
            }

        case STATE_WAIT_PLAY:

            fill_solid(leds, NUM_LEDS, CRGB::Blue);
            FastLED.setBrightness(get_breath(2000));
            FastLED.show(); 

            if(!playMp31.isPlaying())
            {
                Serial.println("mp3 ended");
                state = STATE_PLAY_NEXT;
            }

            // has the optional volume pot soldered
            //float vol = analogRead(15);
            //vol = vol / 1024;

             
            //Serial.print(AudioProcessorUsageMax());	 
            //Serial.println("% All");

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

    delay(10);
}

bool get_dir_from_rfid(String rfid)
{
    Serial.println("opening");
    File index = SD.open("index.txt");
    String rfid_str = "";
    dir_name = ""; // null the global
    int count = 0;
    bool got_rfid = false;

    if(index) 
    {
        while(index.available()) 
        {
            char c = index.read();
            if(c == ',')
            {
                got_rfid = true;
            }
            else if(c == '\r')
            {} // just get rid of the character  
            else if(c == '\n')
            {
                Serial.print(count++);
                Serial.print(" ");
                Serial.print(rfid_str);
                Serial.print(",");
                Serial.println(dir_name);
                
                if(rfid == rfid_str)
                    return true;

                rfid_str = "";
                dir_name = "";
                got_rfid = false;
            }
            else if(got_rfid)
                dir_name.concat(String(c));
            else
                rfid_str.concat(String(c));

        }
        index.close();
        
    }

    return false;
}

// add new rfid to index, pointing to folder that contains 'not found' mp3
void append_new_rfid(String rfid)
{
    Serial.println("appending new rfid to index");
    dir_name = "nocard";
    File index = SD.open("index.txt", FILE_WRITE); // opens at the end of the file
    index.print(rfid);
    index.print(",");
    index.println(dir_name);
    index.close();
}
