#include "pic_specific.h"
#include "main.h"
#include "clcd.h"
#include "matrix_keypad.h"

int display_menu(void)
{	
	//Clearing the CLCD sceen and displaying the Menu options
	CLEAR_DISP_SCREEN;
	clcd_print("MENU", LINE1(1));
	char *menu_list[] = {"View Log", "Change Password", "Set Time", "Download", "Clear"};

	//Declare the variables
	unsigned char key, key1;
	unsigned short count = 0, star = 0, temp = 0;
	clcd_print(menu_list[count], LINE2(2));
	clcd_putch('*', LINE2(0));
	
	//Running the program in an infinite loop to read inputs based on Switch key press
	while(1)
	{
		//Detect the type of key press
		key = read_switches(STATE_CHANGE);
		key1 = read_switches(LEVEL_CHANGE);
		
		//Select the option selected by pressing Switch key 10
		if (key1 == MK_SW10)
		{
			//Calling the respective function based on the selection
			if (temp++ >= 100)
			{
				temp = 0;
				switch (count)
				{
					case 0:
						CLEAR_DISP_SCREEN;
						view_log();

						break;
					case 1:
						password_change();
						break;

					case 2:
						set_time();
						break;
					case 3:
						download_log();
						break;
					case 4:
						clear_log();
						break;

				}
				CLEAR_DISP_SCREEN;

				return 1;

			}
		}
		
		//Switch keys 11 and 12 are used to move the *(selection pointer Up or Down)
		if (key == MK_SW11 || key == MK_SW12)
		{
			CLEAR_DISP_SCREEN;
			temp = 0;
			
			//Pressing switch 11 moves the * pointer DOWN
			if (key == MK_SW11)
			{
				count++;
				if (count == 5)
				{
					count = 4;
				}

			}
			//Pressing switch 12 moves the * pointer UP
			else
			{
				count--;	
				if (count == -1)
					count = 0;	

			}
            //Based on * pointer movement, the corresponding option from the menu list is displayed on the CLCD
			clcd_print(menu_list[count], LINE1(2));
			if (count < 4)
				clcd_print(menu_list[count + 1], LINE2(2));

			if (count >= 0)
			{
				clcd_putch('*', LINE1(0));
			}

		}
	}

}
