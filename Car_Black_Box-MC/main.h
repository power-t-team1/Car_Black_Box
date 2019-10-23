#ifndef MAIN_H
#define MAIN_H

void display_date(void);
void display_time(void);
void get_time(void);
void get_date(void);
void up_down_gear(unsigned short gear);
void init_timer0(void);



int display_menu(void);
int password_compare(void);
void delay_fun(void);
int password_change(void);

void save_events(void);
void save_time(void);
void view_log(void);




void write_internal_eeprom(unsigned char address, unsigned char data); 
unsigned char read_internal_eeprom(unsigned char address);



#endif
