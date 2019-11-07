#include "pic_specific.h"
#include "main.h"
#include "clcd.h"
#include "matrix_keypad.h"

int display_menu(void)
{
	CLEAR_DISP_SCREEN;
	clcd_print("MENU", LINE1(1));
	
	char *menu_list[] = {"View Log", "Change Password", "Set Time", "Download", "Clear"};

	unsigned char key, key1;
	unsigned short count = 0, star = 0, temp = 0;
		clcd_print(menu_list[count], LINE2(2));
		clcd_putch('*', LINE2(0));

	while(1)
	{
		key = read_switches(STATE_CHANGE);
		key1 = read_switches(LEVEL_CHANGE);

		if (key1 == MK_SW10)
		{
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

		if (key == MK_SW11 || key == MK_SW12)
			{
				CLEAR_DISP_SCREEN;
				temp = 0;
				
				//MK_SW2 -->UP , MK_SW3 --> DOWN
				if (key == MK_SW11)
				{
					count++;
					if (count == 5)
						{
							count = 4;
						}
					
				}
				else
				{
					count--;	
					if (count == -1)
						count = 0;	
								
				}


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