#include "pic_specific.h"
#include "main.h"
#include "matrix_keypad.h"
#include "clcd.h"


int password_compare(void)
{

	//Declare the variables
	unsigned char key, address = 0xC0; 
	char ch;
	unsigned int j, i;
	int short count = 0, pos = 0, flag = 0, flag1 = 0;

	unsigned char password[5]= {'\0'}, enter_pass[5] = {'\0'};

	//read from the eeprom to a character
	password[0] = read_internal_eeprom(0x01);
	password[1] = read_internal_eeprom(0x02);
	password[2] = read_internal_eeprom(0x03);
	password[3] = read_internal_eeprom(0x04);

	CLEAR_DISP_SCREEN;

	while(1)
	{
		//Detect the type of key press
		key = read_switches(STATE_CHANGE);

		clcd_print("Enter Password   ", LINE1(0));

		clcd_write(address, INSTRUCTION_COMMAND);
		CURSOR_BLINKING;

		//Switch key 1 and 2 inputs values 1 and 0 respectively
		if ((key == MK_SW1 || key == MK_SW2))
		{
			if (key == MK_SW1)
			{
				enter_pass[pos] = '1';
			}
			else if (key == MK_SW2)
			{
				enter_pass[pos] = '0';
			}
			clcd_putch('*', LINE2(pos));
			count++;
			pos++;
			address = LINE2(pos);

			//Comparing the entered password and the password from EEPROM and displaying the output
			if (count == 4 && (strcmp(password, enter_pass) == 0))
			{

				return 1;
			}
			if (count == 4 && (strcmp(password, enter_pass) != 0))
			{
				clcd_print("Password Not Match", LINE1(0));
				pos = 0;
				count = 0;

				if(flag1 != 1)
				{
					flag++;
					ch = 53 - flag;
					clcd_putch(ch, LINE2(0));
				}
				clcd_print(" Tries left...!", LINE2(1));

				//Providing a delay 
				for (i = 10; i--; )
				{
					for (j = 50000; j--; );
					for (j = 20000; j--; );
				}

				address = 0xC0;
				CLEAR_DISP_SCREEN;

				//If password is entered incorrectly for 5 attempts, displaying the below message and blocking the Menu screen for 15 seconds
				if (flag == 5)
				{
					CLEAR_DISP_SCREEN;
					DISP_ON_AND_CURSOR_OFF;
					clcd_print("Password Not Match", LINE1(0));
					clcd_print("Wait 15 minutes", LINE2(0));
					return 0;
				}
			}

		}

		//Providing a delay
		for (j = 10000; j--; );
	}
}
