#include "pic_specific.h"
#include "main.h"
#include "clcd.h"
#include "ds1307.h"
#include "i2c.h"
#include "adc.h"
#include "matrix_keypad.h"

int flag;
int e_address = 0x05;
char save_array[17];
void delay_fun(void);

void init_config(void)
{
	init_clcd();
	init_i2c();
	init_ds1307();
	init_adc();
	init_matrix_keypad();
	init_timer0();

}

void main(void)
{
	init_config();
	char buff[5];
	unsigned short adc_reg_val, gear = 0;
	static unsigned short count = 0;
	unsigned char key,key1, ON_OFF = 0x00;
	short status;

	

			write_internal_eeprom(0x01, '1');
    	    write_internal_eeprom(0x03, '1');
    	    write_internal_eeprom(0x04, '1');
    	    write_internal_eeprom(0x02, '1');

		


	while (1)
	{

		clcd_print("TIME", LINE1(1));
		clcd_print("EVT", LINE1(9));
		clcd_print("SPD", LINE1(13));

	//	for (int z = 0; z < count; ++z)
	//	{
	//		save_array[z] = 48;
			
	//	}
		save_array[16] = '\0';

		get_time();
		display_time();
		
		adc_reg_val = read_adc(CHANNEL4);
		display_speed(adc_reg_val);

		key = read_switches(STATE_CHANGE);
		key1 = read_switches(LEVEL_CHANGE);
				
				//Mk_SW3 -->down key
			if (key1 == MK_SW3)
				{
					if(count++ >= 100)
					{
						if (flag == 0)
						{
							status = password_compare();

							DISP_ON_AND_CURSOR_OFF;
							
							if(status)
							{

								display_menu();	
							}
							else
							{	
								flag = 15;
								delay_fun();
								CLEAR_DISP_SCREEN;
							}
							count = 0;
						}
						else if(flag != 0)
						{
							CLEAR_DISP_SCREEN;
							char wait = flag % 10 + '0';
							clcd_print("Wait", LINE1(4));
							clcd_putch(wait, LINE2(2));
							wait = flag / 10 + '0';
							clcd_putch(wait, LINE2(1));

							clcd_print("minutes", LINE2(5));
							delay_fun();
							CLEAR_DISP_SCREEN;

						}

						
					}
				}
		
		if (key == MK_SW1 ||key == MK_SW2 || key == MK_SW3 || key == MK_SW4 || key == MK_SW5)
		{
			if (key == MK_SW1)
			{
				ON_OFF = !ON_OFF;
				save_time();


				if (ON_OFF)
				{	

					clcd_print("ON ", LINE2(9));
					gear = 0;
				//	save_array[9] = 79;
				//	save_array[10] = 78;
				//	save_array[11] = 32;
				save_speed(adc_reg_val, 1);


				}
				else
				{
				//	save_time();

					clcd_print("OFF", LINE2(9));
				//	save_array[9] = 79;
				//	save_array[10] = 70;
				//	save_array[11] = 70;
				save_speed(adc_reg_val, 0);

				}

				save_events();
			}

			if ((key == MK_SW2 || key == MK_SW3) && ON_OFF)
			{
				
				//MK_SW2 -->UP , MK_SW3 --> DOWN
				if (key == MK_SW2)
				{
					gear++;
					if (gear == 7)
						gear = 6;
				}
				else
				{
					gear--;
					if (gear == 0)
						gear = 1;
				}
				save_time();

				up_down_gear(gear);
				count = 0;

				save_speed(adc_reg_val, 2);

				save_events();
			}
		}
	}
}

void delay_fun(void)
{
	for (int i = 0; i < 5000; ++i)
	{
		for(int j = 0; j< 100; j++);
		for(int k = 0; k< 100; k++);

	}
}
