//Include header files
#include "pic_specific.h"
#include "main.h"
#include "matrix_keypad.h"
#include "clcd.h"
#include "uart.h"

static unsigned int save = 5;

//Start of download log function
int download_log()
{
	init_uart();
	//Declare variables
	short i, j = 0;
	unsigned char new1[16];

	//puts("Check");

    //Passing string through UART
	puts("LOG DOWNLOADED.\n\r");
	puts("TIME     EVE  SPD");

	while(1)
	{	
		//For 10 saved events
		while (j < 10)
		{
			//Reading from memory
			for(i = 0; i < 16; i++)
			{
				new1[i] = read_internal_eeprom(save);
				save++;
			}
			//Sending log on minicom
			puts(new1);
			puts("\n\r");
			j++;
		}
        //Reinitilisation 
		if (save == 165)
		{
			save = 5;
			return 1;
		}
	}
	
	return 1;
}
