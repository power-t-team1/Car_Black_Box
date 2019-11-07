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

	//clearing eeprom
	while( address != 0xA5)
	{
		write_internal_eeprom(address, 0);
		address++;
	}
	e_address = 0x05;
	return 1;
}
