// Simple WAV file player example
//
// Requires the audio shield:
//   http://www.pjrc.com/store/teensy3_audio.html
//
// This example code is in the public domain.

#define FASTLED_ALLOW_INTERRUPTS 0
#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <FastLED.h>
#define NUM_LEDS 10 // longer chains end up with corrupted leds
#define DATA_PIN 6

CRGB leds[NUM_LEDS];

typedef void (*SimplePatternList[])();
void start();
void wait();
void error();
void play();

SimplePatternList gPatterns = { start, wait, error, play };
#define FRAMES_PER_SECOND 100

#define START_PATTERN   0
#define WAIT_PATTERN    1
#define ERROR_PATTERN   2
#define PLAY_PATTERN    3

uint8_t led_pattern = START_PATTERN; // Index number of which pattern is current
uint8_t gHue = 0; // rotating "base color" used by many of the patterns

#include <play_sd_mp3.h>

// state machine defs
#define STATE_START         1
#define STATE_WAIT_STOP     2
#define STATE_PLAY_NEXT     3
#define STATE_WAIT_PLAY     4
#define STATE_PLAY_NO_CARD  5
#define STATE_SETUP_SD      6
#define STATE_SD_ERROR      7
#define STATE_WAIT_CHANGE_CARD      9

// pin defs
#define SD_SS               10

int state = STATE_START;

// GUItool: begin automatically generated code
AudioMixer4              mixer1;         //xy=641,541
AudioPlaySdMp3           playMp31;       //xy=154,78
AudioOutputI2S           i2s1;           //xy=334,89

AudioConnection          patchCord1(playMp31, 0, mixer1, 0);
AudioConnection          patchCord2(playMp31, 1, mixer1, 1);

AudioConnection          patchCord3(mixer1, 0, i2s1, 0);
AudioConnection          patchCord4(mixer1, 0, i2s1, 1);

AudioControlSGTL5000     sgtl5000_1;     //xy=240,153

String rfid = "";
String filename = "";
String dir_name = "";
File directory;
String last_rfid = "";

DEFINE_GRADIENT_PALETTE( error_gp ) {
  0,     0,  0,  0,   //black
128,   255,  0,  0,   //red
255,     0,  0,  0,   //black
};

DEFINE_GRADIENT_PALETTE( wait_gp ) {
  0,   255,  0,  255,   //purple
128,     0,  0,  255,   //blue
255,   255,  0,  255,   //purple
};

void start()
{
    FastLED.clear(); 
}
void wait()
{
    CRGBPalette16 myPal = wait_gp;
    int pos = beatsin16( 10, 0, NUM_LEDS-1 );
    leds[pos] = ColorFromPalette( myPal, gHue);
}

void error()
{
    CRGBPalette16 myPal = error_gp;
    fill_solid(leds, NUM_LEDS, ColorFromPalette( myPal, gHue));
}

void play()
{
    fadeToBlackBy( leds, NUM_LEDS, 20);
    int pos = beatsin16( 20, 0, NUM_LEDS-1 );
    leds[pos] += CHSV( gHue, 255, 255);
}

void setup() {
    Serial.begin(9600);
    //while(!Serial){;;}
    Serial.println("started");
    setup_rfid();

    FastLED.addLeds<WS2812, DATA_PIN, GRB>(leds, NUM_LEDS);
    FastLED.setBrightness(44);

    // Audio connections require memory to work.  For more
    // detailed information, see the MemoryAndCpuUsage example
    AudioMemory(5);

    sgtl5000_1.enable();

    led_pattern = PLAY_PATTERN; 
}


void loop() {
    gPatterns[led_pattern]();

    // send the 'leds' array out to the actual LED strip
    FastLED.show();  
    // insert a delay to keep the framerate modest
    FastLED.delay(1000/FRAMES_PER_SECOND); 

    // do some periodic updates
    EVERY_N_MILLISECONDS( 15 ) { gHue++; } // slowly cycle the "base color" through the rainbow

    EVERY_N_MILLISECONDS( 100) {
        // volume
        float vol = analogRead(7);
        vol = vol / 1024;
        mixer1.gain(0,vol);
        mixer1.gain(1,vol);
    }


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
            led_pattern = ERROR_PATTERN;
            break;
        }
        case STATE_WAIT_STOP:
        {
            led_pattern = WAIT_PATTERN;

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
                Serial.println(directory.isDirectory()); // TODO if this fails, do something. Can happen if the index file has a typo
            }
            break;
        }

        case STATE_WAIT_CHANGE_CARD:
            led_pattern = WAIT_PATTERN;
            read_rfid();
            if(rfid != last_rfid) // different card
                state = STATE_WAIT_STOP;
            break;

        case STATE_PLAY_NEXT:
            {
                File entry = directory.openNextFile();
                if (! entry) // no more files or this wasn't a directory
                {
                    state = STATE_WAIT_CHANGE_CARD;
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
            led_pattern = PLAY_PATTERN;

            if(!playMp31.isPlaying())
            {
                Serial.println("mp3 ended");
                state = STATE_PLAY_NEXT;
            }

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
