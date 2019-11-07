//Include all header files
#include "pic_specific.h"
#include "main.h"
#include "clcd.h"
#include "ds1307.h"
#include "i2c.h"
#include "adc.h"
#include "matrix_keypad.h"
#include "uart.h"

char new_time_flag;
//extern unsigned char time[9];
unsigned char n_time[] = {'0','0',':','0','0',':','0','0','\0'};

void set_time(void)
{
	//Declare variables
	int i,j;
	unsigned char new3[16];
	char key,t_flag = 1,sh_flag = 1,count = 0;

	CLEAR_DISP_SCREEN;
	//Key state
	key = read_switches(STATE_CHANGE);


	while(key != MK_SW10)
	{
		//Initiale display screen
		clcd_print("HH:MM:SS",LINE1(4));
		clcd_print(n_time,LINE2(4));
		clcd_write(0xC0,INSTRUCTION_COMMAND);
		key = read_switches(STATE_CHANGE);
		sh_flag = 1;

		//To set time
		if(key == MK_SW11)
		{
			//To set hour
			if(count == 1)
			{
				if(n_time[0] < '2' && n_time[1] < '9')
				{
					n_time[1]++;
				}

				else if(n_time[0] == '2' && n_time[1] < '3')
				{
					n_time[1]++;
				}
				else if(n_time[0] == '2' && n_time[1] == '3')
				{
					n_time[0] = '0';
					n_time[1] = '0';
				}
				else
				{
					n_time[1] = '0';
					n_time[0]++;
				}
				//Display the array
				clcd_print(n_time,LINE2(4));
			}
			//To set minutes
			else if(count == 2)
			{

				if(n_time[4] < '9')
				{
					n_time[4]++;
				}

				else if(n_time[3] == '5' && n_time[4] == '9')
				{
					n_time[3] = '0';
					n_time[4] = '0';
				}
				else
				{
					n_time[4] = '0';
					n_time[3]++;
				}
				//Display the array
				clcd_print(n_time,LINE2(4));
			}
			//To set seconds
			else if(count == 3)
			{
				if(n_time[7] < '9')
				{
					n_time[7]++;
				}

				else if(n_time[6] == '5' && n_time[7] == '9')
				{
					n_time[6] = '0';
					n_time[7] = '0';
				}
				else
				{
					n_time[7] = '0';
					n_time[6]++;
				}
			    //Display the array
				clcd_print(n_time,LINE2(4));
			}

		}
		//To shift cursor while setting time
		else if(key == MK_SW12)
		{
			count++;
			clcd_write(0x14,INSTRUCTION_COMMAND);
			clcd_write(0x14,INSTRUCTION_COMMAND);
			clcd_write(0x14,INSTRUCTION_COMMAND);
			clcd_write(0x14,INSTRUCTION_COMMAND);
			if(count == 1);
			else if(count == 2)
			{
				clcd_write(0x14,INSTRUCTION_COMMAND);
				clcd_write(0x14,INSTRUCTION_COMMAND);
				clcd_write(0x14,INSTRUCTION_COMMAND);
			}
			else if(count == 3)
			{
				clcd_write(0x14,INSTRUCTION_COMMAND);
				clcd_write(0x14,INSTRUCTION_COMMAND);
				clcd_write(0x14,INSTRUCTION_COMMAND);
				clcd_write(0x14,INSTRUCTION_COMMAND);
				clcd_write(0x14,INSTRUCTION_COMMAND);
				clcd_write(0x14,INSTRUCTION_COMMAND);
			}
			else
				count = 0;
			for(unsigned long i = 500000; i--;);
			clcd_write(0x0F,INSTRUCTION_COMMAND);
			clcd_write(0x14,INSTRUCTION_COMMAND);
			for(unsigned long i = 500000; i--;);
			clcd_write(0x0F,INSTRUCTION_COMMAND);
			for(unsigned long i = 500000; i--;);
		}
	}
	CLEAR_DISP_SCREEN;
	//Print the set time
	clcd_print(n_time, LINE1(0));
	//strcpy(time, n_time);
	for(unsigned long i = 500000; i--;);

	DISP_ON_AND_CURSOR_OFF;
	//set time flag
	
	unsigned char just = 0x00;
	just = (n_time[1] & 0x0F) | ((n_time[0] << 4) & 0xF0);
	write_ds1307(HOUR_ADDR,  just); 
	
	just = (n_time[4] & 0x0F) | ((n_time[3] << 4) & 0xF0);

	write_ds1307(MIN_ADDR, just); 
	just = (n_time[7] & 0x0F) | ((n_time[6] << 4) & 0xF0);
	write_ds1307(SEC_ADDR, just); 
	
	new_time_flag = 1;
}
