#include "main.h"
#include "clcd.h"
#include "pic_specific.h"
#include "matrix_keypad.h"

extern char save_array[17];

int password_change(void)
{
	unsigned char c_password[5]={'\0'}, r_password[5]={'\0'};
	unsigned char key,address = 0xC0;
	int count = 0, pos = 0, star = 0;
	CLEAR_DISP_SCREEN;

	clcd_print("Enter new password", LINE1(0));
	
	while(1)
	{
			clcd_write(address, INSTRUCTION_COMMAND);
			CURSOR_BLINKING;

			key = read_switches(STATE_CHANGE);


			if (count < 4  && (key == MK_SW1 || key == MK_SW2))
			{
				if (key == MK_SW1)
				{
					c_password[pos] = '1';
				}
				else if (key == MK_SW2)
				{
					c_password[pos] = '0';
				}
					clcd_putch('*', LINE2(pos));

				count++;
				pos++;
				if (count == 4)
				{
					CLEAR_DISP_SCREEN;
					pos = 0;
				//	address = 0xC0;
					clcd_print(" Re Enter new password", LINE1(0));

				}
					address = LINE2(pos);

			}		
			else if ((key == MK_SW1 || key == MK_SW2))
			{
				
				
				if (key == MK_SW1)
				{
					r_password[pos] = '1';
				}
				else if (key == MK_SW2)
				{
					r_password[pos] = '0';
				}
					clcd_putch('*', LINE2(pos));
					pos++;
					count ++;
					address = LINE2(pos);


			}

			//	clcd_print(enter_pass, LINE2(0));

				if (count == 8  && (strcmp(c_password, r_password) == 0))
				{
					write_internal_eeprom(0x01, c_password[0]);
		    	    write_internal_eeprom(0x02, c_password[1]);
		    	    write_internal_eeprom(0x03, c_password[2]);
		    	    write_internal_eeprom(0x04, c_password[3]);
					delay_fun();
		    	    
					CLEAR_DISP_SCREEN;
					DISP_ON_AND_CURSOR_OFF;
					clcd_print("password change", LINE1(0));
					clcd_print("Successfully", LINE2(0));
					delay_fun();
					return 1;
				}
				else if (count == 9  && (strcmp(c_password, r_password) != 0))
				{
					CLEAR_DISP_SCREEN;
					DISP_ON_AND_CURSOR_OFF;
					clcd_print("Change pass not", LINE1(0));
					clcd_print("Matched try again later", LINE2(0));

				//	clcd_print(c_password, LINE1(0));
				//	clcd_print(r_password, LINE2(0));

					delay_fun();
					return 1;

				}

	}
}

void view_log(void)
{
	unsigned char key, key1;
	int short add = 0x05, inc_dec = 0, count = 0;
	//	CLEAR_DISP_SCREEN;
	 clcd_print("TIME  EVT  SPD", LINE1(3));	


	while (1)
	{
		key = read_switches(STATE_CHANGE);
		key1 = read_switches(LEVEL_CHANGE);

		if (key1 == MK_SW7)
		{
			if (count++ >= 1000)
			{
				CLEAR_DISP_SCREEN;
				return;
			}

		}

		if (key == MK_SW11 || key == MK_SW12)
		{
			if (key == MK_SW11)
			{
				if((add + 0x10) != 0xA5)
				{
					add = add + 0x10;
					inc_dec++;
				}
			}
			else
			{
				if((add) != 0x05)
				{
					add = add - 0x10;
					inc_dec--;
				}
				CLEAR_DISP_SCREEN;

			}
			count = 0;
	   		 save_array[0] = read_internal_eeprom(add);
	   		 save_array[1] = read_internal_eeprom(add + 1);
	   		 save_array[2] = read_internal_eeprom(add + 2);
	   		 save_array[3] = read_internal_eeprom(add + 3);
	   		 save_array[4] = read_internal_eeprom(add + 4);
	   		 save_array[5] = read_internal_eeprom(add + 5);
	   		 save_array[6] = read_internal_eeprom(add + 6);
	   		 save_array[7] = read_internal_eeprom(add  + 7);
	   		 save_array[8] = read_internal_eeprom(add + 8);
	   		 save_array[9] = read_internal_eeprom(add + 9);
	   		 save_array[10] = read_internal_eeprom(add + 10);
	   		 save_array[11] = read_internal_eeprom(add + 11);
	   		 save_array[12] = read_internal_eeprom(add + 12);
	   		 save_array[13] = read_internal_eeprom(add + 13);
	   		 save_array[14] = read_internal_eeprom(add + 14);
	   		 save_array[15] = read_internal_eeprom(add + 15);

			 clcd_putch('#', LINE1(0));
			 clcd_putch(inc_dec + 48, LINE1(1));
			 clcd_print("TIME  EVT  SPD", LINE1(3));	

	   		 clcd_print(save_array, LINE2(0));

		}

	}


}