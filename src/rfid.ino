#include <SPI.h>
#include <MFRC522.h>

#define SS_PIN 15
#define RST_PIN 16
MFRC522 mfrc522(SS_PIN, RST_PIN);	// Create MFRC522 instance


void setup_rfid()
{
    SPI.begin();			// Init SPI bus
    SPI.setMOSI(7); SPI.setMISO(12); SPI.setSCK(14);
    mfrc522.PCD_Init();		// Init MFRC522
}

String read_rfid()
{
    rfid = "";
	// Look for new cards
	if ( ! mfrc522.PICC_IsNewCardPresent()) {
		return rfid;
}
	// Select one of the cards
	if ( ! mfrc522.PICC_ReadCardSerial()) {
		return rfid;
	}
	
    mfrc522.PICC_HaltA();
	for (byte i = 0; i < mfrc522.uid.size; i++) 
	{
		if(mfrc522.uid.uidByte[i] < 0x10)
		rfid.concat("0");
		rfid.concat(String(mfrc522.uid.uidByte[i], HEX));
	} 
    Serial.println(rfid);
	return rfid;
}

