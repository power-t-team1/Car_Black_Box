//Include header files
#include "pic_specific.h"
#include "main.h"
#include "matrix_keypad.h"
#include "clcd.h"

extern int e_address;

//Start of clear log function
int clear_log(void)
{
	//Declare variables
	int address = 0x05;

	//Clearing EEPROM by assigning zero to the locations accessed by the write_internal_eeprom function
	while( address != 0xA5)
	{
		write_internal_eeprom(address, 0);
		address++;
	}
	e_address = 0x05;
	return 1;
}
