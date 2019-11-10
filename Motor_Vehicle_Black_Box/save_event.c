#include "pic_specific.h"
#include "main.h"
#include "clcd.h"

extern int e_address;
extern char save_array[17];


void save_events(void)
{
	//Saving the event data to the EEPROM 	
	for (int i = 0; i < 16; ++i)
	{
			write_internal_eeprom(e_address, save_array[i]);
			e_address++;
		
	}
	
	//Rolling over to the first location when the 10 location data is filled
	if (e_address == 0xA5)
	{
		e_address = 0x05;
	}

}
