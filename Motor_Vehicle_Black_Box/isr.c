#include "pic_specific.h"

extern int flag;
void interrupt isr(void)
{
	static unsigned short count;

	if (TMR0IF)
	{
		TMR0 = TMR0 + 8;

		if (count++ == 20000)
		{
			flag--;
			if (flag <= 0)
			{
				flag = 0;
			}
		//	LED1 = !LED1;
		}

		TMR0IF = 0;
	}
}
