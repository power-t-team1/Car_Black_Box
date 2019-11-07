#include "pic_specific.h"
#include "main.h"
#include "matrix_keypad.h"
#include "clcd.h"


int password_compare(void)
{
	

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
		key = read_switches(STATE_CHANGE);
		
			clcd_print("Enter Password   ", LINE1(0));
		//dispaly the old password
		//	clcd_print(password, LINE1(0));

			clcd_write(address, INSTRUCTION_COMMAND);
			CURSOR_BLINKING;

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

			//	clcd_print(enter_pass, LINE2(0));

				if (count == 4 && (strcmp(password, enter_pass) == 0))
				{
				//	DISP_ON_AND_CURSOR_OFF;

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
		//	clcd_print(enter_pass, LINE2(0));


					for (i = 10; i--; )
					{
						for (j = 50000; j--; );
						for (j = 20000; j--; );
					}

					address = 0xC0;
					CLEAR_DISP_SCREEN;


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
		
			
			for (j = 10000; j--; );
	}
}
