#include "pic_specific.h"
#include "main.h"
#include "clcd.h"
#include "ds1307.h"
#include "i2c.h"
#include "adc.h"
#include "matrix_keypad.h"

//Declaring the global variables
int flag;
int e_address = 0x05;
char save_array[17];
void delay_fun(void);

//Initialization of the hardware components
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
	//Declare the local variables
	init_config();
	char buff[5];
	unsigned short adc_reg_val, gear = 0;
	static unsigned short count = 0;
	unsigned char key,key1, ON_OFF = 0x00;
	short status;


	//Initially write 1111 to the first 4 locations of the EEPROM. This is the default password
	write_internal_eeprom(0x01, '1');
	write_internal_eeprom(0x03, '1');
	write_internal_eeprom(0x04, '1');
	write_internal_eeprom(0x02, '1');

	//Operation of the program happens in an infinite loop
	while (1)
	{
		//Displaying the events on the CLCD
		clcd_print("TIME", LINE1(1));
		clcd_print("EVT", LINE1(9));
		clcd_print("SPD", LINE1(13));
		
		//Initialising a buffer to hold the event
		save_array[16] = '\0';
		
		//Obtaining the time from RTC and displaying the same on CLCD
		get_time();
		display_time();
		
		//Obtaining the digtal value of the potentiometer and displaying on the CLCD
		adc_reg_val = read_adc(CHANNEL4);
		display_speed(adc_reg_val);
		
		//Detect the type of key press
		key = read_switches(STATE_CHANGE);
		key1 = read_switches(LEVEL_CHANGE);

		//Condition to enter the Menu screen when Switch key 10 is long pressed
		if (key1 == MK_SW10)
		{
			if(count++ >= 100)
			{	
				//Password comppare function is called when the user tries to access Menu screen
				if (flag == 0)
				{
					status = password_compare();

					DISP_ON_AND_CURSOR_OFF;
					
					//If password matches, display menu
					if(status)
					{

						display_menu();	
					}
					//If wrong password is entered for 5 times, the Menu screen is locked for 15 seconds
					else
					{	
						flag = 15;
						delay_fun();
						CLEAR_DISP_SCREEN;
					}
					count = 0;
				}
				//If Menu screen is blocked due to multiple wrong password attempts, the message in the below section is displayed
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
		
		//Below are the switches that are used to trigger ON, OFF and Gear change
		if (key == MK_SW1 ||key == MK_SW2 || key == MK_SW3)
		{
			//If Switch 1 is pressed, ON trigger is generated and the data if the event is saved in the EEPROM
			if (key == MK_SW1)
			{
				ON_OFF = !ON_OFF;

				save_time();
				
				//Displays ON or OFF on the CLCD
				if (ON_OFF)
				{	

					clcd_print("ON ", LINE2(9));
					gear = 0;
					ON_OFF_up_down_gear(10);
				}
				else
				{

					clcd_print("OFF", LINE2(9));
					ON_OFF_up_down_gear(11);
				}

				save_speed(adc_reg_val);
				save_events();
			}
			
			//Switches 2 and 3 change the gear only if the ON trigger is generated 
			if ((key == MK_SW2 || key == MK_SW3) && ON_OFF)
			{
				//Pressing switch 2 increments the gear value
				if (key == MK_SW2)
				{
					gear++;
					if (gear == 7)
						gear = 6;
				}

				//Pressing switch 3 decrements the gear value
				else
				{
					gear--;
					if (gear == 0)
						gear = 1;
				}

				//Save the event values into the EEPROM
				save_time();
				ON_OFF_up_down_gear(gear);
				count = 0;
				save_speed(adc_reg_val);
				save_events();
			}
		}
	}
}

//Delay funtion to provide delay during Menu transitions
void delay_fun(void)
{
	for (int i = 0; i < 5000; ++i)
	{
		for(int j = 0; j< 100; j++);
		for(int k = 0; k< 100; k++);

	}
}
