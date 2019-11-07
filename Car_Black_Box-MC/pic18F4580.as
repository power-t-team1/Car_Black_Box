opt subtitle "Microchip Technology Omniscient Code Generator v1.36 (Free mode) build 201601150325"

opt pagewidth 120

	opt lm

	processor	18F4580
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_ON_OFF_up_down_gear
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_clcd_print
	FNCALL	_main,_clcd_putch
	FNCALL	_main,_clcd_write
	FNCALL	_main,_delay_fun
	FNCALL	_main,_display_menu
	FNCALL	_main,_display_speed
	FNCALL	_main,_display_time
	FNCALL	_main,_get_time
	FNCALL	_main,_init_config
	FNCALL	_main,_password_compare
	FNCALL	_main,_read_adc
	FNCALL	_main,_read_switches
	FNCALL	_main,_save_events
	FNCALL	_main,_save_speed
	FNCALL	_main,_save_time
	FNCALL	_main,_write_internal_eeprom
	FNCALL	_save_speed,___lwdiv
	FNCALL	_save_speed,___lwmod
	FNCALL	_save_events,_write_internal_eeprom
	FNCALL	_password_compare,_clcd_print
	FNCALL	_password_compare,_clcd_putch
	FNCALL	_password_compare,_clcd_write
	FNCALL	_password_compare,_read_internal_eeprom
	FNCALL	_password_compare,_read_switches
	FNCALL	_password_compare,_strcmp
	FNCALL	_init_config,_init_adc
	FNCALL	_init_config,_init_clcd
	FNCALL	_init_config,_init_ds1307
	FNCALL	_init_config,_init_i2c
	FNCALL	_init_config,_init_matrix_keypad
	FNCALL	_init_config,_init_timer0
	FNCALL	_init_ds1307,_read_ds1307
	FNCALL	_init_ds1307,_write_ds1307
	FNCALL	_init_clcd,_clcd_write
	FNCALL	_get_time,_read_ds1307
	FNCALL	_read_ds1307,_i2c_read
	FNCALL	_read_ds1307,_i2c_rep_start
	FNCALL	_read_ds1307,_i2c_start
	FNCALL	_read_ds1307,_i2c_stop
	FNCALL	_read_ds1307,_i2c_write
	FNCALL	_i2c_rep_start,_i2c_idle
	FNCALL	_i2c_read,_i2c_no_ack
	FNCALL	_i2c_read,_i2c_rx_mode
	FNCALL	_i2c_rx_mode,_i2c_idle
	FNCALL	_display_time,_clcd_print
	FNCALL	_display_speed,___lwdiv
	FNCALL	_display_speed,___lwmod
	FNCALL	_display_speed,_clcd_print
	FNCALL	_display_menu,_clcd_print
	FNCALL	_display_menu,_clcd_putch
	FNCALL	_display_menu,_clcd_write
	FNCALL	_display_menu,_clear_log
	FNCALL	_display_menu,_download_log
	FNCALL	_display_menu,_password_change
	FNCALL	_display_menu,_read_switches
	FNCALL	_display_menu,_set_time
	FNCALL	_display_menu,_view_log
	FNCALL	_view_log,_clcd_print
	FNCALL	_view_log,_clcd_putch
	FNCALL	_view_log,_clcd_write
	FNCALL	_view_log,_read_internal_eeprom
	FNCALL	_view_log,_read_switches
	FNCALL	_set_time,_clcd_print
	FNCALL	_set_time,_clcd_write
	FNCALL	_set_time,_read_switches
	FNCALL	_set_time,_write_ds1307
	FNCALL	_write_ds1307,_i2c_start
	FNCALL	_write_ds1307,_i2c_stop
	FNCALL	_write_ds1307,_i2c_write
	FNCALL	_i2c_write,_i2c_idle
	FNCALL	_i2c_stop,_i2c_idle
	FNCALL	_i2c_start,_i2c_idle
	FNCALL	_password_change,_clcd_print
	FNCALL	_password_change,_clcd_putch
	FNCALL	_password_change,_clcd_write
	FNCALL	_password_change,_delay_fun
	FNCALL	_password_change,_read_switches
	FNCALL	_password_change,_strcmp
	FNCALL	_password_change,_write_internal_eeprom
	FNCALL	_read_switches,_scan_key
	FNCALL	_clcd_putch,_clcd_write
	FNCALL	_download_log,_init_uart
	FNCALL	_download_log,_puts
	FNCALL	_download_log,_read_internal_eeprom
	FNCALL	_puts,_putch
	FNCALL	_clear_log,_write_internal_eeprom
	FNCALL	_ON_OFF_up_down_gear,_clcd_print
	FNCALL	_clcd_print,_clcd_write
	FNROOT	_main
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_e_address
	global	_save
	global	read_switches@once
	global	_n_time
	global	display_menu@F16059
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"main.c"
	line	10

;initializer for _e_address
	dw	(05h)&0ffffh
	file	"download_log.c"
	line	8

;initializer for _save
	dw	(05h)&0ffffh
	file	"matrix_keypad.c"
	line	90

;initializer for read_switches@once
	db	low(01h)
	file	"set_time.c"
	line	13

;initializer for _n_time
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(0)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"display_menu.c"
	line	9

;initializer for display_menu@F16059
		db	low(STR_9)
	db	high(STR_9)

		db	low(STR_10)
	db	high(STR_10)

		db	low(STR_11)
	db	high(STR_11)

		db	low(STR_12)
	db	high(STR_12)

		db	low(STR_13)
	db	high(STR_13)

	global	_clock_reg
	global	_flag
	global	_new_time_flag
	global	password_change@F16060
	global	password_change@F16062
	global	password_compare@F16068
	global	password_compare@F16070
	global	_calender_reg
	global	isr@count
	global	main@count
	global	_save_array
	global	_date
	global	_time
	global	_TMR0
_TMR0	set	0xFD6
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_EEADR
_EEADR	set	0xFA9
	global	_EECON1bits
_EECON1bits	set	0xFA6
	global	_EECON2
_EECON2	set	0xFA7
	global	_EEDATA
_EEDATA	set	0xFA8
	global	_PIR2bits
_PIR2bits	set	0xFA1
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTD
_PORTD	set	0xF83
	global	_RCREG
_RCREG	set	0xFAE
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_TXREG
_TXREG	set	0xFAD
	global	_ABDEN
_ABDEN	set	0x7DC0
	global	_ABDOVF
_ABDOVF	set	0x7DC7
	global	_ACKDT
_ACKDT	set	0x7E2D
	global	_ACKEN
_ACKEN	set	0x7E2C
	global	_ACKSTAT
_ACKSTAT	set	0x7E2E
	global	_ACQT0
_ACQT0	set	0x7E03
	global	_ACQT1
_ACQT1	set	0x7E04
	global	_ACQT2
_ACQT2	set	0x7E05
	global	_ADCS0
_ADCS0	set	0x7E00
	global	_ADCS1
_ADCS1	set	0x7E01
	global	_ADCS2
_ADCS2	set	0x7E02
	global	_ADDEN
_ADDEN	set	0x7D5B
	global	_ADFM
_ADFM	set	0x7E07
	global	_ADON
_ADON	set	0x7E10
	global	_BCLIF
_BCLIF	set	0x7D0B
	global	_BRG16
_BRG16	set	0x7DC3
	global	_BRGH
_BRGH	set	0x7D62
	global	_CHS2
_CHS2	set	0x7E14
	global	_CKE
_CKE	set	0x7E3E
	global	_CREN
_CREN	set	0x7D5C
	global	_CSRC
_CSRC	set	0x7D67
	global	_FERR
_FERR	set	0x7D5A
	global	_GIE
_GIE	set	0x7F97
	global	_GO
_GO	set	0x7E11
	global	_GODONE
_GODONE	set	0x7E11
	global	_OERR
_OERR	set	0x7D59
	global	_PEN
_PEN	set	0x7E2A
	global	_RB1
_RB1	set	0x7C09
	global	_RB2
_RB2	set	0x7C0A
	global	_RB3
_RB3	set	0x7C0B
	global	_RB4
_RB4	set	0x7C0C
	global	_RB5
_RB5	set	0x7C0D
	global	_RB6
_RB6	set	0x7C0E
	global	_RB7
_RB7	set	0x7C0F
	global	_RBPU
_RBPU	set	0x7F8F
	global	_RC0
_RC0	set	0x7C10
	global	_RC1
_RC1	set	0x7C11
	global	_RC2
_RC2	set	0x7C12
	global	_RCEN
_RCEN	set	0x7E2B
	global	_RCIDL
_RCIDL	set	0x7DC6
	global	_RCIE
_RCIE	set	0x7CED
	global	_RCIF
_RCIF	set	0x7CF5
	global	_RD7
_RD7	set	0x7C1F
	global	_RSEN
_RSEN	set	0x7E29
	global	_RX9
_RX9	set	0x7D5E
	global	_RX9D
_RX9D	set	0x7D58
	global	_SCKP
_SCKP	set	0x7DC4
	global	_SEN
_SEN	set	0x7E28
	global	_SENDB
_SENDB	set	0x7D63
	global	_SMP
_SMP	set	0x7E3F
	global	_SPEN
_SPEN	set	0x7D5F
	global	_SREN
_SREN	set	0x7D5D
	global	_SSPIF
_SSPIF	set	0x7CF3
	global	_SYNC
_SYNC	set	0x7D64
	global	_T0CS
_T0CS	set	0x7EAD
	global	_T0IF
_T0IF	set	0x7F92
	global	_TMR0IE
_TMR0IE	set	0x7F95
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TRISC3
_TRISC3	set	0x7CA3
	global	_TRISC4
_TRISC4	set	0x7CA4
	global	_TRISC6
_TRISC6	set	0x7CA6
	global	_TRISC7
_TRISC7	set	0x7CA7
	global	_TRISD7
_TRISD7	set	0x7CAF
	global	_TRMT
_TRMT	set	0x7D61
	global	_TX9
_TX9	set	0x7D66
	global	_TX9D
_TX9D	set	0x7D60
	global	_TXEN
_TXEN	set	0x7D65
	global	_TXIE
_TXIE	set	0x7CEC
	global	_TXIF
_TXIF	set	0x7CF4
	global	_VCFG0
_VCFG0	set	0x7E0C
	global	_VCFG1
_VCFG1	set	0x7E0D
	global	_WUE
_WUE	set	0x7DC1
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	
STR_22:
	db	77	;'M'
	db	97	;'a'
	db	116	;'t'
	db	99	;'c'
	db	104	;'h'
	db	101	;'e'
	db	100	;'d'
	db	32
	db	116	;'t'
	db	114	;'r'
	db	121	;'y'
	db	32
	db	97	;'a'
	db	103	;'g'
	db	97	;'a'
	db	105	;'i'
	db	110	;'n'
	db	32
	db	108	;'l'
	db	97	;'a'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	0
	
STR_18:
	db	32
	db	82	;'R'
	db	101	;'e'
	db	32
	db	69	;'E'
	db	110	;'n'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	32
	db	110	;'n'
	db	101	;'e'
	db	119	;'w'
	db	32
	db	112	;'p'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	0
	
STR_26:
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	32
	db	78	;'N'
	db	111	;'o'
	db	116	;'t'
	db	32
	db	77	;'M'
	db	97	;'a'
	db	116	;'t'
	db	99	;'c'
	db	104	;'h'
	db	0
	
STR_25:
	db	69	;'E'
	db	110	;'n'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	32
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	32
	db	32
	db	32
	db	0
	
STR_14:
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	32
	db	68	;'D'
	db	79	;'O'
	db	87	;'W'
	db	78	;'N'
	db	76	;'L'
	db	79	;'O'
	db	65	;'A'
	db	68	;'D'
	db	69	;'E'
	db	68	;'D'
	db	46
	db	10
	db	13
	db	0
	
STR_15:
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	69	;'E'
	db	86	;'V'
	db	69	;'E'
	db	32
	db	32
	db	83	;'S'
	db	80	;'P'
	db	68	;'D'
	db	0
	
STR_27:
	db	32
	db	84	;'T'
	db	114	;'r'
	db	105	;'i'
	db	101	;'e'
	db	115	;'s'
	db	32
	db	108	;'l'
	db	101	;'e'
	db	102	;'f'
	db	116	;'t'
	db	46
	db	46
	db	46
	db	33
	db	0
	
STR_29:
	db	87	;'W'
	db	97	;'a'
	db	105	;'i'
	db	116	;'t'
	db	32
	db	49	;'1'
	db	53	;'5'
	db	32
	db	109	;'m'
	db	105	;'i'
	db	110	;'n'
	db	117	;'u'
	db	116	;'t'
	db	101	;'e'
	db	115	;'s'
	db	0
	
STR_19:
	db	112	;'p'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	32
	db	99	;'c'
	db	104	;'h'
	db	97	;'a'
	db	110	;'n'
	db	103	;'g'
	db	101	;'e'
	db	0
	
STR_21:
	db	67	;'C'
	db	104	;'h'
	db	97	;'a'
	db	110	;'n'
	db	103	;'g'
	db	101	;'e'
	db	32
	db	112	;'p'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	32
	db	110	;'n'
	db	111	;'o'
	db	116	;'t'
	db	0
	
STR_10:
	db	67	;'C'
	db	104	;'h'
	db	97	;'a'
	db	110	;'n'
	db	103	;'g'
	db	101	;'e'
	db	32
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	0
	
STR_23:
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	32
	db	32
	db	69	;'E'
	db	86	;'V'
	db	84	;'T'
	db	32
	db	32
	db	83	;'S'
	db	80	;'P'
	db	68	;'D'
	db	0
	
STR_20:
	db	83	;'S'
	db	117	;'u'
	db	99	;'c'
	db	99	;'c'
	db	101	;'e'
	db	115	;'s'
	db	115	;'s'
	db	102	;'f'
	db	117	;'u'
	db	108	;'l'
	db	108	;'l'
	db	121	;'y'
	db	0
	
STR_30:
	db	72	;'H'
	db	72	;'H'
	db	58	;':'
	db	77	;'M'
	db	77	;'M'
	db	58	;':'
	db	83	;'S'
	db	83	;'S'
	db	0
	
STR_12:
	db	68	;'D'
	db	111	;'o'
	db	119	;'w'
	db	110	;'n'
	db	108	;'l'
	db	111	;'o'
	db	97	;'a'
	db	100	;'d'
	db	0
	
STR_11:
	db	83	;'S'
	db	101	;'e'
	db	116	;'t'
	db	32
	db	84	;'T'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	0
	
STR_9:
	db	86	;'V'
	db	105	;'i'
	db	101	;'e'
	db	119	;'w'
	db	32
	db	76	;'L'
	db	111	;'o'
	db	103	;'g'
	db	0
	
STR_13:
	db	67	;'C'
	db	108	;'l'
	db	101	;'e'
	db	97	;'a'
	db	114	;'r'
	db	0
	
STR_8:
	db	77	;'M'
	db	69	;'E'
	db	78	;'N'
	db	85	;'U'
	db	0
	
STR_1:
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	0
	
STR_4:
	db	87	;'W'
	db	97	;'a'
	db	105	;'i'
	db	116	;'t'
	db	0
	
STR_33:
	db	71	;'G'
	db	49	;'1'
	db	32
	db	0
	
STR_34:
	db	71	;'G'
	db	50	;'2'
	db	32
	db	0
	
STR_35:
	db	71	;'G'
	db	51	;'3'
	db	32
	db	0
	
STR_36:
	db	71	;'G'
	db	52	;'4'
	db	32
	db	0
	
STR_32:
	db	71	;'G'
	db	78	;'N'
	db	32
	db	0
	
STR_31:
	db	71	;'G'
	db	82	;'R'
	db	32
	db	0
	
STR_6:
	db	79	;'O'
	db	78	;'N'
	db	32
	db	0
	
STR_7:
	db	79	;'O'
	db	70	;'F'
	db	70	;'F'
	db	0
	
STR_2:
	db	69	;'E'
	db	86	;'V'
	db	84	;'T'
	db	0
STR_5	equ	STR_29+8
STR_28	equ	STR_26+0
STR_17	equ	STR_18+4
STR_24	equ	STR_23+0
STR_3	equ	STR_15+14
STR_16	equ	STR_14+15
; #config settings
global __CFG_OSC$XT
__CFG_OSC$XT equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"pic18F4580.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_clock_reg
_clock_reg:
       ds      3
	global	_flag
_flag:
       ds      2
	global	_new_time_flag
_new_time_flag:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"main.c"
	line	10
	global	_e_address
_e_address:
       ds      2
psect	dataCOMRAM
	file	"download_log.c"
	line	8
_save:
       ds      2
psect	dataCOMRAM
	file	"matrix_keypad.c"
	line	90
read_switches@once:
       ds      1
psect	dataCOMRAM
	file	"set_time.c"
	line	13
	global	_n_time
_n_time:
       ds      9
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
password_change@F16060:
       ds      5
password_change@F16062:
       ds      5
password_compare@F16068:
       ds      5
password_compare@F16070:
       ds      5
	global	_calender_reg
_calender_reg:
       ds      4
isr@count:
       ds      2
main@count:
       ds      2
	global	_save_array
_save_array:
       ds      17
	global	_date
_date:
       ds      11
	global	_time
_time:
       ds      9
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"display_menu.c"
	line	9
display_menu@F16059:
       ds      10
	file	"pic18F4580.as"
	line	#
psect	cinit
; Clear objects allocated to BANK0 (65 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	65
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (6 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+5)&0xffh,c
clrf	(__pbssCOMRAM+4)&0xffh,c
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
	line	#
; Initialize objects allocated to BANK0 (10 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,10
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to COMRAM (14 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,14
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	display_menu@star
display_menu@star:	; 2 bytes @ 0x0
	ds   2
	global	display_menu@menu_list
display_menu@menu_list:	; 10 bytes @ 0x2
	ds   10
	global	display_menu@key1
display_menu@key1:	; 1 bytes @ 0xC
	ds   1
	global	display_menu@temp
display_menu@temp:	; 2 bytes @ 0xD
	ds   2
	global	display_menu@key
display_menu@key:	; 1 bytes @ 0xF
	ds   1
	global	display_menu@count
display_menu@count:	; 2 bytes @ 0x10
	ds   2
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_init_i2c:	; 1 bytes @ 0x0
?_init_ds1307:	; 1 bytes @ 0x0
?_init_adc:	; 1 bytes @ 0x0
?_init_matrix_keypad:	; 1 bytes @ 0x0
?_get_time:	; 1 bytes @ 0x0
?_display_time:	; 1 bytes @ 0x0
?_read_switches:	; 1 bytes @ 0x0
?_delay_fun:	; 1 bytes @ 0x0
?_save_time:	; 1 bytes @ 0x0
?_save_events:	; 1 bytes @ 0x0
?_view_log:	; 1 bytes @ 0x0
?_set_time:	; 1 bytes @ 0x0
?_read_ds1307:	; 1 bytes @ 0x0
?_read_internal_eeprom:	; 1 bytes @ 0x0
?_i2c_start:	; 1 bytes @ 0x0
?_i2c_write:	; 1 bytes @ 0x0
?_i2c_stop:	; 1 bytes @ 0x0
?_i2c_rep_start:	; 1 bytes @ 0x0
?_i2c_read:	; 1 bytes @ 0x0
?_init_timer0:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
??_isr:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_scan_key:	; 1 bytes @ 0x0
?_init_uart:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
?_i2c_idle:	; 1 bytes @ 0x0
?_i2c_rx_mode:	; 1 bytes @ 0x0
?_i2c_no_ack:	; 1 bytes @ 0x0
?_display_menu:	; 2 bytes @ 0x0
?_password_change:	; 2 bytes @ 0x0
?_download_log:	; 2 bytes @ 0x0
?_clear_log:	; 2 bytes @ 0x0
read_adc@channel:	; 1 bytes @ 0x0
	ds   14
??_init_i2c:	; 1 bytes @ 0xE
??_init_adc:	; 1 bytes @ 0xE
??_init_matrix_keypad:	; 1 bytes @ 0xE
?_write_internal_eeprom:	; 1 bytes @ 0xE
??_read_switches:	; 1 bytes @ 0xE
??_delay_fun:	; 1 bytes @ 0xE
??_save_time:	; 1 bytes @ 0xE
??_read_internal_eeprom:	; 1 bytes @ 0xE
??_i2c_start:	; 1 bytes @ 0xE
??_i2c_write:	; 1 bytes @ 0xE
??_i2c_stop:	; 1 bytes @ 0xE
??_i2c_rep_start:	; 1 bytes @ 0xE
??_i2c_read:	; 1 bytes @ 0xE
??_init_timer0:	; 1 bytes @ 0xE
?_clcd_write:	; 1 bytes @ 0xE
??_scan_key:	; 1 bytes @ 0xE
??_init_uart:	; 1 bytes @ 0xE
??_putch:	; 1 bytes @ 0xE
??_i2c_idle:	; 1 bytes @ 0xE
??_i2c_rx_mode:	; 1 bytes @ 0xE
??_i2c_no_ack:	; 1 bytes @ 0xE
	global	?_read_adc
?_read_adc:	; 2 bytes @ 0xE
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0xE
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	?___awmod
?___awmod:	; 2 bytes @ 0xE
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xE
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xE
	global	clcd_write@control_bit
clcd_write@control_bit:	; 1 bytes @ 0xE
	global	read_switches@key1
read_switches@key1:	; 1 bytes @ 0xE
	global	putch@byte
putch@byte:	; 1 bytes @ 0xE
	global	write_internal_eeprom@data
write_internal_eeprom@data:	; 1 bytes @ 0xE
	global	read_internal_eeprom@address
read_internal_eeprom@address:	; 1 bytes @ 0xE
	global	i2c_write@data
i2c_write@data:	; 1 bytes @ 0xE
	global	delay_fun@i
delay_fun@i:	; 2 bytes @ 0xE
	global	save_time@i_231
save_time@i_231:	; 2 bytes @ 0xE
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xE
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0xE
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xE
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xE
	global	strcmp@s1
strcmp@s1:	; 2 bytes @ 0xE
	ds   1
??_write_internal_eeprom:	; 1 bytes @ 0xF
??_read_ds1307:	; 1 bytes @ 0xF
?_write_ds1307:	; 1 bytes @ 0xF
??_clcd_write:	; 1 bytes @ 0xF
?_puts:	; 2 bytes @ 0xF
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0xF
	global	read_switches@detection_type
read_switches@detection_type:	; 1 bytes @ 0xF
	global	write_ds1307@data
write_ds1307@data:	; 1 bytes @ 0xF
	global	read_ds1307@address
read_ds1307@address:	; 1 bytes @ 0xF
	global	write_internal_eeprom@address
write_internal_eeprom@address:	; 1 bytes @ 0xF
	global	puts@s
puts@s:	; 2 bytes @ 0xF
	ds   1
??_read_adc:	; 1 bytes @ 0x10
??_save_events:	; 1 bytes @ 0x10
??_clear_log:	; 1 bytes @ 0x10
??_write_ds1307:	; 1 bytes @ 0x10
??_init_clcd:	; 1 bytes @ 0x10
?_clcd_print:	; 1 bytes @ 0x10
?_clcd_putch:	; 1 bytes @ 0x10
	global	clcd_putch@addr
clcd_putch@addr:	; 1 bytes @ 0x10
	global	read_switches@key
read_switches@key:	; 1 bytes @ 0x10
	global	write_ds1307@address
write_ds1307@address:	; 1 bytes @ 0x10
	global	read_ds1307@data
read_ds1307@data:	; 1 bytes @ 0x10
	global	clcd_print@data
clcd_print@data:	; 2 bytes @ 0x10
	global	delay_fun@j
delay_fun@j:	; 2 bytes @ 0x10
	global	save_time@i
save_time@i:	; 2 bytes @ 0x10
	global	save_events@i
save_events@i:	; 2 bytes @ 0x10
	global	clear_log@address
clear_log@address:	; 2 bytes @ 0x10
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x10
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x10
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x10
	global	strcmp@s2
strcmp@s2:	; 2 bytes @ 0x10
	ds   1
??_init_ds1307:	; 1 bytes @ 0x11
??_get_time:	; 1 bytes @ 0x11
??_download_log:	; 1 bytes @ 0x11
??_clcd_putch:	; 1 bytes @ 0x11
??_puts:	; 1 bytes @ 0x11
	global	clcd_putch@data
clcd_putch@data:	; 1 bytes @ 0x11
	global	init_ds1307@dummy
init_ds1307@dummy:	; 1 bytes @ 0x11
	global	download_log@new1
download_log@new1:	; 16 bytes @ 0x11
	ds   1
??_strcmp:	; 1 bytes @ 0x12
??_init_config:	; 1 bytes @ 0x12
??___awdiv:	; 1 bytes @ 0x12
??___awmod:	; 1 bytes @ 0x12
??___lwdiv:	; 1 bytes @ 0x12
??___lwmod:	; 1 bytes @ 0x12
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0x12
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x12
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x12
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x12
	global	delay_fun@k
delay_fun@k:	; 2 bytes @ 0x12
	global	read_adc@reg_val
read_adc@reg_val:	; 2 bytes @ 0x12
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x12
	ds   1
??_display_time:	; 1 bytes @ 0x13
?_ON_OFF_up_down_gear:	; 1 bytes @ 0x13
??_view_log:	; 1 bytes @ 0x13
??_set_time:	; 1 bytes @ 0x13
??_clcd_print:	; 1 bytes @ 0x13
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x13
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x13
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x13
	global	ON_OFF_up_down_gear@gear
ON_OFF_up_down_gear@gear:	; 2 bytes @ 0x13
	ds   1
??_password_change:	; 1 bytes @ 0x14
	global	?_password_compare
?_password_compare:	; 2 bytes @ 0x14
	global	set_time@t_flag
set_time@t_flag:	; 1 bytes @ 0x14
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x14
	global	password_change@star
password_change@star:	; 2 bytes @ 0x14
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x14
	ds   1
?_display_speed:	; 1 bytes @ 0x15
??_ON_OFF_up_down_gear:	; 1 bytes @ 0x15
?_save_speed:	; 1 bytes @ 0x15
	global	view_log@key1
view_log@key1:	; 1 bytes @ 0x15
	global	set_time@sh_flag
set_time@sh_flag:	; 1 bytes @ 0x15
	global	save_speed@adc_reg_val
save_speed@adc_reg_val:	; 2 bytes @ 0x15
	global	display_speed@adc_reg_val
display_speed@adc_reg_val:	; 2 bytes @ 0x15
	ds   1
??_password_compare:	; 1 bytes @ 0x16
	global	view_log@count
view_log@count:	; 2 bytes @ 0x16
	global	set_time@i_417
set_time@i_417:	; 4 bytes @ 0x16
	global	password_change@r_password
password_change@r_password:	; 5 bytes @ 0x16
	global	password_compare@enter_pass
password_compare@enter_pass:	; 5 bytes @ 0x16
	ds   1
??_display_speed:	; 1 bytes @ 0x17
??_save_speed:	; 1 bytes @ 0x17
	global	save_speed@buff
save_speed@buff:	; 5 bytes @ 0x17
	global	display_speed@buff
display_speed@buff:	; 5 bytes @ 0x17
	ds   1
	global	view_log@inc_dec
view_log@inc_dec:	; 2 bytes @ 0x18
	ds   2
	global	view_log@key
view_log@key:	; 1 bytes @ 0x1A
	global	set_time@i_418
set_time@i_418:	; 4 bytes @ 0x1A
	ds   1
	global	view_log@add
view_log@add:	; 2 bytes @ 0x1B
	global	password_compare@i
password_compare@i:	; 2 bytes @ 0x1B
	global	password_change@c_password
password_change@c_password:	; 5 bytes @ 0x1B
	ds   1
	global	save_speed@i
save_speed@i:	; 1 bytes @ 0x1C
	global	display_speed@i
display_speed@i:	; 1 bytes @ 0x1C
	ds   1
	global	password_compare@flag1
password_compare@flag1:	; 2 bytes @ 0x1D
	ds   1
	global	set_time@i_419
set_time@i_419:	; 4 bytes @ 0x1E
	ds   1
	global	password_compare@password
password_compare@password:	; 5 bytes @ 0x1F
	ds   1
	global	password_change@address
password_change@address:	; 1 bytes @ 0x20
	ds   1
	global	download_log@j
download_log@j:	; 2 bytes @ 0x21
	global	password_change@count
password_change@count:	; 2 bytes @ 0x21
	ds   1
	global	set_time@i_420
set_time@i_420:	; 4 bytes @ 0x22
	ds   1
	global	password_change@key
password_change@key:	; 1 bytes @ 0x23
	global	download_log@i
download_log@i:	; 2 bytes @ 0x23
	ds   1
	global	password_compare@ch
password_compare@ch:	; 1 bytes @ 0x24
	global	password_change@pos
password_change@pos:	; 2 bytes @ 0x24
	ds   1
	global	password_compare@address
password_compare@address:	; 1 bytes @ 0x25
	ds   1
	global	set_time@key
set_time@key:	; 1 bytes @ 0x26
	global	password_compare@flag
password_compare@flag:	; 2 bytes @ 0x26
	ds   1
	global	set_time@just
set_time@just:	; 1 bytes @ 0x27
	ds   1
	global	set_time@count
set_time@count:	; 1 bytes @ 0x28
	global	password_compare@count
password_compare@count:	; 2 bytes @ 0x28
	ds   1
??_display_menu:	; 1 bytes @ 0x29
	ds   1
	global	password_compare@j
password_compare@j:	; 2 bytes @ 0x2A
	ds   2
	global	password_compare@key
password_compare@key:	; 1 bytes @ 0x2C
	ds   1
	global	password_compare@pos
password_compare@pos:	; 2 bytes @ 0x2D
	ds   2
??_main:	; 1 bytes @ 0x2F
	ds   2
	global	main@status
main@status:	; 2 bytes @ 0x31
	ds   2
	global	main@key1
main@key1:	; 1 bytes @ 0x33
	ds   1
	global	main@wait
main@wait:	; 1 bytes @ 0x34
	ds   1
	global	main@adc_reg_val
main@adc_reg_val:	; 2 bytes @ 0x35
	ds   2
	global	main@ON_OFF
main@ON_OFF:	; 1 bytes @ 0x37
	ds   1
	global	main@gear
main@gear:	; 2 bytes @ 0x38
	ds   2
	global	main@key
main@key:	; 1 bytes @ 0x3A
	ds   1
;!
;!Data Sizes:
;!    Strings     321
;!    Constant    0
;!    Data        24
;!    BSS         71
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     59      79
;!    BANK0           160     18      93
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    strcmp@s2	PTR const unsigned char  size(2) Largest target is 5
;!		 -> password_compare@enter_pass(COMRAM[5]), password_change@r_password(COMRAM[5]), 
;!
;!    strcmp@s1	PTR const unsigned char  size(2) Largest target is 5
;!		 -> password_compare@password(COMRAM[5]), password_change@c_password(COMRAM[5]), 
;!
;!    puts@s	PTR const unsigned char  size(2) Largest target is 18
;!		 -> STR_16(CODE[3]), download_log@new1(COMRAM[16]), STR_15(CODE[18]), STR_14(CODE[18]), 
;!
;!    display_menu@menu_list	PTR unsigned char [5] size(2) Largest target is 16
;!		 -> STR_13(CODE[6]), STR_12(CODE[9]), STR_11(CODE[9]), STR_10(CODE[16]), 
;!		 -> STR_9(CODE[9]), 
;!
;!    display_menu@F16059	PTR unsigned char [5] size(2) Largest target is 16
;!		 -> STR_13(CODE[6]), STR_12(CODE[9]), STR_11(CODE[9]), STR_10(CODE[16]), 
;!		 -> STR_9(CODE[9]), 
;!
;!    clcd_print@data	PTR const unsigned char  size(2) Largest target is 24
;!		 -> STR_36(CODE[4]), STR_35(CODE[4]), STR_34(CODE[4]), STR_33(CODE[4]), 
;!		 -> STR_32(CODE[4]), STR_31(CODE[4]), display_speed@buff(COMRAM[5]), n_time(COMRAM[9]), 
;!		 -> STR_30(CODE[9]), STR_29(CODE[16]), STR_28(CODE[19]), STR_27(CODE[16]), 
;!		 -> STR_26(CODE[19]), STR_25(CODE[18]), STR_24(CODE[15]), STR_23(CODE[15]), 
;!		 -> STR_22(CODE[24]), STR_21(CODE[16]), STR_20(CODE[13]), STR_19(CODE[16]), 
;!		 -> STR_18(CODE[23]), STR_17(CODE[19]), date(BANK0[11]), time(BANK0[9]), 
;!		 -> STR_13(CODE[6]), STR_12(CODE[9]), STR_11(CODE[9]), STR_10(CODE[16]), 
;!		 -> STR_9(CODE[9]), STR_8(CODE[5]), STR_7(CODE[4]), STR_6(CODE[4]), 
;!		 -> STR_5(CODE[8]), STR_4(CODE[5]), save_array(BANK0[17]), STR_3(CODE[4]), 
;!		 -> STR_2(CODE[4]), STR_1(CODE[5]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_password_compare
;!    _save_speed->___lwdiv
;!    _save_events->_write_internal_eeprom
;!    _password_compare->_strcmp
;!    _init_config->_init_ds1307
;!    _init_ds1307->_read_ds1307
;!    _init_ds1307->_write_ds1307
;!    _init_clcd->_clcd_write
;!    _get_time->_read_ds1307
;!    _read_ds1307->_i2c_write
;!    _display_time->_clcd_print
;!    _display_speed->___lwdiv
;!    _display_menu->_set_time
;!    _view_log->_clcd_print
;!    _set_time->_clcd_print
;!    _write_ds1307->_i2c_write
;!    _password_change->_delay_fun
;!    _password_change->_strcmp
;!    _clcd_putch->_clcd_write
;!    _download_log->_puts
;!    _puts->_putch
;!    _clear_log->_write_internal_eeprom
;!    _ON_OFF_up_down_gear->_clcd_print
;!    _clcd_print->_clcd_write
;!
;!Critical Paths under _isr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_display_menu
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                17    17      0  163067
;!                                             47 COMRAM    12    12      0
;!                _ON_OFF_up_down_gear
;!                            ___awdiv
;!                            ___awmod
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                          _delay_fun
;!                       _display_menu
;!                      _display_speed
;!                       _display_time
;!                           _get_time
;!                        _init_config
;!                   _password_compare
;!                           _read_adc
;!                      _read_switches
;!                        _save_events
;!                         _save_speed
;!                          _save_time
;!              _write_internal_eeprom
;! ---------------------------------------------------------------------------------
;! (1) _save_time                                            4     4      0     158
;!                                             14 COMRAM     4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _save_speed                                           8     6      2    1167
;!                                             21 COMRAM     8     6      2
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (1) _save_events                                          2     2      0     931
;!                                             16 COMRAM     2     2      0
;!              _write_internal_eeprom
;! ---------------------------------------------------------------------------------
;! (1) _read_adc                                             7     5      2      23
;!                                             14 COMRAM     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _password_compare                                    27    25      2   21228
;!                                             20 COMRAM    27    25      2
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!               _read_internal_eeprom
;!                      _read_switches
;!                             _strcmp
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0    4914
;!                           _init_adc
;!                          _init_clcd
;!                        _init_ds1307
;!                           _init_i2c
;!                 _init_matrix_keypad
;!                        _init_timer0
;! ---------------------------------------------------------------------------------
;! (2) _init_timer0                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_matrix_keypad                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_i2c                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_ds1307                                          1     1      0     848
;!                                             17 COMRAM     1     1      0
;!                        _read_ds1307
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (2) _init_clcd                                            0     0      0    4066
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _init_adc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _get_time                                             0     0      0      96
;!                        _read_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _read_ds1307                                          2     2      0      96
;!                                             15 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (4) _i2c_rep_start                                        0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_read                                             0     0      0       0
;!                         _i2c_no_ack
;!                        _i2c_rx_mode
;! ---------------------------------------------------------------------------------
;! (5) _i2c_rx_mode                                          0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (5) _i2c_no_ack                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _display_time                                         0     0      0   10322
;!                         _clcd_print
;! ---------------------------------------------------------------------------------
;! (1) _display_speed                                        8     6      2   11473
;!                                             21 COMRAM     8     6      2
;!                            ___lwdiv
;!                            ___lwmod
;!                         _clcd_print
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     415
;!                                             14 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     418
;!                                             14 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _display_menu                                        20    20      0   80081
;!                                             41 COMRAM     2     2      0
;!                                              0 BANK0     18    18      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                          _clear_log
;!                       _download_log
;!                    _password_change
;!                      _read_switches
;!                           _set_time
;!                           _view_log
;! ---------------------------------------------------------------------------------
;! (2) _view_log                                            10    10      0   20345
;!                                             19 COMRAM    10    10      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!               _read_internal_eeprom
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (2) _set_time                                            42    42      0   15833
;!                                             19 COMRAM    22    22      0
;!                         _clcd_print
;!                         _clcd_write
;!                      _read_switches
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _write_ds1307                                         2     1      1     709
;!                                             15 COMRAM     2     1      1
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (4) _i2c_write                                            1     1      0      31
;!                                             14 COMRAM     1     1      0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_stop                                             0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_start                                            0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (5) _i2c_idle                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _password_change                                     18    18      0   22370
;!                                             20 COMRAM    18    18      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                          _delay_fun
;!                      _read_switches
;!                             _strcmp
;!              _write_internal_eeprom
;! ---------------------------------------------------------------------------------
;! (2) _strcmp                                               6     2      4     749
;!                                             14 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _read_switches                                        3     3      0     192
;!                                             14 COMRAM     3     3      0
;!                           _scan_key
;! ---------------------------------------------------------------------------------
;! (2) _scan_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _delay_fun                                            6     6      0     204
;!                                             14 COMRAM     6     6      0
;! ---------------------------------------------------------------------------------
;! (2) _clcd_putch                                           2     1      1    4898
;!                                             16 COMRAM     2     1      1
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _download_log                                        20    20      0     645
;!                                             17 COMRAM    20    20      0
;!                          _init_uart
;!                               _puts
;!               _read_internal_eeprom
;! ---------------------------------------------------------------------------------
;! (2) _read_internal_eeprom                                 1     1      0      31
;!                                             14 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _puts                                                 2     0      2     404
;!                                             15 COMRAM     2     0      2
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (4) _putch                                                1     1      0      31
;!                                             14 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _init_uart                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _clear_log                                            2     2      0     900
;!                                             16 COMRAM     2     2      0
;!              _write_internal_eeprom
;! ---------------------------------------------------------------------------------
;! (1) _write_internal_eeprom                                2     1      1     832
;!                                             14 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              6     2      4     424
;!                                             14 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              8     4      4     428
;!                                             14 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _ON_OFF_up_down_gear                                  4     2      2   10584
;!                                             19 COMRAM     4     2      2
;!                         _clcd_print
;! ---------------------------------------------------------------------------------
;! (2) _clcd_print                                           3     0      3   10322
;!                                             16 COMRAM     3     0      3
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _clcd_write                                           2     1      1    4066
;!                                             14 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _isr                                                 14    14      0       0
;!                                              0 COMRAM    14    14      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ON_OFF_up_down_gear
;!     _clcd_print
;!       _clcd_write
;!   ___awdiv
;!   ___awmod
;!   _clcd_print
;!     _clcd_write
;!   _clcd_putch
;!     _clcd_write
;!   _clcd_write
;!   _delay_fun
;!   _display_menu
;!     _clcd_print
;!       _clcd_write
;!     _clcd_putch
;!       _clcd_write
;!     _clcd_write
;!     _clear_log
;!       _write_internal_eeprom
;!     _download_log
;!       _init_uart
;!       _puts
;!         _putch
;!       _read_internal_eeprom
;!     _password_change
;!       _clcd_print
;!         _clcd_write
;!       _clcd_putch
;!         _clcd_write
;!       _clcd_write
;!       _delay_fun
;!       _read_switches
;!         _scan_key
;!       _strcmp
;!       _write_internal_eeprom
;!     _read_switches
;!       _scan_key
;!     _set_time
;!       _clcd_print
;!         _clcd_write
;!       _clcd_write
;!       _read_switches
;!         _scan_key
;!       _write_ds1307
;!         _i2c_start
;!           _i2c_idle
;!         _i2c_stop
;!           _i2c_idle
;!         _i2c_write
;!           _i2c_idle
;!     _view_log
;!       _clcd_print
;!         _clcd_write
;!       _clcd_putch
;!         _clcd_write
;!       _clcd_write
;!       _read_internal_eeprom
;!       _read_switches
;!         _scan_key
;!   _display_speed
;!     ___lwdiv
;!     ___lwmod
;!     _clcd_print
;!       _clcd_write
;!   _display_time
;!     _clcd_print
;!       _clcd_write
;!   _get_time
;!     _read_ds1307
;!       _i2c_read
;!         _i2c_no_ack
;!         _i2c_rx_mode
;!           _i2c_idle
;!       _i2c_rep_start
;!         _i2c_idle
;!       _i2c_start
;!         _i2c_idle
;!       _i2c_stop
;!         _i2c_idle
;!       _i2c_write
;!         _i2c_idle
;!   _init_config
;!     _init_adc
;!     _init_clcd
;!       _clcd_write
;!     _init_ds1307
;!       _read_ds1307
;!         _i2c_read
;!           _i2c_no_ack
;!           _i2c_rx_mode
;!             _i2c_idle
;!         _i2c_rep_start
;!           _i2c_idle
;!         _i2c_start
;!           _i2c_idle
;!         _i2c_stop
;!           _i2c_idle
;!         _i2c_write
;!           _i2c_idle
;!       _write_ds1307
;!         _i2c_start
;!           _i2c_idle
;!         _i2c_stop
;!           _i2c_idle
;!         _i2c_write
;!           _i2c_idle
;!     _init_i2c
;!     _init_matrix_keypad
;!     _init_timer0
;!   _password_compare
;!     _clcd_print
;!       _clcd_write
;!     _clcd_putch
;!       _clcd_write
;!     _clcd_write
;!     _read_internal_eeprom
;!     _read_switches
;!       _scan_key
;!     _strcmp
;!   _read_adc
;!   _read_switches
;!     _scan_key
;!   _save_events
;!     _write_internal_eeprom
;!   _save_speed
;!     ___lwdiv
;!     ___lwmod
;!   _save_time
;!   _write_internal_eeprom
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      16        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     12      5D       5       58.1%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     3B      4F       1       84.0%
;!BITSFR_3             0      0       0      40        0.0%
;!SFR_3                0      0       0      40        0.0%
;!BITSFR_2             0      0       0      40        0.0%
;!SFR_2                0      0       0      40        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      AC       3        0.0%
;!DATA                 0      0      AC      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 25 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wait            1   52[COMRAM] unsigned char 
;;  buff            5    0        unsigned char [5]
;;  gear            2   56[COMRAM] unsigned short 
;;  adc_reg_val     2   53[COMRAM] unsigned short 
;;  status          2   49[COMRAM] short 
;;  key             1   58[COMRAM] unsigned char 
;;  ON_OFF          1   55[COMRAM] unsigned char 
;;  key1            1   51[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        10       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_ON_OFF_up_down_gear
;;		___awdiv
;;		___awmod
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_delay_fun
;;		_display_menu
;;		_display_speed
;;		_display_time
;;		_get_time
;;		_init_config
;;		_password_compare
;;		_read_adc
;;		_read_switches
;;		_save_events
;;		_save_speed
;;		_save_time
;;		_write_internal_eeprom
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"main.c"
	line	25
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 24
	line	27
	
l5097:
;main.c: 27: init_config();
	call	_init_config	;wreg free
	line	29
	
l5099:
;main.c: 28: char buff[5];
;main.c: 29: unsigned short adc_reg_val, gear = 0;
	movlw	high(0)
	movwf	((c:main@gear+1)),c
	movlw	low(0)
	movwf	((c:main@gear)),c
	line	31
	
l5101:
;main.c: 30: static unsigned short count = 0;
;main.c: 31: unsigned char key,key1, ON_OFF = 0x00;
	movlw	low(0)
	movwf	((c:main@ON_OFF)),c
	line	36
	
l5103:
;main.c: 32: short status;
;main.c: 36: write_internal_eeprom(0x01, '1');
	movlw	low(031h)
	movwf	((c:write_internal_eeprom@data)),c
	movlw	(01h)&0ffh
	
	call	_write_internal_eeprom
	line	37
	
l5105:
;main.c: 37: write_internal_eeprom(0x03, '1');
	movlw	low(031h)
	movwf	((c:write_internal_eeprom@data)),c
	movlw	(03h)&0ffh
	
	call	_write_internal_eeprom
	line	38
	
l5107:
;main.c: 38: write_internal_eeprom(0x04, '1');
	movlw	low(031h)
	movwf	((c:write_internal_eeprom@data)),c
	movlw	(04h)&0ffh
	
	call	_write_internal_eeprom
	line	39
	
l5109:
;main.c: 39: write_internal_eeprom(0x02, '1');
	movlw	low(031h)
	movwf	((c:write_internal_eeprom@data)),c
	movlw	(02h)&0ffh
	
	call	_write_internal_eeprom
	goto	l5111
	line	44
;main.c: 44: while (1)
	
l116:
	line	47
	
l5111:
;main.c: 45: {
;main.c: 47: clcd_print("TIME", (0x80 + (1)));
		movlw	low(STR_1)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_1)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(081h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	48
	
l5113:
;main.c: 48: clcd_print("EVT", (0x80 + (9)));
		movlw	low(STR_2)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_2)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(089h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	49
	
l5115:
;main.c: 49: clcd_print("SPD", (0x80 + (13)));
		movlw	low(STR_3)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_3)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(08Dh)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	56
	
l5117:
;main.c: 56: save_array[16] = '\0';
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_save_array+010h))&0ffh
	line	58
	
l5119:; BSR set to: 0

;main.c: 58: get_time();
	call	_get_time	;wreg free
	line	59
	
l5121:
;main.c: 59: display_time();
	call	_display_time	;wreg free
	line	61
	
l5123:
;main.c: 61: adc_reg_val = read_adc(0x04);
	movlw	(04h)&0ffh
	
	call	_read_adc
	movff	0+?_read_adc,(c:main@adc_reg_val)
	movff	1+?_read_adc,(c:main@adc_reg_val+1)
	line	62
	
l5125:
;main.c: 62: display_speed(adc_reg_val);
	movff	(c:main@adc_reg_val),(c:display_speed@adc_reg_val)
	movff	(c:main@adc_reg_val+1),(c:display_speed@adc_reg_val+1)
	call	_display_speed	;wreg free
	line	64
	
l5127:
;main.c: 64: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:main@key)),c
	line	65
	
l5129:
;main.c: 65: key1 = read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movwf	((c:main@key1)),c
	line	68
	
l5131:
;main.c: 68: if (key1 == 10)
		movlw	10
	xorwf	((c:main@key1)),c,w
	btfss	status,2
	goto	u4561
	goto	u4560

u4561:
	goto	l5173
u4560:
	line	70
	
l5133:
;main.c: 69: {
;main.c: 70: if(count++ >= 100)
	movlb	0	; () banked
	movf	((main@count))&0ffh,w
	movwf	(??_main+0+0)&0ffh,c
	movlb	0	; () banked
	movf	((main@count+1))&0ffh,w
	movwf	1+(??_main+0+0)&0ffh,c
	movlb	0	; () banked
	infsnz	((main@count))&0ffh
	incf	((main@count+1))&0ffh
		movf	(??_main+0+1),c,w
	bnz	u4570
	movlw	100
	subwf	 (??_main+0+0),c,w
	btfss	status,0
	goto	u4571
	goto	u4570

u4571:
	goto	l5173
u4570:
	line	72
	
l5135:; BSR set to: 0

;main.c: 71: {
;main.c: 72: if (flag == 0)
	movf	((c:_flag)),c,w
iorwf	((c:_flag+1)),c,w
	btfss	status,2
	goto	u4581
	goto	u4580

u4581:
	goto	l5153
u4580:
	line	74
	
l5137:; BSR set to: 0

;main.c: 73: {
;main.c: 74: status = password_compare();
	call	_password_compare	;wreg free
	movff	0+?_password_compare,(c:main@status)
	movff	1+?_password_compare,(c:main@status+1)
	line	76
	
l5139:
;main.c: 76: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	78
	
l5141:
;main.c: 78: if(status)
	movf	((c:main@status)),c,w
iorwf	((c:main@status+1)),c,w
	btfsc	status,2
	goto	u4591
	goto	u4590

u4591:
	goto	l5145
u4590:
	line	81
	
l5143:
;main.c: 79: {
;main.c: 81: display_menu();
	call	_display_menu	;wreg free
	line	82
;main.c: 82: }
	goto	l5151
	line	83
	
l120:
	line	85
	
l5145:
;main.c: 83: else
;main.c: 84: {
;main.c: 85: flag = 15;
	movlw	high(0Fh)
	movwf	((c:_flag+1)),c
	movlw	low(0Fh)
	movwf	((c:_flag)),c
	line	86
	
l5147:
;main.c: 86: delay_fun();
	call	_delay_fun	;wreg free
	line	87
	
l5149:
;main.c: 87: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l5151
	line	88
	
l121:
	line	89
	
l5151:
;main.c: 88: }
;main.c: 89: count = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((main@count+1))&0ffh
	movlw	low(0)
	movwf	((main@count))&0ffh
	line	90
;main.c: 90: }
	goto	l5173
	line	91
	
l119:; BSR set to: 0

	
l5153:; BSR set to: 0

;main.c: 91: else if(flag != 0)
	movf	((c:_flag)),c,w
iorwf	((c:_flag+1)),c,w
	btfsc	status,2
	goto	u4601
	goto	u4600

u4601:
	goto	l5173
u4600:
	line	93
	
l5155:; BSR set to: 0

;main.c: 92: {
;main.c: 93: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	94
	
l5157:
;main.c: 94: char wait = flag % 10 + '0';
	movff	(c:_flag),(c:___awmod@dividend)
	movff	(c:_flag+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movwf	((c:main@wait)),c
	line	95
	
l5159:
;main.c: 95: clcd_print("Wait", (0x80 + (4)));
		movlw	low(STR_4)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_4)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(084h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	96
	
l5161:
;main.c: 96: clcd_putch(wait, (0xC0 + (2)));
	movlw	low(0C2h)
	movwf	((c:clcd_putch@addr)),c
	movf	((c:main@wait)),c,w
	
	call	_clcd_putch
	line	97
	
l5163:
;main.c: 97: wait = flag / 10 + '0';
	movff	(c:_flag),(c:___awdiv@dividend)
	movff	(c:_flag+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movwf	((c:main@wait)),c
	line	98
	
l5165:
;main.c: 98: clcd_putch(wait, (0xC0 + (1)));
	movlw	low(0C1h)
	movwf	((c:clcd_putch@addr)),c
	movf	((c:main@wait)),c,w
	
	call	_clcd_putch
	line	100
	
l5167:
;main.c: 100: clcd_print("minutes", (0xC0 + (5)));
		movlw	low(STR_5)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_5)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C5h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	101
	
l5169:
;main.c: 101: delay_fun();
	call	_delay_fun	;wreg free
	line	102
	
l5171:
;main.c: 102: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l5173
	line	104
	
l123:
	goto	l5173
	line	107
	
l122:
	goto	l5173
	
l118:
	goto	l5173
	line	108
	
l117:
	line	110
	
l5173:
;main.c: 104: }
;main.c: 107: }
;main.c: 108: }
;main.c: 110: if (key == 1 ||key == 2 || key == 3 || key == 4 || key == 5)
		decf	((c:main@key)),c,w
	btfsc	status,2
	goto	u4611
	goto	u4610

u4611:
	goto	l5183
u4610:
	
l5175:
		movlw	2
	xorwf	((c:main@key)),c,w
	btfsc	status,2
	goto	u4621
	goto	u4620

u4621:
	goto	l5183
u4620:
	
l5177:
		movlw	3
	xorwf	((c:main@key)),c,w
	btfsc	status,2
	goto	u4631
	goto	u4630

u4631:
	goto	l5183
u4630:
	
l5179:
		movlw	4
	xorwf	((c:main@key)),c,w
	btfsc	status,2
	goto	u4641
	goto	u4640

u4641:
	goto	l5183
u4640:
	
l5181:
		movlw	5
	xorwf	((c:main@key)),c,w
	btfss	status,2
	goto	u4651
	goto	u4650

u4651:
	goto	l5111
u4650:
	goto	l5183
	
l126:
	line	112
	
l5183:
;main.c: 111: {
;main.c: 112: if (key == 1)
		decf	((c:main@key)),c,w
	btfss	status,2
	goto	u4661
	goto	u4660

u4661:
	goto	l5203
u4660:
	line	114
	
l5185:
;main.c: 113: {
;main.c: 114: ON_OFF = !ON_OFF;
	movf	((c:main@ON_OFF)),c,w
	btfsc	status,2
	goto	u4671
	goto	u4670
u4671:
	movlw	1
	goto	u4680
u4670:
	movlw	0
u4680:
	movwf	((c:main@ON_OFF)),c
	line	116
	
l5187:
;main.c: 116: save_time();
	call	_save_time	;wreg free
	line	118
	
l5189:
;main.c: 118: if (ON_OFF)
	movf	((c:main@ON_OFF)),c,w
	btfsc	status,2
	goto	u4691
	goto	u4690
u4691:
	goto	l5197
u4690:
	line	121
	
l5191:
;main.c: 119: {
;main.c: 121: clcd_print("ON ", (0xC0 + (9)));
		movlw	low(STR_6)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_6)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C9h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	122
	
l5193:
;main.c: 122: gear = 0;
	movlw	high(0)
	movwf	((c:main@gear+1)),c
	movlw	low(0)
	movwf	((c:main@gear)),c
	line	126
	
l5195:
;main.c: 126: ON_OFF_up_down_gear(10);
	movlw	high(0Ah)
	movwf	((c:ON_OFF_up_down_gear@gear+1)),c
	movlw	low(0Ah)
	movwf	((c:ON_OFF_up_down_gear@gear)),c
	call	_ON_OFF_up_down_gear	;wreg free
	line	127
;main.c: 127: }
	goto	l5199
	line	128
	
l128:
	line	132
	
l5197:
;main.c: 128: else
;main.c: 129: {
;main.c: 132: clcd_print("OFF", (0xC0 + (9)));
		movlw	low(STR_7)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_7)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C9h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	136
;main.c: 136: ON_OFF_up_down_gear(11);
	movlw	high(0Bh)
	movwf	((c:ON_OFF_up_down_gear@gear+1)),c
	movlw	low(0Bh)
	movwf	((c:ON_OFF_up_down_gear@gear)),c
	call	_ON_OFF_up_down_gear	;wreg free
	goto	l5199
	line	137
	
l129:
	line	139
	
l5199:
;main.c: 137: }
;main.c: 139: save_speed(adc_reg_val);
	movff	(c:main@adc_reg_val),(c:save_speed@adc_reg_val)
	movff	(c:main@adc_reg_val+1),(c:save_speed@adc_reg_val+1)
	call	_save_speed	;wreg free
	line	141
	
l5201:
;main.c: 141: save_events();
	call	_save_events	;wreg free
	goto	l5203
	line	142
	
l127:
	line	144
	
l5203:
;main.c: 142: }
;main.c: 144: if ((key == 2 || key == 3) && ON_OFF)
		movlw	2
	xorwf	((c:main@key)),c,w
	btfsc	status,2
	goto	u4701
	goto	u4700

u4701:
	goto	l5207
u4700:
	
l5205:
		movlw	3
	xorwf	((c:main@key)),c,w
	btfss	status,2
	goto	u4711
	goto	u4710

u4711:
	goto	l5111
u4710:
	goto	l5207
	
l132:
	
l5207:
	movf	((c:main@ON_OFF)),c,w
	btfsc	status,2
	goto	u4721
	goto	u4720
u4721:
	goto	l5111
u4720:
	line	148
	
l5209:
;main.c: 145: {
;main.c: 148: if (key == 2)
		movlw	2
	xorwf	((c:main@key)),c,w
	btfss	status,2
	goto	u4731
	goto	u4730

u4731:
	goto	l5217
u4730:
	line	150
	
l5211:
;main.c: 149: {
;main.c: 150: gear++;
	infsnz	((c:main@gear)),c
	incf	((c:main@gear+1)),c
	line	151
	
l5213:
;main.c: 151: if (gear == 7)
		movlw	7
	xorwf	((c:main@gear)),c,w
iorwf	((c:main@gear+1)),c,w
	btfss	status,2
	goto	u4741
	goto	u4740

u4741:
	goto	l5223
u4740:
	line	152
	
l5215:
;main.c: 152: gear = 6;
	movlw	high(06h)
	movwf	((c:main@gear+1)),c
	movlw	low(06h)
	movwf	((c:main@gear)),c
	goto	l5223
	
l134:
	line	153
;main.c: 153: }
	goto	l5223
	line	154
	
l133:
	line	156
	
l5217:
;main.c: 154: else
;main.c: 155: {
;main.c: 156: gear--;
	decf	((c:main@gear)),c
	btfss	status,0
	decf	((c:main@gear+1)),c
	line	157
	
l5219:
;main.c: 157: if (gear == 0)
	movf	((c:main@gear)),c,w
iorwf	((c:main@gear+1)),c,w
	btfss	status,2
	goto	u4751
	goto	u4750

u4751:
	goto	l5223
u4750:
	line	158
	
l5221:
;main.c: 158: gear = 1;
	movlw	high(01h)
	movwf	((c:main@gear+1)),c
	movlw	low(01h)
	movwf	((c:main@gear)),c
	goto	l5223
	
l136:
	goto	l5223
	line	159
	
l135:
	line	160
	
l5223:
;main.c: 159: }
;main.c: 160: save_time();
	call	_save_time	;wreg free
	line	162
	
l5225:
;main.c: 162: ON_OFF_up_down_gear(gear);
	movff	(c:main@gear),(c:ON_OFF_up_down_gear@gear)
	movff	(c:main@gear+1),(c:ON_OFF_up_down_gear@gear+1)
	call	_ON_OFF_up_down_gear	;wreg free
	line	163
	
l5227:
;main.c: 163: count = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((main@count+1))&0ffh
	movlw	low(0)
	movwf	((main@count))&0ffh
	line	165
	
l5229:; BSR set to: 0

;main.c: 165: save_speed(adc_reg_val);
	movff	(c:main@adc_reg_val),(c:save_speed@adc_reg_val)
	movff	(c:main@adc_reg_val+1),(c:save_speed@adc_reg_val+1)
	call	_save_speed	;wreg free
	line	167
	
l5231:
;main.c: 167: save_events();
	call	_save_events	;wreg free
	goto	l5111
	line	168
	
l130:
	goto	l5111
	line	169
	
l124:
	goto	l5111
	line	170
	
l137:
	line	44
	goto	l5111
	
l138:
	line	171
	
l139:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_save_time

;; *************** function _save_time *****************
;; Defined at:
;;		line 13 in file "clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   14[COMRAM] int 
;;  i               2   16[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"clock.c"
	line	13
global __ptext1
__ptext1:
psect	text1
	file	"clock.c"
	line	13
	global	__size_of_save_time
	__size_of_save_time	equ	__end_of_save_time-_save_time
	
_save_time:
;incstack = 0
	opt	stack 29
	line	16
	
l3723:
;clock.c: 16: for (int i = 0; i < 9; ++i)
	movlw	high(0)
	movwf	((c:save_time@i+1)),c
	movlw	low(0)
	movwf	((c:save_time@i)),c
	
l3725:
	btfsc	((c:save_time@i+1)),c,7
	goto	u2931
	movf	((c:save_time@i+1)),c,w
	bnz	u2930
	movlw	9
	subwf	 ((c:save_time@i)),c,w
	btfss	status,0
	goto	u2931
	goto	u2930

u2931:
	goto	l3729
u2930:
	goto	l3735
	
l3727:
	goto	l3735
	line	17
	
l269:
	line	18
	
l3729:
;clock.c: 17: {
;clock.c: 18: save_array[i] = time[i];
	movlw	low(_time)
	addwf	((c:save_time@i)),c,w
	movwf	c:fsr2l
	movlw	high(_time)
	addwfc	((c:save_time@i+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(_save_array)
	addwf	((c:save_time@i)),c,w
	movwf	c:fsr1l
	movlw	high(_save_array)
	addwfc	((c:save_time@i+1)),c,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	16
	
l3731:
	infsnz	((c:save_time@i)),c
	incf	((c:save_time@i+1)),c
	
l3733:
	btfsc	((c:save_time@i+1)),c,7
	goto	u2941
	movf	((c:save_time@i+1)),c,w
	bnz	u2940
	movlw	9
	subwf	 ((c:save_time@i)),c,w
	btfss	status,0
	goto	u2941
	goto	u2940

u2941:
	goto	l3729
u2940:
	goto	l3735
	
l270:
	line	20
	
l3735:
;clock.c: 19: }
;clock.c: 20: for (int i = 9; i < 17; ++i)
	movlw	high(09h)
	movwf	((c:save_time@i_231+1)),c
	movlw	low(09h)
	movwf	((c:save_time@i_231)),c
	
l3737:
	btfsc	((c:save_time@i_231+1)),c,7
	goto	u2951
	movf	((c:save_time@i_231+1)),c,w
	bnz	u2950
	movlw	17
	subwf	 ((c:save_time@i_231)),c,w
	btfss	status,0
	goto	u2951
	goto	u2950

u2951:
	goto	l3741
u2950:
	goto	l273
	
l3739:
	goto	l273
	line	21
	
l271:
	line	22
	
l3741:
;clock.c: 21: {
;clock.c: 22: save_array[i] = 32;
	movlw	low(_save_array)
	addwf	((c:save_time@i_231)),c,w
	movwf	c:fsr2l
	movlw	high(_save_array)
	addwfc	((c:save_time@i_231+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(020h)
	movwf	indf2
	line	20
	
l3743:
	infsnz	((c:save_time@i_231)),c
	incf	((c:save_time@i_231+1)),c
	
l3745:
	btfsc	((c:save_time@i_231+1)),c,7
	goto	u2961
	movf	((c:save_time@i_231+1)),c,w
	bnz	u2960
	movlw	17
	subwf	 ((c:save_time@i_231)),c,w
	btfss	status,0
	goto	u2961
	goto	u2960

u2961:
	goto	l3741
u2960:
	goto	l273
	
l272:
	line	25
	
l273:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_save_time
	__end_of_save_time:
	signat	_save_time,89
	global	_save_speed

;; *************** function _save_speed *****************
;; Defined at:
;;		line 7 in file "adc.c"
;; Parameters:    Size  Location     Type
;;  adc_reg_val     2   21[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;  buff            5   23[COMRAM] unsigned char [5]
;;  i               1   28[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"adc.c"
	line	7
global __ptext2
__ptext2:
psect	text2
	file	"adc.c"
	line	7
	global	__size_of_save_speed
	__size_of_save_speed	equ	__end_of_save_speed-_save_speed
	
_save_speed:
;incstack = 0
	opt	stack 28
	line	12
	
l3795:
;adc.c: 9: char buff[5];
;adc.c: 10: unsigned char i;
;adc.c: 12: i = 3;
	movlw	low(03h)
	movwf	((c:save_speed@i)),c
	goto	l3797
	line	13
;adc.c: 13: do
	
l724:
	line	15
	
l3797:
;adc.c: 14: {
;adc.c: 15: buff[i] = (adc_reg_val % 10) + '0';
	movf	((c:save_speed@i)),c,w
	mullw	01h
	movlw	low(save_speed@buff)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(save_speed@buff)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:save_speed@adc_reg_val),(c:___lwmod@dividend)
	movff	(c:save_speed@adc_reg_val+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	addlw	low(030h)
	movwf	indf2,c

	line	16
	
l3799:
;adc.c: 16: adc_reg_val = adc_reg_val / 10;
	movff	(c:save_speed@adc_reg_val),(c:___lwdiv@dividend)
	movff	(c:save_speed@adc_reg_val+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:save_speed@adc_reg_val)
	movff	1+?___lwdiv,(c:save_speed@adc_reg_val+1)
	line	17
	
l3801:
;adc.c: 17: } while (i--);
	decf	((c:save_speed@i)),c
		incf	((c:save_speed@i)),c,w
	btfss	status,2
	goto	u2971
	goto	u2970

u2971:
	goto	l3797
u2970:
	goto	l3803
	
l725:
	line	18
	
l3803:
;adc.c: 18: buff[4] = '\0';
	movlw	low(0)
	movwf	(0+((c:save_speed@buff)+04h)),c
	line	21
	
l3805:
;adc.c: 21: save_array[13] = buff[0];
	movff	(c:save_speed@buff),0+(_save_array+0Dh)
	line	22
	
l3807:
;adc.c: 22: save_array[14] = buff[1];
	movff	0+((c:save_speed@buff)+01h),0+(_save_array+0Eh)
	line	23
	
l3809:
;adc.c: 23: save_array[15] = buff[2];
	movff	0+((c:save_speed@buff)+02h),0+(_save_array+0Fh)
	line	25
	
l726:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_save_speed
	__end_of_save_speed:
	signat	_save_speed,4217
	global	_save_events

;; *************** function _save_events *****************
;; Defined at:
;;		line 9 in file "save_event.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   16[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_write_internal_eeprom
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"save_event.c"
	line	9
global __ptext3
__ptext3:
psect	text3
	file	"save_event.c"
	line	9
	global	__size_of_save_events
	__size_of_save_events	equ	__end_of_save_events-_save_events
	
_save_events:
;incstack = 0
	opt	stack 28
	line	12
	
l5079:
;save_event.c: 12: for (int i = 0; i < 16; ++i)
	movlw	high(0)
	movwf	((c:save_events@i+1)),c
	movlw	low(0)
	movwf	((c:save_events@i)),c
	
l5081:
	btfsc	((c:save_events@i+1)),c,7
	goto	u4531
	movf	((c:save_events@i+1)),c,w
	bnz	u4530
	movlw	16
	subwf	 ((c:save_events@i)),c,w
	btfss	status,0
	goto	u4531
	goto	u4530

u4531:
	goto	l5085
u4530:
	goto	l5093
	
l5083:
	goto	l5093
	line	13
	
l462:
	line	14
	
l5085:
;save_event.c: 13: {
;save_event.c: 14: write_internal_eeprom(e_address, save_array[i]);
	movlw	low(_save_array)
	addwf	((c:save_events@i)),c,w
	movwf	c:fsr2l
	movlw	high(_save_array)
	addwfc	((c:save_events@i+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:write_internal_eeprom@data)),c
	movf	((c:_e_address)),c,w
	
	call	_write_internal_eeprom
	line	15
	
l5087:
;save_event.c: 15: e_address++;
	infsnz	((c:_e_address)),c
	incf	((c:_e_address+1)),c
	line	12
	
l5089:
	infsnz	((c:save_events@i)),c
	incf	((c:save_events@i+1)),c
	
l5091:
	btfsc	((c:save_events@i+1)),c,7
	goto	u4541
	movf	((c:save_events@i+1)),c,w
	bnz	u4540
	movlw	16
	subwf	 ((c:save_events@i)),c,w
	btfss	status,0
	goto	u4541
	goto	u4540

u4541:
	goto	l5085
u4540:
	goto	l5093
	
l463:
	line	19
	
l5093:
;save_event.c: 17: }
;save_event.c: 19: if (e_address == 0xA5)
		movlw	165
	xorwf	((c:_e_address)),c,w
iorwf	((c:_e_address+1)),c,w
	btfss	status,2
	goto	u4551
	goto	u4550

u4551:
	goto	l465
u4550:
	line	21
	
l5095:
;save_event.c: 20: {
;save_event.c: 21: e_address = 0x05;
	movlw	high(05h)
	movwf	((c:_e_address+1)),c
	movlw	low(05h)
	movwf	((c:_e_address)),c
	goto	l465
	line	22
	
l464:
	line	24
	
l465:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_save_events
	__end_of_save_events:
	signat	_save_events,89
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 68 in file "adc.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    0[COMRAM] unsigned char 
;;  reg_val         2   18[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"adc.c"
	line	68
global __ptext4
__ptext4:
psect	text4
	file	"adc.c"
	line	68
	global	__size_of_read_adc
	__size_of_read_adc	equ	__end_of_read_adc-_read_adc
	
_read_adc:
;incstack = 0
	opt	stack 29
	line	73
	
l3519:
;adc.c: 70: unsigned short reg_val;
;adc.c: 73: GO = 1;
	bsf	c:(32273/8),(32273)&7	;volatile
	line	74
;adc.c: 74: while (GO);
	goto	l732
	
l733:
	
l732:
	btfsc	c:(32273/8),(32273)&7	;volatile
	goto	u2661
	goto	u2660
u2661:
	goto	l732
u2660:
	goto	l3521
	
l734:
	line	75
	
l3521:
;adc.c: 75: reg_val = (ADRESH << 8) | ADRESL;
	movf	((c:4035)),c,w	;volatile
	movff	(c:4036),??_read_adc+0+0	;volatile
	clrf	(??_read_adc+0+0+1)&0ffh,c
	movff	??_read_adc+0+0,??_read_adc+0+1
	clrf	(??_read_adc+0+0),c
	iorwf	(??_read_adc+0+0),c,w
	movwf	((c:read_adc@reg_val)),c
	movf	(??_read_adc+0+1),c,w
	movwf	1+((c:read_adc@reg_val)),c
	line	77
	
l3523:
;adc.c: 77: return reg_val;
	movff	(c:read_adc@reg_val),(c:?_read_adc)
	movff	(c:read_adc@reg_val+1),(c:?_read_adc+1)
	goto	l735
	
l3525:
	line	78
	
l735:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,4218
	global	_password_compare

;; *************** function _password_compare *****************
;; Defined at:
;;		line 7 in file "password_compare.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  password        5   31[COMRAM] unsigned char [5]
;;  enter_pass      5   22[COMRAM] unsigned char [5]
;;  pos             2   45[COMRAM] short 
;;  j               2   42[COMRAM] unsigned int 
;;  count           2   40[COMRAM] short 
;;  flag            2   38[COMRAM] short 
;;  flag1           2   29[COMRAM] short 
;;  i               2   27[COMRAM] unsigned int 
;;  key             1   44[COMRAM] unsigned char 
;;  address         1   37[COMRAM] unsigned char 
;;  ch              1   36[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   20[COMRAM] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:        25       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        27       0       0       0       0       0       0
;;Total ram usage:       27 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_internal_eeprom
;;		_read_switches
;;		_strcmp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"password_compare.c"
	line	7
global __ptext5
__ptext5:
psect	text5
	file	"password_compare.c"
	line	7
	global	__size_of_password_compare
	__size_of_password_compare	equ	__end_of_password_compare-_password_compare
	
_password_compare:
;incstack = 0
	opt	stack 27
	line	11
	
l4847:
;password_compare.c: 11: unsigned char key, address = 0xC0;
	movlw	low(0C0h)
	movwf	((c:password_compare@address)),c
	line	14
;password_compare.c: 12: char ch;
;password_compare.c: 13: unsigned int j, i;
;password_compare.c: 14: int short count = 0, pos = 0, flag = 0, flag1 = 0;
	movlw	high(0)
	movwf	((c:password_compare@count+1)),c
	movlw	low(0)
	movwf	((c:password_compare@count)),c
	movlw	high(0)
	movwf	((c:password_compare@pos+1)),c
	movlw	low(0)
	movwf	((c:password_compare@pos)),c
	movlw	high(0)
	movwf	((c:password_compare@flag+1)),c
	movlw	low(0)
	movwf	((c:password_compare@flag)),c
	movlw	high(0)
	movwf	((c:password_compare@flag1+1)),c
	movlw	low(0)
	movwf	((c:password_compare@flag1)),c
	line	16
	
l4849:
;password_compare.c: 16: unsigned char password[5]= {'\0'}, enter_pass[5] = {'\0'};
	lfsr	2,(password_compare@F16068)
	lfsr	1,(password_compare@password)
	movlw	5-1
u4281:
	movff	plusw2,plusw1
	decf	wreg
	bc	u4281

	
l4851:
	lfsr	2,(password_compare@F16070)
	lfsr	1,(password_compare@enter_pass)
	movlw	5-1
u4291:
	movff	plusw2,plusw1
	decf	wreg
	bc	u4291

	line	19
	
l4853:
;password_compare.c: 19: password[0] = read_internal_eeprom(0x01);
	movlw	(01h)&0ffh
	
	call	_read_internal_eeprom
	movwf	((c:password_compare@password)),c
	line	20
	
l4855:
;password_compare.c: 20: password[1] = read_internal_eeprom(0x02);
	movlw	(02h)&0ffh
	
	call	_read_internal_eeprom
	movwf	(0+((c:password_compare@password)+01h)),c
	line	21
	
l4857:
;password_compare.c: 21: password[2] = read_internal_eeprom(0x03);
	movlw	(03h)&0ffh
	
	call	_read_internal_eeprom
	movwf	(0+((c:password_compare@password)+02h)),c
	line	22
	
l4859:
;password_compare.c: 22: password[3] = read_internal_eeprom(0x04);
	movlw	(04h)&0ffh
	
	call	_read_internal_eeprom
	movwf	(0+((c:password_compare@password)+03h)),c
	line	24
	
l4861:
;password_compare.c: 24: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l4863
	line	26
;password_compare.c: 26: while(1)
	
l494:
	line	28
	
l4863:
;password_compare.c: 27: {
;password_compare.c: 28: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:password_compare@key)),c
	line	30
	
l4865:
;password_compare.c: 30: clcd_print("Enter Password   ", (0x80 + (0)));
		movlw	low(STR_25)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_25)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(080h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	34
	
l4867:
;password_compare.c: 34: clcd_write(address, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movf	((c:password_compare@address)),c,w
	
	call	_clcd_write
	line	35
	
l4869:
;password_compare.c: 35: clcd_write(0x0E, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Eh)&0ffh
	
	call	_clcd_write
	line	37
	
l4871:
;password_compare.c: 37: if ((key == 1 || key == 2))
		decf	((c:password_compare@key)),c,w
	btfsc	status,2
	goto	u4301
	goto	u4300

u4301:
	goto	l4875
u4300:
	
l4873:
		movlw	2
	xorwf	((c:password_compare@key)),c,w
	btfss	status,2
	goto	u4311
	goto	u4310

u4311:
	goto	l4947
u4310:
	goto	l4875
	
l497:
	line	39
	
l4875:
;password_compare.c: 38: {
;password_compare.c: 39: if (key == 1)
		decf	((c:password_compare@key)),c,w
	btfss	status,2
	goto	u4321
	goto	u4320

u4321:
	goto	l4879
u4320:
	line	41
	
l4877:
;password_compare.c: 40: {
;password_compare.c: 41: enter_pass[pos] = '1';
	movlw	low(password_compare@enter_pass)
	addwf	((c:password_compare@pos)),c,w
	movwf	c:fsr2l
	movlw	high(password_compare@enter_pass)
	addwfc	((c:password_compare@pos+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(031h)
	movwf	indf2
	line	42
;password_compare.c: 42: }
	goto	l4883
	line	43
	
l498:
	
l4879:
;password_compare.c: 43: else if (key == 2)
		movlw	2
	xorwf	((c:password_compare@key)),c,w
	btfss	status,2
	goto	u4331
	goto	u4330

u4331:
	goto	l4883
u4330:
	line	45
	
l4881:
;password_compare.c: 44: {
;password_compare.c: 45: enter_pass[pos] = '0';
	movlw	low(password_compare@enter_pass)
	addwf	((c:password_compare@pos)),c,w
	movwf	c:fsr2l
	movlw	high(password_compare@enter_pass)
	addwfc	((c:password_compare@pos+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(030h)
	movwf	indf2
	goto	l4883
	line	46
	
l500:
	goto	l4883
	line	47
	
l499:
	
l4883:
;password_compare.c: 46: }
;password_compare.c: 47: clcd_putch('*', (0xC0 + (pos)));
	movf	((c:password_compare@pos)),c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr)),c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	48
	
l4885:
;password_compare.c: 48: count++;
	infsnz	((c:password_compare@count)),c
	incf	((c:password_compare@count+1)),c
	line	49
	
l4887:
;password_compare.c: 49: pos++;
	infsnz	((c:password_compare@pos)),c
	incf	((c:password_compare@pos+1)),c
	line	50
	
l4889:
;password_compare.c: 50: address = (0xC0 + (pos));
	movf	((c:password_compare@pos)),c,w
	addlw	low(0C0h)
	movwf	((c:password_compare@address)),c
	line	54
	
l4891:
;password_compare.c: 54: if (count == 4 && (strcmp(password, enter_pass) == 0))
		movlw	4
	xorwf	((c:password_compare@count)),c,w
iorwf	((c:password_compare@count+1)),c,w
	btfss	status,2
	goto	u4341
	goto	u4340

u4341:
	goto	l4899
u4340:
	
l4893:
		movlw	low(password_compare@password)
	movwf	((c:strcmp@s1)),c
	movlw	high(password_compare@password)
	movwf	((c:strcmp@s1+1)),c

		movlw	low(password_compare@enter_pass)
	movwf	((c:strcmp@s2)),c
	movlw	high(password_compare@enter_pass)
	movwf	((c:strcmp@s2+1)),c

	call	_strcmp	;wreg free
	movf	(0+?_strcmp),c,w
iorwf	(1+?_strcmp),c,w
	btfss	status,2
	goto	u4351
	goto	u4350

u4351:
	goto	l4899
u4350:
	line	58
	
l4895:
;password_compare.c: 55: {
;password_compare.c: 58: return 1;
	movlw	high(01h)
	movwf	((c:?_password_compare+1)),c
	movlw	low(01h)
	movwf	((c:?_password_compare)),c
	goto	l502
	
l4897:
	goto	l502
	line	59
	
l501:
	line	60
	
l4899:
;password_compare.c: 59: }
;password_compare.c: 60: if (count == 4 && (strcmp(password, enter_pass) != 0))
		movlw	4
	xorwf	((c:password_compare@count)),c,w
iorwf	((c:password_compare@count+1)),c,w
	btfss	status,2
	goto	u4361
	goto	u4360

u4361:
	goto	l4947
u4360:
	
l4901:
		movlw	low(password_compare@password)
	movwf	((c:strcmp@s1)),c
	movlw	high(password_compare@password)
	movwf	((c:strcmp@s1+1)),c

		movlw	low(password_compare@enter_pass)
	movwf	((c:strcmp@s2)),c
	movlw	high(password_compare@enter_pass)
	movwf	((c:strcmp@s2+1)),c

	call	_strcmp	;wreg free
	movf	(0+?_strcmp),c,w
iorwf	(1+?_strcmp),c,w
	btfsc	status,2
	goto	u4371
	goto	u4370

u4371:
	goto	l4947
u4370:
	line	62
	
l4903:
;password_compare.c: 61: {
;password_compare.c: 62: clcd_print("Password Not Match", (0x80 + (0)));
		movlw	low(STR_26)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_26)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(080h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	63
	
l4905:
;password_compare.c: 63: pos = 0;
	movlw	high(0)
	movwf	((c:password_compare@pos+1)),c
	movlw	low(0)
	movwf	((c:password_compare@pos)),c
	line	64
	
l4907:
;password_compare.c: 64: count = 0;
	movlw	high(0)
	movwf	((c:password_compare@count+1)),c
	movlw	low(0)
	movwf	((c:password_compare@count)),c
	line	66
	
l4909:
;password_compare.c: 66: if(flag1 != 1)
		decf	((c:password_compare@flag1)),c,w
iorwf	((c:password_compare@flag1+1)),c,w
	btfsc	status,2
	goto	u4381
	goto	u4380

u4381:
	goto	l4917
u4380:
	line	68
	
l4911:
;password_compare.c: 67: {
;password_compare.c: 68: flag++;
	infsnz	((c:password_compare@flag)),c
	incf	((c:password_compare@flag+1)),c
	line	69
	
l4913:
;password_compare.c: 69: ch = 53 - flag;
	movf	((c:password_compare@flag)),c,w
	sublw	0
	addlw	low(035h)
	movwf	((c:password_compare@ch)),c
	line	70
	
l4915:
;password_compare.c: 70: clcd_putch(ch, (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr)),c
	movf	((c:password_compare@ch)),c,w
	
	call	_clcd_putch
	goto	l4917
	line	71
	
l504:
	line	72
	
l4917:
;password_compare.c: 71: }
;password_compare.c: 72: clcd_print(" Tries left...!", (0xC0 + (1)));
		movlw	low(STR_27)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_27)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C1h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	76
	
l4919:
;password_compare.c: 76: for (i = 10; i--; )
	movlw	high(0Ah)
	movwf	((c:password_compare@i+1)),c
	movlw	low(0Ah)
	movwf	((c:password_compare@i)),c
	goto	l4929
	line	77
	
l506:
	line	78
	
l4921:
;password_compare.c: 77: {
;password_compare.c: 78: for (j = 50000; j--; );
	movlw	high(0C350h)
	movwf	((c:password_compare@j+1)),c
	movlw	low(0C350h)
	movwf	((c:password_compare@j)),c
	goto	l4923
	
l508:
	goto	l4923
	
l507:
	
l4923:
	decf	((c:password_compare@j)),c
	btfss	status,0
	decf	((c:password_compare@j+1)),c
		incf	((c:password_compare@j)),c,w
	bnz	u4391
	incf	((c:password_compare@j+1)),c,w
	btfss	status,2
	goto	u4391
	goto	u4390

u4391:
	goto	l4923
u4390:
	goto	l4925
	
l509:
	line	79
	
l4925:
;password_compare.c: 79: for (j = 20000; j--; );
	movlw	high(04E20h)
	movwf	((c:password_compare@j+1)),c
	movlw	low(04E20h)
	movwf	((c:password_compare@j)),c
	goto	l4927
	
l511:
	goto	l4927
	
l510:
	
l4927:
	decf	((c:password_compare@j)),c
	btfss	status,0
	decf	((c:password_compare@j+1)),c
		incf	((c:password_compare@j)),c,w
	bnz	u4401
	incf	((c:password_compare@j+1)),c,w
	btfss	status,2
	goto	u4401
	goto	u4400

u4401:
	goto	l4927
u4400:
	goto	l4929
	
l512:
	goto	l4929
	line	76
	
l505:
	
l4929:
	decf	((c:password_compare@i)),c
	btfss	status,0
	decf	((c:password_compare@i+1)),c
		incf	((c:password_compare@i)),c,w
	bnz	u4411
	incf	((c:password_compare@i+1)),c,w
	btfss	status,2
	goto	u4411
	goto	u4410

u4411:
	goto	l4921
u4410:
	goto	l4931
	
l513:
	line	82
	
l4931:
;password_compare.c: 80: }
;password_compare.c: 82: address = 0xC0;
	movlw	low(0C0h)
	movwf	((c:password_compare@address)),c
	line	83
	
l4933:
;password_compare.c: 83: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	86
	
l4935:
;password_compare.c: 86: if (flag == 5)
		movlw	5
	xorwf	((c:password_compare@flag)),c,w
iorwf	((c:password_compare@flag+1)),c,w
	btfss	status,2
	goto	u4421
	goto	u4420

u4421:
	goto	l4947
u4420:
	line	88
	
l4937:
;password_compare.c: 87: {
;password_compare.c: 88: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	89
;password_compare.c: 89: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	90
	
l4939:
;password_compare.c: 90: clcd_print("Password Not Match", (0x80 + (0)));
		movlw	low(STR_28)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_28)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(080h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	91
	
l4941:
;password_compare.c: 91: clcd_print("Wait 15 minutes", (0xC0 + (0)));
		movlw	low(STR_29)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_29)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	92
	
l4943:
;password_compare.c: 92: return 0;
	movlw	high(0)
	movwf	((c:?_password_compare+1)),c
	movlw	low(0)
	movwf	((c:?_password_compare)),c
	goto	l502
	
l4945:
	goto	l502
	line	93
	
l514:
	goto	l4947
	line	94
	
l503:
	goto	l4947
	line	96
	
l495:
	line	99
	
l4947:
;password_compare.c: 93: }
;password_compare.c: 94: }
;password_compare.c: 96: }
;password_compare.c: 99: for (j = 10000; j--; );
	movlw	high(02710h)
	movwf	((c:password_compare@j+1)),c
	movlw	low(02710h)
	movwf	((c:password_compare@j)),c
	goto	l4949
	
l516:
	goto	l4949
	
l515:
	
l4949:
	decf	((c:password_compare@j)),c
	btfss	status,0
	decf	((c:password_compare@j+1)),c
		incf	((c:password_compare@j)),c,w
	bnz	u4431
	incf	((c:password_compare@j+1)),c,w
	btfss	status,2
	goto	u4431
	goto	u4430

u4431:
	goto	l4949
u4430:
	goto	l4863
	
l517:
	goto	l4863
	line	100
	
l518:
	line	26
	goto	l4863
	
l519:
	line	101
	
l502:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_password_compare
	__end_of_password_compare:
	signat	_password_compare,90
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 14 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_init_adc
;;		_init_clcd
;;		_init_ds1307
;;		_init_i2c
;;		_init_matrix_keypad
;;		_init_timer0
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"main.c"
	line	14
global __ptext6
__ptext6:
psect	text6
	file	"main.c"
	line	14
	global	__size_of_init_config
	__size_of_init_config	equ	__end_of_init_config-_init_config
	
_init_config:
;incstack = 0
	opt	stack 24
	line	16
	
l4805:
;main.c: 16: init_clcd();
	call	_init_clcd	;wreg free
	line	17
	
l4807:
;main.c: 17: init_i2c();
	call	_init_i2c	;wreg free
	line	18
	
l4809:
;main.c: 18: init_ds1307();
	call	_init_ds1307	;wreg free
	line	19
;main.c: 19: init_adc();
	call	_init_adc	;wreg free
	line	20
	
l4811:
;main.c: 20: init_matrix_keypad();
	call	_init_matrix_keypad	;wreg free
	line	21
	
l4813:
;main.c: 21: init_timer0();
	call	_init_timer0	;wreg free
	line	23
	
l111:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_timer0

;; *************** function _init_timer0 *****************
;; Defined at:
;;		line 4 in file "timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"timer0.c"
	line	4
global __ptext7
__ptext7:
psect	text7
	file	"timer0.c"
	line	4
	global	__size_of_init_timer0
	__size_of_init_timer0	equ	__end_of_init_timer0-_init_timer0
	
_init_timer0:
;incstack = 0
	opt	stack 28
	line	10
	
l3025:
;timer0.c: 10: T0CS = 0;
	bcf	c:(32429/8),(32429)&7	;volatile
	line	12
	
l3027:
;timer0.c: 12: TMR0 = 6;
	movlw	high(06h)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(06h)
	movwf	((c:4054)),c	;volatile
	line	15
	
l3029:
;timer0.c: 15: T0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	18
	
l3031:
;timer0.c: 18: TMR0IE = 1;
	bsf	c:(32661/8),(32661)&7	;volatile
	line	19
	
l11:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_timer0
	__end_of_init_timer0:
	signat	_init_timer0,89
	global	_init_matrix_keypad

;; *************** function _init_matrix_keypad *****************
;; Defined at:
;;		line 4 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"matrix_keypad.c"
	line	4
global __ptext8
__ptext8:
psect	text8
	file	"matrix_keypad.c"
	line	4
	global	__size_of_init_matrix_keypad
	__size_of_init_matrix_keypad	equ	__end_of_init_matrix_keypad-_init_matrix_keypad
	
_init_matrix_keypad:
;incstack = 0
	opt	stack 28
	line	7
	
l3069:
;matrix_keypad.c: 7: ADCON1 = 0x0F;
	movlw	low(0Fh)
	movwf	((c:4033)),c	;volatile
	line	10
;matrix_keypad.c: 10: TRISB = 0x1E;
	movlw	low(01Eh)
	movwf	((c:3987)),c	;volatile
	line	13
	
l3071:
;matrix_keypad.c: 13: RBPU = 0;
	bcf	c:(32655/8),(32655)&7	;volatile
	line	15
	
l3073:
;matrix_keypad.c: 15: PORTB = PORTB | 0xE0;
	movf	((c:3969)),c,w	;volatile
	iorlw	low(0E0h)
	movwf	((c:3969)),c	;volatile
	line	16
	
l217:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_matrix_keypad
	__end_of_init_matrix_keypad:
	signat	_init_matrix_keypad,89
	global	_init_i2c

;; *************** function _init_i2c *****************
;; Defined at:
;;		line 3 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"i2c.c"
	line	3
global __ptext9
__ptext9:
psect	text9
	file	"i2c.c"
	line	3
	global	__size_of_init_i2c
	__size_of_init_i2c	equ	__end_of_init_i2c-_init_i2c
	
_init_i2c:
;incstack = 0
	opt	stack 28
	line	6
	
l3047:
;i2c.c: 6: TRISC3 = 1;
	bsf	c:(31907/8),(31907)&7	;volatile
	line	7
;i2c.c: 7: TRISC4 = 1;
	bsf	c:(31908/8),(31908)&7	;volatile
	line	9
	
l3049:
;i2c.c: 9: SSPCON1 = 0x28;
	movlw	low(028h)
	movwf	((c:4038)),c	;volatile
	line	12
;i2c.c: 12: SSPADD = 0x64;
	movlw	low(064h)
	movwf	((c:4040)),c	;volatile
	line	14
	
l3051:
;i2c.c: 14: CKE = 0;
	bcf	c:(32318/8),(32318)&7	;volatile
	line	16
	
l3053:
;i2c.c: 16: SMP = 1;
	bsf	c:(32319/8),(32319)&7	;volatile
	line	18
	
l3055:
;i2c.c: 18: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	20
	
l3057:
;i2c.c: 20: BCLIF = 0;
	bcf	c:(32011/8),(32011)&7	;volatile
	line	21
	
l656:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_i2c
	__end_of_init_i2c:
	signat	_init_i2c,89
	global	_init_ds1307

;; *************** function _init_ds1307 *****************
;; Defined at:
;;		line 11 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_read_ds1307
;;		_write_ds1307
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"ds1307.c"
	line	11
global __ptext10
__ptext10:
psect	text10
	file	"ds1307.c"
	line	11
	global	__size_of_init_ds1307
	__size_of_init_ds1307	equ	__end_of_init_ds1307-_init_ds1307
	
_init_ds1307:
;incstack = 0
	opt	stack 24
	line	16
	
l4425:
;ds1307.c: 13: unsigned char dummy;
;ds1307.c: 16: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy)),c
	line	18
;ds1307.c: 18: write_ds1307(0x00, 0x80);
	movlw	low(080h)
	movwf	((c:write_ds1307@data)),c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	19
;ds1307.c: 19: dummy = read_ds1307(0x01);
	movlw	(01h)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy)),c
	line	20
;ds1307.c: 20: write_ds1307(0x01, 0x35);
	movlw	low(035h)
	movwf	((c:write_ds1307@data)),c
	movlw	(01h)&0ffh
	
	call	_write_ds1307
	line	23
;ds1307.c: 23: dummy = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy)),c
	line	25
;ds1307.c: 25: write_ds1307(0x02, 0x51);
	movlw	low(051h)
	movwf	((c:write_ds1307@data)),c
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	40
;ds1307.c: 40: write_ds1307(0x07, 0x93);
	movlw	low(093h)
	movwf	((c:write_ds1307@data)),c
	movlw	(07h)&0ffh
	
	call	_write_ds1307
	line	43
;ds1307.c: 43: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy)),c
	line	44
	
l4427:
;ds1307.c: 44: write_ds1307(0x00, dummy & 0x7F);
	movf	((c:init_ds1307@dummy)),c,w
	andlw	low(07Fh)
	movwf	((c:write_ds1307@data)),c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	46
	
l536:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_ds1307
	__end_of_init_ds1307:
	signat	_init_ds1307,89
	global	_init_clcd

;; *************** function _init_clcd *****************
;; Defined at:
;;		line 27 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"clcd.c"
	line	27
global __ptext11
__ptext11:
psect	text11
	file	"clcd.c"
	line	27
	global	__size_of_init_clcd
	__size_of_init_clcd	equ	__end_of_init_clcd-_init_clcd
	
_init_clcd:
;incstack = 0
	opt	stack 27
	line	30
	
l4411:
;clcd.c: 30: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	32
	
l4413:
;clcd.c: 32: TRISC = TRISC & 0xF8;
	movf	((c:3988)),c,w	;volatile
	andlw	low(0F8h)
	movwf	((c:3988)),c	;volatile
	line	34
	
l4415:
;clcd.c: 34: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	36
	
l4417:
;clcd.c: 36: clcd_write(0x02, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(02h)&0ffh
	
	call	_clcd_write
	line	37
	
l4419:
;clcd.c: 37: clcd_write(0x38, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(038h)&0ffh
	
	call	_clcd_write
	line	38
	
l4421:
;clcd.c: 38: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	39
	
l4423:
;clcd.c: 39: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	40
	
l49:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
	global	_init_adc

;; *************** function _init_adc *****************
;; Defined at:
;;		line 28 in file "adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"adc.c"
	line	28
global __ptext12
__ptext12:
psect	text12
	file	"adc.c"
	line	28
	global	__size_of_init_adc
	__size_of_init_adc	equ	__end_of_init_adc-_init_adc
	
_init_adc:
;incstack = 0
	opt	stack 28
	line	31
	
l3063:
;adc.c: 31: ADFM = 1;
	bsf	c:(32263/8),(32263)&7	;volatile
	line	37
;adc.c: 37: ACQT2 = 0;
	bcf	c:(32261/8),(32261)&7	;volatile
	line	38
;adc.c: 38: ACQT1 = 1;
	bsf	c:(32260/8),(32260)&7	;volatile
	line	39
;adc.c: 39: ACQT0 = 0;
	bcf	c:(32259/8),(32259)&7	;volatile
	line	45
;adc.c: 45: ADCS0 = 0;
	bcf	c:(32256/8),(32256)&7	;volatile
	line	46
;adc.c: 46: ADCS1 = 1;
	bsf	c:(32257/8),(32257)&7	;volatile
	line	47
;adc.c: 47: ADCS2 = 0;
	bcf	c:(32258/8),(32258)&7	;volatile
	line	50
;adc.c: 50: GODONE = 0;
	bcf	c:(32273/8),(32273)&7	;volatile
	line	53
;adc.c: 53: CHS2 = 1;
	bsf	c:(32276/8),(32276)&7	;volatile
	line	56
;adc.c: 56: VCFG1 = 0;
	bcf	c:(32269/8),(32269)&7	;volatile
	line	58
;adc.c: 58: VCFG0 = 0;
	bcf	c:(32268/8),(32268)&7	;volatile
	line	61
	
l3065:
;adc.c: 61: ADRESH = 0;
	movlw	low(0)
	movwf	((c:4036)),c	;volatile
	line	62
;adc.c: 62: ADRESL = 0;
	movlw	low(0)
	movwf	((c:4035)),c	;volatile
	line	65
	
l3067:
;adc.c: 65: ADON = 1;
	bsf	c:(32272/8),(32272)&7	;volatile
	line	66
	
l729:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_adc
	__end_of_init_adc:
	signat	_init_adc,89
	global	_get_time

;; *************** function _get_time *****************
;; Defined at:
;;		line 53 in file "clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_read_ds1307
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"clock.c"
	line	53
global __ptext13
__ptext13:
psect	text13
	file	"clock.c"
	line	53
	global	__size_of_get_time
	__size_of_get_time	equ	__end_of_get_time-_get_time
	
_get_time:
;incstack = 0
	opt	stack 25
	line	55
	
l4815:
;clock.c: 55: clock_reg[0] = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:_clock_reg)),c
	line	56
;clock.c: 56: clock_reg[1] = read_ds1307(0x01);
	movlw	(01h)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:_clock_reg)+01h)),c
	line	57
;clock.c: 57: clock_reg[2] = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:_clock_reg)+02h)),c
	line	59
	
l4817:
;clock.c: 59: if (clock_reg[0] & 0x40)
	
	btfss	((c:_clock_reg)),c,(6)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l4821
u4260:
	line	61
	
l4819:
;clock.c: 60: {
;clock.c: 61: time[0] = '0' + ((clock_reg[0] >> 4) & 0x01);
	swapf	((c:_clock_reg)),c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(01h)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_time))&0ffh
	line	62
;clock.c: 62: time[1] = '0' + (clock_reg[0] & 0x0F);
	movf	((c:_clock_reg)),c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time+01h))&0ffh
	line	63
;clock.c: 63: }
	goto	l4823
	line	64
	
l282:; BSR set to: 0

	line	66
	
l4821:
;clock.c: 64: else
;clock.c: 65: {
;clock.c: 66: time[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
	swapf	((c:_clock_reg)),c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(03h)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_time))&0ffh
	line	67
;clock.c: 67: time[1] = '0' + (clock_reg[0] & 0x0F);
	movf	((c:_clock_reg)),c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time+01h))&0ffh
	goto	l4823
	line	68
	
l283:; BSR set to: 0

	line	69
	
l4823:; BSR set to: 0

;clock.c: 68: }
;clock.c: 69: time[2] = ':';
	movlw	low(03Ah)
	movlb	0	; () banked
	movwf	(0+(_time+02h))&0ffh
	line	70
	
l4825:; BSR set to: 0

;clock.c: 70: time[3] = '0' + ((clock_reg[1] >> 4) & 0x0F);
	swapf	(0+((c:_clock_reg)+01h)),c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time+03h))&0ffh
	line	71
	
l4827:; BSR set to: 0

;clock.c: 71: time[4] = '0' + (clock_reg[1] & 0x0F);
	movf	(0+((c:_clock_reg)+01h)),c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time+04h))&0ffh
	line	72
	
l4829:; BSR set to: 0

;clock.c: 72: time[5] = ':';
	movlw	low(03Ah)
	movlb	0	; () banked
	movwf	(0+(_time+05h))&0ffh
	line	73
;clock.c: 73: time[6] = '0' + ((clock_reg[2] >> 4) & 0x0F);
	swapf	(0+((c:_clock_reg)+02h)),c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time+06h))&0ffh
	line	74
;clock.c: 74: time[7] = '0' + (clock_reg[2] & 0x0F);
	movf	(0+((c:_clock_reg)+02h)),c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time+07h))&0ffh
	line	75
	
l4831:; BSR set to: 0

;clock.c: 75: time[8] = '\0';
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_time+08h))&0ffh
	line	76
	
l284:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_get_time
	__end_of_get_time:
	signat	_get_time,89
	global	_read_ds1307

;; *************** function _read_ds1307 *****************
;; Defined at:
;;		line 57 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   15[COMRAM] unsigned char 
;;  data            1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_get_time
;;		_init_ds1307
;;		_get_date
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"ds1307.c"
	line	57
global __ptext14
__ptext14:
psect	text14
	file	"ds1307.c"
	line	57
	global	__size_of_read_ds1307
	__size_of_read_ds1307	equ	__end_of_read_ds1307-_read_ds1307
	
_read_ds1307:; BSR set to: 0

;incstack = 0
	opt	stack 24
;read_ds1307@address stored from wreg
	movwf	((c:read_ds1307@address)),c
	line	61
	
l4341:
;ds1307.c: 59: unsigned char data;
;ds1307.c: 61: i2c_start();
	call	_i2c_start	;wreg free
	line	62
	
l4343:
;ds1307.c: 62: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	63
	
l4345:
;ds1307.c: 63: i2c_write(address);
	movf	((c:read_ds1307@address)),c,w
	
	call	_i2c_write
	line	64
	
l4347:
;ds1307.c: 64: i2c_rep_start();
	call	_i2c_rep_start	;wreg free
	line	65
	
l4349:
;ds1307.c: 65: i2c_write(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_i2c_write
	line	66
;ds1307.c: 66: data = i2c_read();
	call	_i2c_read	;wreg free
	movwf	((c:read_ds1307@data)),c
	line	67
	
l4351:
;ds1307.c: 67: i2c_stop();
	call	_i2c_stop	;wreg free
	line	69
;ds1307.c: 69: return data;
	movf	((c:read_ds1307@data)),c,w
	goto	l542
	
l4353:
	line	70
	
l542:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_read_ds1307
	__end_of_read_ds1307:
	signat	_read_ds1307,4217
	global	_i2c_rep_start

;; *************** function _i2c_rep_start *****************
;; Defined at:
;;		line 49 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"i2c.c"
	line	49
global __ptext15
__ptext15:
psect	text15
	file	"i2c.c"
	line	49
	global	__size_of_i2c_rep_start
	__size_of_i2c_rep_start	equ	__end_of_i2c_rep_start-_i2c_rep_start
	
_i2c_rep_start:
;incstack = 0
	opt	stack 25
	line	51
	
l4241:
;i2c.c: 51: RSEN = 1;
	bsf	c:(32297/8),(32297)&7	;volatile
	line	52
	
l4243:
;i2c.c: 52: i2c_idle();
	call	_i2c_idle	;wreg free
	line	53
	
l675:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2c_rep_start
	__end_of_i2c_rep_start:
	signat	_i2c_rep_start,89
	global	_i2c_read

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 73 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_i2c_no_ack
;;		_i2c_rx_mode
;; This function is called by:
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	line	73
global __ptext16
__ptext16:
psect	text16
	file	"i2c.c"
	line	73
	global	__size_of_i2c_read
	__size_of_i2c_read	equ	__end_of_i2c_read-_i2c_read
	
_i2c_read:
;incstack = 0
	opt	stack 24
	line	75
	
l4245:
;i2c.c: 75: i2c_rx_mode();
	call	_i2c_rx_mode	;wreg free
	line	76
;i2c.c: 76: i2c_no_ack();
	call	_i2c_no_ack	;wreg free
	line	78
	
l4247:
;i2c.c: 78: return SSPBUF;
	movf	((c:4041)),c,w	;volatile
	goto	l687
	
l4249:
	line	79
	
l687:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
	signat	_i2c_read,89
	global	_i2c_rx_mode

;; *************** function _i2c_rx_mode *****************
;; Defined at:
;;		line 61 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	line	61
global __ptext17
__ptext17:
psect	text17
	file	"i2c.c"
	line	61
	global	__size_of_i2c_rx_mode
	__size_of_i2c_rx_mode	equ	__end_of_i2c_rx_mode-_i2c_rx_mode
	
_i2c_rx_mode:
;incstack = 0
	opt	stack 24
	line	63
	
l4129:
;i2c.c: 63: RCEN = 1;
	bsf	c:(32299/8),(32299)&7	;volatile
	line	64
	
l4131:
;i2c.c: 64: i2c_idle();
	call	_i2c_idle	;wreg free
	line	65
	
l681:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2c_rx_mode
	__end_of_i2c_rx_mode:
	signat	_i2c_rx_mode,89
	global	_i2c_no_ack

;; *************** function _i2c_no_ack *****************
;; Defined at:
;;		line 67 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	line	67
global __ptext18
__ptext18:
psect	text18
	file	"i2c.c"
	line	67
	global	__size_of_i2c_no_ack
	__size_of_i2c_no_ack	equ	__end_of_i2c_no_ack-_i2c_no_ack
	
_i2c_no_ack:
;incstack = 0
	opt	stack 25
	line	69
	
l2745:
;i2c.c: 69: ACKDT = 1;
	bsf	c:(32301/8),(32301)&7	;volatile
	line	70
;i2c.c: 70: ACKEN = 1;
	bsf	c:(32300/8),(32300)&7	;volatile
	line	71
	
l684:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2c_no_ack
	__end_of_i2c_no_ack:
	signat	_i2c_no_ack,89
	global	_display_time

;; *************** function _display_time *****************
;; Defined at:
;;		line 32 in file "clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_clcd_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	file	"clock.c"
	line	32
global __ptext19
__ptext19:
psect	text19
	file	"clock.c"
	line	32
	global	__size_of_display_time
	__size_of_display_time	equ	__end_of_display_time-_display_time
	
_display_time:
;incstack = 0
	opt	stack 27
	line	34
	
l4833:
;clock.c: 34: clcd_print(time, (0xC0 + (0)));
		movlw	low(_time)
	movwf	((c:clcd_print@data)),c
	movlw	high(_time)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	51
	
l279:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_display_time
	__end_of_display_time:
	signat	_display_time,89
	global	_display_speed

;; *************** function _display_speed *****************
;; Defined at:
;;		line 80 in file "adc.c"
;; Parameters:    Size  Location     Type
;;  adc_reg_val     2   21[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;  buff            5   23[COMRAM] unsigned char [5]
;;  i               1   28[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_clcd_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	file	"adc.c"
	line	80
global __ptext20
__ptext20:
psect	text20
	file	"adc.c"
	line	80
	global	__size_of_display_speed
	__size_of_display_speed	equ	__end_of_display_speed-_display_speed
	
_display_speed:
;incstack = 0
	opt	stack 27
	line	85
	
l4835:
;adc.c: 82: char buff[5];
;adc.c: 83: unsigned char i;
;adc.c: 85: i = 3;
	movlw	low(03h)
	movwf	((c:display_speed@i)),c
	goto	l4837
	line	86
;adc.c: 86: do
	
l738:
	line	88
	
l4837:
;adc.c: 87: {
;adc.c: 88: buff[i] = (adc_reg_val % 10) + '0';
	movf	((c:display_speed@i)),c,w
	mullw	01h
	movlw	low(display_speed@buff)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(display_speed@buff)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:display_speed@adc_reg_val),(c:___lwmod@dividend)
	movff	(c:display_speed@adc_reg_val+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	addlw	low(030h)
	movwf	indf2,c

	line	89
	
l4839:
;adc.c: 89: adc_reg_val = adc_reg_val / 10;
	movff	(c:display_speed@adc_reg_val),(c:___lwdiv@dividend)
	movff	(c:display_speed@adc_reg_val+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:display_speed@adc_reg_val)
	movff	1+?___lwdiv,(c:display_speed@adc_reg_val+1)
	line	90
	
l4841:
;adc.c: 90: } while (i--);
	decf	((c:display_speed@i)),c
		incf	((c:display_speed@i)),c,w
	btfss	status,2
	goto	u4271
	goto	u4270

u4271:
	goto	l4837
u4270:
	goto	l4843
	
l739:
	line	91
	
l4843:
;adc.c: 91: buff[4] = '\0';
	movlw	low(0)
	movwf	(0+((c:display_speed@buff)+04h)),c
	line	97
	
l4845:
;adc.c: 97: clcd_print(buff, (0xC0 + (13)));
		movlw	low(display_speed@buff)
	movwf	((c:clcd_print@data)),c
	movlw	high(display_speed@buff)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0CDh)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	98
	
l740:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_display_speed
	__end_of_display_speed:
	signat	_display_speed,4217
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.36/sources/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] unsigned int 
;;  divisor         2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_save_speed
;;		_display_speed
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.36/sources/common/lwmod.c"
	line	8
global __ptext21
__ptext21:
psect	text21
	file	"/opt/microchip/xc8/v1.36/sources/common/lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 28
	line	13
	
l3473:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u2621
	goto	u2620

u2621:
	goto	l1166
u2620:
	line	14
	
l3475:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l3479
	
l1168:
	line	16
	
l3477:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	goto	l3479
	line	18
	
l1167:
	line	15
	
l3479:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l3477
u2630:
	goto	l3481
	
l1169:
	goto	l3481
	line	19
	
l1170:
	line	20
	
l3481:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u2641
	goto	u2640

u2641:
	goto	l3485
u2640:
	line	21
	
l3483:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	goto	l3485
	
l1171:
	line	22
	
l3485:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l3487:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l3481
	goto	l1166
	
l1172:
	line	24
	
l1166:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l1173:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.36/sources/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] unsigned int 
;;  divisor         2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   18[COMRAM] unsigned int 
;;  counter         1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_save_speed
;;		_display_speed
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.36/sources/common/lwdiv.c"
	line	8
global __ptext22
__ptext22:
psect	text22
	file	"/opt/microchip/xc8/v1.36/sources/common/lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 28
	line	14
	
l3451:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l3453:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u2591
	goto	u2590

u2591:
	goto	l1156
u2590:
	line	16
	
l3455:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l3459
	
l1158:
	line	18
	
l3457:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l3459
	line	20
	
l1157:
	line	17
	
l3459:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l3457
u2600:
	goto	l3461
	
l1159:
	goto	l3461
	line	21
	
l1160:
	line	22
	
l3461:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l3463:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u2611
	goto	u2610

u2611:
	goto	l3469
u2610:
	line	24
	
l3465:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l3467:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l3469
	line	26
	
l1161:
	line	27
	
l3469:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l3471:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l3461
	goto	l1156
	
l1162:
	line	29
	
l1156:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l1163:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_display_menu

;; *************** function _display_menu *****************
;; Defined at:
;;		line 6 in file "display_menu.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  menu_list      10    2[BANK0 ] PTR unsigned char [5]
;;		 -> STR_13(6), STR_12(9), STR_11(9), STR_10(16), 
;;		 -> STR_9(9), 
;;  count           2   16[BANK0 ] unsigned short 
;;  temp            2   13[BANK0 ] unsigned short 
;;  star            2    0[BANK0 ] unsigned short 
;;  key             1   15[BANK0 ] unsigned char 
;;  key1            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   90[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0      18       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         2      18       0       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_clear_log
;;		_download_log
;;		_password_change
;;		_read_switches
;;		_set_time
;;		_view_log
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	file	"display_menu.c"
	line	6
global __ptext23
__ptext23:
psect	text23
	file	"display_menu.c"
	line	6
	global	__size_of_display_menu
	__size_of_display_menu	equ	__end_of_display_menu-_display_menu
	
_display_menu:
;incstack = 0
	opt	stack 25
	line	8
	
l4951:
;display_menu.c: 8: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	9
	
l4953:
;display_menu.c: 9: clcd_print("MENU", (0x80 + (1)));
		movlw	low(STR_8)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_8)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(081h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	11
	
l4955:
;display_menu.c: 11: char *menu_list[] = {"View Log", "Change Password", "Set Time", "Download", "Clear"};
	lfsr	2,(display_menu@F16059)
	lfsr	1,(display_menu@menu_list)
	movlw	10-1
u4441:
	movff	plusw2,plusw1
	decf	wreg
	bc	u4441

	line	14
	
l4957:
;display_menu.c: 13: unsigned char key, key1;
;display_menu.c: 14: unsigned short count = 0, star = 0, temp = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((display_menu@count+1))&0ffh
	movlw	low(0)
	movwf	((display_menu@count))&0ffh
	
l4959:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((display_menu@star+1))&0ffh
	movlw	low(0)
	movwf	((display_menu@star))&0ffh
	
l4961:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((display_menu@temp+1))&0ffh
	movlw	low(0)
	movwf	((display_menu@temp))&0ffh
	line	15
	
l4963:; BSR set to: 0

;display_menu.c: 15: clcd_print(menu_list[count], (0xC0 + (2)));
	bcf	status,0
	movlb	0	; () banked
	rlcf	((display_menu@count))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((display_menu@count+1))&0ffh,w
	movwf	fsr2h
	movlw	low(display_menu@menu_list)
	addwf	fsr2l
	movlw	high(display_menu@menu_list)
	addwfc	fsr2h
	movff	postinc2,(c:clcd_print@data)
	movff	postdec2,(c:clcd_print@data+1)
	movlw	low(0C2h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	16
	
l4965:
;display_menu.c: 16: clcd_putch('*', (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr)),c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	goto	l4967
	line	18
;display_menu.c: 18: while(1)
	
l171:
	line	20
	
l4967:
;display_menu.c: 19: {
;display_menu.c: 20: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movlb	0	; () banked
	movwf	((display_menu@key))&0ffh
	line	21
	
l4969:; BSR set to: 0

;display_menu.c: 21: key1 = read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movlb	0	; () banked
	movwf	((display_menu@key1))&0ffh
	line	23
	
l4971:; BSR set to: 0

;display_menu.c: 23: if (key1 == 10)
		movlw	10
	movlb	0	; () banked
	xorwf	((display_menu@key1))&0ffh,w
	btfss	status,2
	goto	u4451
	goto	u4450

u4451:
	goto	l4997
u4450:
	line	25
	
l4973:; BSR set to: 0

;display_menu.c: 24: {
;display_menu.c: 25: if (temp++ >= 100)
	movlb	0	; () banked
	movf	((display_menu@temp))&0ffh,w
	movwf	(??_display_menu+0+0)&0ffh,c
	movlb	0	; () banked
	movf	((display_menu@temp+1))&0ffh,w
	movwf	1+(??_display_menu+0+0)&0ffh,c
	movlb	0	; () banked
	infsnz	((display_menu@temp))&0ffh
	incf	((display_menu@temp+1))&0ffh
		movf	(??_display_menu+0+1),c,w
	bnz	u4460
	movlw	100
	subwf	 (??_display_menu+0+0),c,w
	btfss	status,0
	goto	u4461
	goto	u4460

u4461:
	goto	l4997
u4460:
	line	27
	
l4975:; BSR set to: 0

;display_menu.c: 26: {
;display_menu.c: 27: temp = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((display_menu@temp+1))&0ffh
	movlw	low(0)
	movwf	((display_menu@temp))&0ffh
	line	28
;display_menu.c: 28: switch (count)
	goto	l4991
	line	30
;display_menu.c: 29: {
;display_menu.c: 30: case 0:
	
l175:; BSR set to: 0

	line	31
	
l4977:
;display_menu.c: 31: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	32
	
l4979:
;display_menu.c: 32: view_log();
	call	_view_log	;wreg free
	line	34
;display_menu.c: 34: break;
	goto	l4993
	line	35
;display_menu.c: 35: case 1:
	
l177:
	line	36
	
l4981:
;display_menu.c: 36: password_change();
	call	_password_change	;wreg free
	line	37
;display_menu.c: 37: break;
	goto	l4993
	line	39
;display_menu.c: 39: case 2:
	
l178:
	line	40
	
l4983:
;display_menu.c: 40: set_time();
	call	_set_time	;wreg free
	line	41
;display_menu.c: 41: break;
	goto	l4993
	line	42
;display_menu.c: 42: case 3:
	
l179:
	line	43
	
l4985:
;display_menu.c: 43: download_log();
	call	_download_log	;wreg free
	line	44
;display_menu.c: 44: break;
	goto	l4993
	line	45
;display_menu.c: 45: case 4:
	
l180:
	line	46
	
l4987:
;display_menu.c: 46: clear_log();
	call	_clear_log	;wreg free
	line	47
;display_menu.c: 47: break;
	goto	l4993
	line	49
	
l4989:
;display_menu.c: 49: }
	goto	l4993
	line	28
	
l174:
	
l4991:
	movff	(display_menu@count),??_display_menu+0+0
	movff	(display_menu@count+1),??_display_menu+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_display_menu+0+1,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l5303
	goto	l4993
	
l5303:
; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	movf ??_display_menu+0+0,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l4977
	xorlw	1^0	; case 1
	skipnz
	goto	l4981
	xorlw	2^1	; case 2
	skipnz
	goto	l4983
	xorlw	3^2	; case 3
	skipnz
	goto	l4985
	xorlw	4^3	; case 4
	skipnz
	goto	l4987
	goto	l4993

	line	49
	
l176:
	line	50
	
l4993:
;display_menu.c: 50: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l181
	line	52
	
l4995:
;display_menu.c: 52: return 1;
;	Return value of _display_menu is never used
	goto	l181
	line	54
	
l173:
	goto	l4997
	line	55
	
l172:
	line	57
	
l4997:
;display_menu.c: 54: }
;display_menu.c: 55: }
;display_menu.c: 57: if (key == 11 || key == 12)
		movlw	11
	movlb	0	; () banked
	xorwf	((display_menu@key))&0ffh,w
	btfsc	status,2
	goto	u4471
	goto	u4470

u4471:
	goto	l5001
u4470:
	
l4999:; BSR set to: 0

		movlw	12
	movlb	0	; () banked
	xorwf	((display_menu@key))&0ffh,w
	btfss	status,2
	goto	u4481
	goto	u4480

u4481:
	goto	l4967
u4480:
	goto	l5001
	
l184:; BSR set to: 0

	line	59
	
l5001:; BSR set to: 0

;display_menu.c: 58: {
;display_menu.c: 59: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	60
	
l5003:
;display_menu.c: 60: temp = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((display_menu@temp+1))&0ffh
	movlw	low(0)
	movwf	((display_menu@temp))&0ffh
	line	63
	
l5005:; BSR set to: 0

;display_menu.c: 63: if (key == 11)
		movlw	11
	movlb	0	; () banked
	xorwf	((display_menu@key))&0ffh,w
	btfss	status,2
	goto	u4491
	goto	u4490

u4491:
	goto	l5013
u4490:
	line	65
	
l5007:; BSR set to: 0

;display_menu.c: 64: {
;display_menu.c: 65: count++;
	movlb	0	; () banked
	infsnz	((display_menu@count))&0ffh
	incf	((display_menu@count+1))&0ffh
	line	66
	
l5009:; BSR set to: 0

;display_menu.c: 66: if (count == 5)
		movlw	5
	movlb	0	; () banked
	xorwf	((display_menu@count))&0ffh,w
	movlb	0	; () banked
iorwf	((display_menu@count+1))&0ffh,w
	btfss	status,2
	goto	u4501
	goto	u4500

u4501:
	goto	l5019
u4500:
	line	68
	
l5011:; BSR set to: 0

;display_menu.c: 67: {
;display_menu.c: 68: count = 4;
	movlw	high(04h)
	movlb	0	; () banked
	movwf	((display_menu@count+1))&0ffh
	movlw	low(04h)
	movwf	((display_menu@count))&0ffh
	goto	l5019
	line	69
	
l186:; BSR set to: 0

	line	71
;display_menu.c: 69: }
;display_menu.c: 71: }
	goto	l5019
	line	72
	
l185:; BSR set to: 0

	line	74
	
l5013:; BSR set to: 0

;display_menu.c: 72: else
;display_menu.c: 73: {
;display_menu.c: 74: count--;
	movlb	0	; () banked
	decf	((display_menu@count))&0ffh
	btfss	status,0
	decf	((display_menu@count+1))&0ffh
	line	75
	
l5015:; BSR set to: 0

;display_menu.c: 75: if (count == -1)
	movlb	0	; () banked
		incf	((display_menu@count))&0ffh,w
	bnz	u4511
	movlb	0	; () banked
	incf	((display_menu@count+1))&0ffh,w
	btfss	status,2
	goto	u4511
	goto	u4510

u4511:
	goto	l5019
u4510:
	line	76
	
l5017:; BSR set to: 0

;display_menu.c: 76: count = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((display_menu@count+1))&0ffh
	movlw	low(0)
	movwf	((display_menu@count))&0ffh
	goto	l5019
	
l188:; BSR set to: 0

	goto	l5019
	line	78
	
l187:; BSR set to: 0

	line	81
	
l5019:; BSR set to: 0

;display_menu.c: 78: }
;display_menu.c: 81: clcd_print(menu_list[count], (0x80 + (2)));
	bcf	status,0
	movlb	0	; () banked
	rlcf	((display_menu@count))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((display_menu@count+1))&0ffh,w
	movwf	fsr2h
	movlw	low(display_menu@menu_list)
	addwf	fsr2l
	movlw	high(display_menu@menu_list)
	addwfc	fsr2h
	movff	postinc2,(c:clcd_print@data)
	movff	postdec2,(c:clcd_print@data+1)
	movlw	low(082h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	82
	
l5021:
;display_menu.c: 82: if (count < 4)
	movlb	0	; () banked
		movf	((display_menu@count+1))&0ffh,w
	bnz	u4521
	movlw	4
	movlb	0	; () banked
	subwf	 ((display_menu@count))&0ffh,w
	btfsc	status,0
	goto	u4521
	goto	u4520

u4521:
	goto	l5025
u4520:
	line	83
	
l5023:; BSR set to: 0

;display_menu.c: 83: clcd_print(menu_list[count + 1], (0xC0 + (2)));
	movff	(display_menu@count),??_display_menu+0+0
	movff	(display_menu@count+1),??_display_menu+0+0+1
	bcf	status,0
	rlcf	(??_display_menu+0+0),c,f
	rlcf	(??_display_menu+0+1),c,f
	movlw	02h
	addwf	(??_display_menu+0+0),c
	movlw	0
	addwfc	(??_display_menu+0+1),c
	movlw	low(display_menu@menu_list)
	addwf	(??_display_menu+0+0),c,w
	movwf	c:fsr2l
	movlw	high(display_menu@menu_list)
	addwfc	(??_display_menu+0+1),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:clcd_print@data)
	movff	postdec2,(c:clcd_print@data+1)
	movlw	low(0C2h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	goto	l5025
;display_menu.c: 86: if (count >= 0)
	
l189:
	line	88
	
l5025:
;display_menu.c: 87: {
;display_menu.c: 88: clcd_putch('*', (0x80 + (0)));
	movlw	low(080h)
	movwf	((c:clcd_putch@addr)),c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	goto	l4967
	line	89
	
l190:
	goto	l4967
	line	91
	
l182:
	goto	l4967
	line	92
	
l191:
	line	18
	goto	l4967
	
l192:
	line	94
	
l181:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_display_menu
	__end_of_display_menu:
	signat	_display_menu,90
	global	_view_log

;; *************** function _view_log *****************
;; Defined at:
;;		line 105 in file "password_time_change.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  add             2   27[COMRAM] short 
;;  inc_dec         2   24[COMRAM] short 
;;  count           2   22[COMRAM] short 
;;  key             1   26[COMRAM] unsigned char 
;;  key1            1   21[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         8       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_internal_eeprom
;;		_read_switches
;; This function is called by:
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"password_time_change.c"
	line	105
global __ptext24
__ptext24:
psect	text24
	file	"password_time_change.c"
	line	105
	global	__size_of_view_log
	__size_of_view_log	equ	__end_of_view_log-_view_log
	
_view_log:
;incstack = 0
	opt	stack 26
	line	108
	
l4429:
;password_time_change.c: 107: unsigned char key, key1;
;password_time_change.c: 108: int short add = 0x05, inc_dec = 0, count = 0;
	movlw	high(05h)
	movwf	((c:view_log@add+1)),c
	movlw	low(05h)
	movwf	((c:view_log@add)),c
	movlw	high(0)
	movwf	((c:view_log@inc_dec+1)),c
	movlw	low(0)
	movwf	((c:view_log@inc_dec)),c
	movlw	high(0)
	movwf	((c:view_log@count+1)),c
	movlw	low(0)
	movwf	((c:view_log@count)),c
	line	110
	
l4431:
;password_time_change.c: 110: clcd_print("TIME  EVT  SPD", (0x80 + (3)));
		movlw	low(STR_23)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_23)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(083h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	goto	l4433
	line	113
;password_time_change.c: 113: while (1)
	
l441:
	line	115
	
l4433:
;password_time_change.c: 114: {
;password_time_change.c: 115: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:view_log@key)),c
	line	116
	
l4435:
;password_time_change.c: 116: key1 = read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movwf	((c:view_log@key1)),c
	line	118
	
l4437:
;password_time_change.c: 118: if (key1 == 7)
		movlw	7
	xorwf	((c:view_log@key1)),c,w
	btfss	status,2
	goto	u3731
	goto	u3730

u3731:
	goto	l4445
u3730:
	line	120
	
l4439:
;password_time_change.c: 119: {
;password_time_change.c: 120: if (count++ >= 1000)
	movf	((c:view_log@count)),c,w
	movwf	(??_view_log+0+0)&0ffh,c
	movf	((c:view_log@count+1)),c,w
	movwf	1+(??_view_log+0+0)&0ffh,c
	infsnz	((c:view_log@count)),c
	incf	((c:view_log@count+1)),c
	btfsc	(??_view_log+0+1),c,7
	goto	u3741
	movlw	232
	subwf	 (??_view_log+0+0),c,w
	movlw	3
	subwfb	(??_view_log+0+1),c,w
	btfss	status,0
	goto	u3741
	goto	u3740

u3741:
	goto	l4445
u3740:
	line	122
	
l4441:
;password_time_change.c: 121: {
;password_time_change.c: 122: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l444
	line	123
	
l4443:
;password_time_change.c: 123: return;
	goto	l444
	line	124
	
l443:
	goto	l4445
	line	126
	
l442:
	line	128
	
l4445:
;password_time_change.c: 124: }
;password_time_change.c: 126: }
;password_time_change.c: 128: if (key == 11 || key == 12)
		movlw	11
	xorwf	((c:view_log@key)),c,w
	btfsc	status,2
	goto	u3751
	goto	u3750

u3751:
	goto	l4449
u3750:
	
l4447:
		movlw	12
	xorwf	((c:view_log@key)),c,w
	btfss	status,2
	goto	u3761
	goto	u3760

u3761:
	goto	l4433
u3760:
	goto	l4449
	
l447:
	line	130
	
l4449:
;password_time_change.c: 129: {
;password_time_change.c: 130: if (key == 11)
		movlw	11
	xorwf	((c:view_log@key)),c,w
	btfss	status,2
	goto	u3771
	goto	u3770

u3771:
	goto	l4457
u3770:
	line	132
	
l4451:
;password_time_change.c: 131: {
;password_time_change.c: 132: if((add + 0x10) != 0xA5)
	movlw	010h
	addwf	((c:view_log@add)),c,w
	movwf	(??_view_log+0+0)&0ffh,c
	movlw	0
	addwfc	((c:view_log@add+1)),c,w
	movwf	(??_view_log+0+0+1)&0ffh,c
		movlw	165
	xorwf	(??_view_log+0+0),c,w
iorwf	(??_view_log+0+1),c,w
	btfsc	status,2
	goto	u3781
	goto	u3780

u3781:
	goto	l4465
u3780:
	line	134
	
l4453:
;password_time_change.c: 133: {
;password_time_change.c: 134: add = add + 0x10;
	movlw	low(010h)
	addwf	((c:view_log@add)),c,w
	movwf	((c:view_log@add)),c
	movlw	high(010h)
	addwfc	((c:view_log@add+1)),c,w
	movwf	1+((c:view_log@add)),c
	line	135
	
l4455:
;password_time_change.c: 135: inc_dec++;
	infsnz	((c:view_log@inc_dec)),c
	incf	((c:view_log@inc_dec+1)),c
	goto	l4465
	line	136
	
l449:
	line	137
;password_time_change.c: 136: }
;password_time_change.c: 137: }
	goto	l4465
	line	138
	
l448:
	line	140
	
l4457:
;password_time_change.c: 138: else
;password_time_change.c: 139: {
;password_time_change.c: 140: if((add) != 0x05)
		movlw	5
	xorwf	((c:view_log@add)),c,w
iorwf	((c:view_log@add+1)),c,w
	btfsc	status,2
	goto	u3791
	goto	u3790

u3791:
	goto	l4463
u3790:
	line	142
	
l4459:
;password_time_change.c: 141: {
;password_time_change.c: 142: add = add - 0x10;
	movlw	low(-16)
	addwf	((c:view_log@add)),c,w
	movwf	((c:view_log@add)),c
	movlw	high(-16)
	addwfc	((c:view_log@add+1)),c,w
	movwf	1+((c:view_log@add)),c
	line	143
	
l4461:
;password_time_change.c: 143: inc_dec--;
	decf	((c:view_log@inc_dec)),c
	btfss	status,0
	decf	((c:view_log@inc_dec+1)),c
	goto	l4463
	line	144
	
l451:
	line	145
	
l4463:
;password_time_change.c: 144: }
;password_time_change.c: 145: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l4465
	line	147
	
l450:
	line	148
	
l4465:
;password_time_change.c: 147: }
;password_time_change.c: 148: count = 0;
	movlw	high(0)
	movwf	((c:view_log@count+1)),c
	movlw	low(0)
	movwf	((c:view_log@count)),c
	line	149
	
l4467:
;password_time_change.c: 149: save_array[0] = read_internal_eeprom(add);
	movf	((c:view_log@add)),c,w
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	((_save_array))&0ffh
	line	150
	
l4469:; BSR set to: 0

;password_time_change.c: 150: save_array[1] = read_internal_eeprom(add + 1);
	incf	((c:view_log@add)),c,w
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+01h))&0ffh
	line	151
	
l4471:; BSR set to: 0

;password_time_change.c: 151: save_array[2] = read_internal_eeprom(add + 2);
	movf	((c:view_log@add)),c,w
	addlw	low(02h)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+02h))&0ffh
	line	152
	
l4473:; BSR set to: 0

;password_time_change.c: 152: save_array[3] = read_internal_eeprom(add + 3);
	movf	((c:view_log@add)),c,w
	addlw	low(03h)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+03h))&0ffh
	line	153
	
l4475:; BSR set to: 0

;password_time_change.c: 153: save_array[4] = read_internal_eeprom(add + 4);
	movf	((c:view_log@add)),c,w
	addlw	low(04h)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+04h))&0ffh
	line	154
	
l4477:; BSR set to: 0

;password_time_change.c: 154: save_array[5] = read_internal_eeprom(add + 5);
	movf	((c:view_log@add)),c,w
	addlw	low(05h)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+05h))&0ffh
	line	155
	
l4479:; BSR set to: 0

;password_time_change.c: 155: save_array[6] = read_internal_eeprom(add + 6);
	movf	((c:view_log@add)),c,w
	addlw	low(06h)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+06h))&0ffh
	line	156
	
l4481:; BSR set to: 0

;password_time_change.c: 156: save_array[7] = read_internal_eeprom(add + 7);
	movf	((c:view_log@add)),c,w
	addlw	low(07h)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+07h))&0ffh
	line	157
	
l4483:; BSR set to: 0

;password_time_change.c: 157: save_array[8] = read_internal_eeprom(add + 8);
	movf	((c:view_log@add)),c,w
	addlw	low(08h)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+08h))&0ffh
	line	158
	
l4485:; BSR set to: 0

;password_time_change.c: 158: save_array[9] = read_internal_eeprom(add + 9);
	movf	((c:view_log@add)),c,w
	addlw	low(09h)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+09h))&0ffh
	line	159
	
l4487:; BSR set to: 0

;password_time_change.c: 159: save_array[10] = read_internal_eeprom(add + 10);
	movf	((c:view_log@add)),c,w
	addlw	low(0Ah)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+0Ah))&0ffh
	line	160
	
l4489:; BSR set to: 0

;password_time_change.c: 160: save_array[11] = read_internal_eeprom(add + 11);
	movf	((c:view_log@add)),c,w
	addlw	low(0Bh)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+0Bh))&0ffh
	line	161
	
l4491:; BSR set to: 0

;password_time_change.c: 161: save_array[12] = read_internal_eeprom(add + 12);
	movf	((c:view_log@add)),c,w
	addlw	low(0Ch)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+0Ch))&0ffh
	line	162
	
l4493:; BSR set to: 0

;password_time_change.c: 162: save_array[13] = read_internal_eeprom(add + 13);
	movf	((c:view_log@add)),c,w
	addlw	low(0Dh)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+0Dh))&0ffh
	line	163
	
l4495:; BSR set to: 0

;password_time_change.c: 163: save_array[14] = read_internal_eeprom(add + 14);
	movf	((c:view_log@add)),c,w
	addlw	low(0Eh)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+0Eh))&0ffh
	line	164
	
l4497:; BSR set to: 0

;password_time_change.c: 164: save_array[15] = read_internal_eeprom(add + 15);
	movf	((c:view_log@add)),c,w
	addlw	low(0Fh)
	
	call	_read_internal_eeprom
	movlb	0	; () banked
	movwf	(0+(_save_array+0Fh))&0ffh
	line	166
	
l4499:; BSR set to: 0

;password_time_change.c: 166: clcd_putch('#', (0x80 + (0)));
	movlw	low(080h)
	movwf	((c:clcd_putch@addr)),c
	movlw	(023h)&0ffh
	
	call	_clcd_putch
	line	167
	
l4501:
;password_time_change.c: 167: clcd_putch(inc_dec + 48, (0x80 + (1)));
	movlw	low(081h)
	movwf	((c:clcd_putch@addr)),c
	movf	((c:view_log@inc_dec)),c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	168
	
l4503:
;password_time_change.c: 168: clcd_print("TIME  EVT  SPD", (0x80 + (3)));
		movlw	low(STR_24)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_24)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(083h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	170
	
l4505:
;password_time_change.c: 170: clcd_print(save_array, (0xC0 + (0)));
		movlw	low(_save_array)
	movwf	((c:clcd_print@data)),c
	movlw	high(_save_array)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	goto	l4433
	line	172
	
l445:
	goto	l4433
	line	174
	
l452:
	line	113
	goto	l4433
	
l453:
	line	177
	
l444:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_view_log
	__end_of_view_log:
	signat	_view_log,89
	global	_set_time

;; *************** function _set_time *****************
;; Defined at:
;;		line 15 in file "set_time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               4   30[COMRAM] unsigned long 
;;  i               4   26[COMRAM] unsigned long 
;;  i               4   22[COMRAM] unsigned long 
;;  i               4   34[COMRAM] unsigned long 
;;  new3           16    0        unsigned char [16]
;;  j               2    0        int 
;;  i               2    0        int 
;;  count           1   40[COMRAM] unsigned char 
;;  just            1   39[COMRAM] unsigned char 
;;  key             1   38[COMRAM] unsigned char 
;;  sh_flag         1   21[COMRAM] unsigned char 
;;  t_flag          1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        21       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        22       0       0       0       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_clcd_print
;;		_clcd_write
;;		_read_switches
;;		_write_ds1307
;; This function is called by:
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	file	"set_time.c"
	line	15
global __ptext25
__ptext25:
psect	text25
	file	"set_time.c"
	line	15
	global	__size_of_set_time
	__size_of_set_time	equ	__end_of_set_time-_set_time
	
_set_time:
;incstack = 0
	opt	stack 25
	line	20
	
l4613:
;set_time.c: 18: int i,j;
;set_time.c: 19: unsigned char new3[16];
;set_time.c: 20: char key,t_flag = 1,sh_flag = 1,count = 0;
	movlw	low(01h)
	movwf	((c:set_time@t_flag)),c
	movlw	low(01h)
	movwf	((c:set_time@sh_flag)),c
	movlw	low(0)
	movwf	((c:set_time@count)),c
	line	22
	
l4615:
;set_time.c: 22: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	24
	
l4617:
;set_time.c: 24: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:set_time@key)),c
	line	27
;set_time.c: 27: while(key != 10)
	goto	l4731
	
l558:
	line	30
	
l4619:
;set_time.c: 28: {
;set_time.c: 30: clcd_print("HH:MM:SS",(0x80 + (4)));
		movlw	low(STR_30)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_30)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(084h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	31
;set_time.c: 31: clcd_print(n_time,(0xC0 + (4)));
		movlw	low(_n_time)
	movwf	((c:clcd_print@data)),c
	movlw	high(_n_time)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C4h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	32
	
l4621:
;set_time.c: 32: clcd_write(0xC0,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0C0h)&0ffh
	
	call	_clcd_write
	line	33
	
l4623:
;set_time.c: 33: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:set_time@key)),c
	line	34
	
l4625:
;set_time.c: 34: sh_flag = 1;
	movlw	low(01h)
	movwf	((c:set_time@sh_flag)),c
	line	37
	
l4627:
;set_time.c: 37: if(key == 11)
		movlw	11
	xorwf	((c:set_time@key)),c,w
	btfss	status,2
	goto	u3961
	goto	u3960

u3961:
	goto	l4691
u3960:
	line	40
	
l4629:
;set_time.c: 38: {
;set_time.c: 40: if(count == 1)
		decf	((c:set_time@count)),c,w
	btfss	status,2
	goto	u3971
	goto	u3970

u3971:
	goto	l4655
u3970:
	line	42
	
l4631:
;set_time.c: 41: {
;set_time.c: 42: if(n_time[0] < '2' && n_time[1] < '9')
		movlw	032h-0
	cpfslt	((c:_n_time)),c
	goto	u3981
	goto	u3980

u3981:
	goto	l4637
u3980:
	
l4633:
		movlw	039h-0
	cpfslt	(0+((c:_n_time)+01h)),c
	goto	u3991
	goto	u3990

u3991:
	goto	l4637
u3990:
	line	44
	
l4635:
;set_time.c: 43: {
;set_time.c: 44: n_time[1]++;
	incf	(0+((c:_n_time)+01h)),c
	line	45
;set_time.c: 45: }
	goto	l4653
	line	47
	
l561:
	
l4637:
;set_time.c: 47: else if(n_time[0] == '2' && n_time[1] < '3')
		movlw	50
	xorwf	((c:_n_time)),c,w
	btfss	status,2
	goto	u4001
	goto	u4000

u4001:
	goto	l4643
u4000:
	
l4639:
		movlw	033h-0
	cpfslt	(0+((c:_n_time)+01h)),c
	goto	u4011
	goto	u4010

u4011:
	goto	l4643
u4010:
	line	49
	
l4641:
;set_time.c: 48: {
;set_time.c: 49: n_time[1]++;
	incf	(0+((c:_n_time)+01h)),c
	line	50
;set_time.c: 50: }
	goto	l4653
	line	51
	
l563:
	
l4643:
;set_time.c: 51: else if(n_time[0] == '2' && n_time[1] == '3')
		movlw	50
	xorwf	((c:_n_time)),c,w
	btfss	status,2
	goto	u4021
	goto	u4020

u4021:
	goto	l4649
u4020:
	
l4645:
		movlw	51
	xorwf	(0+((c:_n_time)+01h)),c,w
	btfss	status,2
	goto	u4031
	goto	u4030

u4031:
	goto	l4649
u4030:
	line	53
	
l4647:
;set_time.c: 52: {
;set_time.c: 53: n_time[0] = '0';
	movlw	low(030h)
	movwf	((c:_n_time)),c
	line	54
;set_time.c: 54: n_time[1] = '0';
	movlw	low(030h)
	movwf	(0+((c:_n_time)+01h)),c
	line	55
;set_time.c: 55: }
	goto	l4653
	line	56
	
l565:
	line	58
	
l4649:
;set_time.c: 56: else
;set_time.c: 57: {
;set_time.c: 58: n_time[1] = '0';
	movlw	low(030h)
	movwf	(0+((c:_n_time)+01h)),c
	line	59
	
l4651:
;set_time.c: 59: n_time[0]++;
	incf	((c:_n_time)),c
	goto	l4653
	line	60
	
l566:
	goto	l4653
	
l564:
	goto	l4653
	
l562:
	line	62
	
l4653:
;set_time.c: 60: }
;set_time.c: 62: clcd_print(n_time,(0xC0 + (4)));
		movlw	low(_n_time)
	movwf	((c:clcd_print@data)),c
	movlw	high(_n_time)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C4h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	63
;set_time.c: 63: }
	goto	l4731
	line	65
	
l560:
	
l4655:
;set_time.c: 65: else if(count == 2)
		movlw	2
	xorwf	((c:set_time@count)),c,w
	btfss	status,2
	goto	u4041
	goto	u4040

u4041:
	goto	l4673
u4040:
	line	68
	
l4657:
;set_time.c: 66: {
;set_time.c: 68: if(n_time[4] < '9')
		movlw	039h-0
	cpfslt	(0+((c:_n_time)+04h)),c
	goto	u4051
	goto	u4050

u4051:
	goto	l4661
u4050:
	line	70
	
l4659:
;set_time.c: 69: {
;set_time.c: 70: n_time[4]++;
	incf	(0+((c:_n_time)+04h)),c
	line	71
;set_time.c: 71: }
	goto	l4671
	line	73
	
l569:
	
l4661:
;set_time.c: 73: else if(n_time[3] == '5' && n_time[4] == '9')
		movlw	53
	xorwf	(0+((c:_n_time)+03h)),c,w
	btfss	status,2
	goto	u4061
	goto	u4060

u4061:
	goto	l4667
u4060:
	
l4663:
		movlw	57
	xorwf	(0+((c:_n_time)+04h)),c,w
	btfss	status,2
	goto	u4071
	goto	u4070

u4071:
	goto	l4667
u4070:
	line	75
	
l4665:
;set_time.c: 74: {
;set_time.c: 75: n_time[3] = '0';
	movlw	low(030h)
	movwf	(0+((c:_n_time)+03h)),c
	line	76
;set_time.c: 76: n_time[4] = '0';
	movlw	low(030h)
	movwf	(0+((c:_n_time)+04h)),c
	line	77
;set_time.c: 77: }
	goto	l4671
	line	78
	
l571:
	line	80
	
l4667:
;set_time.c: 78: else
;set_time.c: 79: {
;set_time.c: 80: n_time[4] = '0';
	movlw	low(030h)
	movwf	(0+((c:_n_time)+04h)),c
	line	81
	
l4669:
;set_time.c: 81: n_time[3]++;
	incf	(0+((c:_n_time)+03h)),c
	goto	l4671
	line	82
	
l572:
	goto	l4671
	
l570:
	line	84
	
l4671:
;set_time.c: 82: }
;set_time.c: 84: clcd_print(n_time,(0xC0 + (4)));
		movlw	low(_n_time)
	movwf	((c:clcd_print@data)),c
	movlw	high(_n_time)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C4h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	85
;set_time.c: 85: }
	goto	l4731
	line	87
	
l568:
	
l4673:
;set_time.c: 87: else if(count == 3)
		movlw	3
	xorwf	((c:set_time@count)),c,w
	btfss	status,2
	goto	u4081
	goto	u4080

u4081:
	goto	l4731
u4080:
	line	89
	
l4675:
;set_time.c: 88: {
;set_time.c: 89: if(n_time[7] < '9')
		movlw	039h-0
	cpfslt	(0+((c:_n_time)+07h)),c
	goto	u4091
	goto	u4090

u4091:
	goto	l4679
u4090:
	line	91
	
l4677:
;set_time.c: 90: {
;set_time.c: 91: n_time[7]++;
	incf	(0+((c:_n_time)+07h)),c
	line	92
;set_time.c: 92: }
	goto	l4689
	line	94
	
l575:
	
l4679:
;set_time.c: 94: else if(n_time[6] == '5' && n_time[7] == '9')
		movlw	53
	xorwf	(0+((c:_n_time)+06h)),c,w
	btfss	status,2
	goto	u4101
	goto	u4100

u4101:
	goto	l4685
u4100:
	
l4681:
		movlw	57
	xorwf	(0+((c:_n_time)+07h)),c,w
	btfss	status,2
	goto	u4111
	goto	u4110

u4111:
	goto	l4685
u4110:
	line	96
	
l4683:
;set_time.c: 95: {
;set_time.c: 96: n_time[6] = '0';
	movlw	low(030h)
	movwf	(0+((c:_n_time)+06h)),c
	line	97
;set_time.c: 97: n_time[7] = '0';
	movlw	low(030h)
	movwf	(0+((c:_n_time)+07h)),c
	line	98
;set_time.c: 98: }
	goto	l4689
	line	99
	
l577:
	line	101
	
l4685:
;set_time.c: 99: else
;set_time.c: 100: {
;set_time.c: 101: n_time[7] = '0';
	movlw	low(030h)
	movwf	(0+((c:_n_time)+07h)),c
	line	102
	
l4687:
;set_time.c: 102: n_time[6]++;
	incf	(0+((c:_n_time)+06h)),c
	goto	l4689
	line	103
	
l578:
	goto	l4689
	
l576:
	line	105
	
l4689:
;set_time.c: 103: }
;set_time.c: 105: clcd_print(n_time,(0xC0 + (4)));
		movlw	low(_n_time)
	movwf	((c:clcd_print@data)),c
	movlw	high(_n_time)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C4h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	goto	l4731
	line	106
	
l574:
	goto	l4731
	line	108
	
l573:
	goto	l4731
	
l567:
;set_time.c: 106: }
;set_time.c: 108: }
	goto	l4731
	line	110
	
l559:
	
l4691:
;set_time.c: 110: else if(key == 12)
		movlw	12
	xorwf	((c:set_time@key)),c,w
	btfss	status,2
	goto	u4121
	goto	u4120

u4121:
	goto	l4731
u4120:
	line	112
	
l4693:
;set_time.c: 111: {
;set_time.c: 112: count++;
	incf	((c:set_time@count)),c
	line	113
	
l4695:
;set_time.c: 113: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	114
	
l4697:
;set_time.c: 114: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	115
	
l4699:
;set_time.c: 115: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	116
	
l4701:
;set_time.c: 116: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	117
	
l4703:
;set_time.c: 117: if(count == 1);
		decf	((c:set_time@count)),c,w
	btfss	status,2
	goto	u4131
	goto	u4130

u4131:
	goto	l4707
u4130:
	goto	l582
	
l4705:
	goto	l582
	line	118
	
l581:
	
l4707:
;set_time.c: 118: else if(count == 2)
		movlw	2
	xorwf	((c:set_time@count)),c,w
	btfss	status,2
	goto	u4141
	goto	u4140

u4141:
	goto	l4711
u4140:
	line	120
	
l4709:
;set_time.c: 119: {
;set_time.c: 120: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	121
;set_time.c: 121: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	122
;set_time.c: 122: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	123
;set_time.c: 123: }
	goto	l582
	line	124
	
l583:
	
l4711:
;set_time.c: 124: else if(count == 3)
		movlw	3
	xorwf	((c:set_time@count)),c,w
	btfss	status,2
	goto	u4151
	goto	u4150

u4151:
	goto	l4715
u4150:
	line	126
	
l4713:
;set_time.c: 125: {
;set_time.c: 126: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	127
;set_time.c: 127: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	128
;set_time.c: 128: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	129
;set_time.c: 129: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	130
;set_time.c: 130: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	131
;set_time.c: 131: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	132
;set_time.c: 132: }
	goto	l582
	line	133
	
l585:
	line	134
	
l4715:
;set_time.c: 133: else
;set_time.c: 134: count = 0;
	movlw	low(0)
	movwf	((c:set_time@count)),c
	goto	l582
	
l586:
	goto	l582
	
l584:
	
l582:
	line	135
;set_time.c: 135: for(unsigned long i = 500000; i--;);
	movlw	low(07A120h)
	movwf	((c:set_time@i_417)),c
	movlw	high(07A120h)
	movwf	((c:set_time@i_417+1)),c
	movlw	low highword(07A120h)
	movwf	((c:set_time@i_417+2)),c
	movlw	high highword(07A120h)
	movwf	((c:set_time@i_417+3)),c
	goto	l4717
	
l588:
	goto	l4717
	
l587:
	
l4717:
	decf	((c:set_time@i_417)),c
	movlw	0
	subwfb	((c:set_time@i_417+1)),c
	subwfb	((c:set_time@i_417+2)),c
	subwfb	((c:set_time@i_417+3)),c
		incf	((c:set_time@i_417)),c,w
	bnz	u4161
	incf	((c:set_time@i_417+1)),c,w
	bnz	u4161
	incf	((c:set_time@i_417+2)),c,w
	bnz	u4161
	incf	((c:set_time@i_417+3)),c,w
	btfss	status,2
	goto	u4161
	goto	u4160

u4161:
	goto	l4717
u4160:
	goto	l4719
	
l589:
	line	136
	
l4719:
;set_time.c: 136: clcd_write(0x0F,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Fh)&0ffh
	
	call	_clcd_write
	line	137
;set_time.c: 137: clcd_write(0x14,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(014h)&0ffh
	
	call	_clcd_write
	line	138
	
l4721:
;set_time.c: 138: for(unsigned long i = 500000; i--;);
	movlw	low(07A120h)
	movwf	((c:set_time@i_418)),c
	movlw	high(07A120h)
	movwf	((c:set_time@i_418+1)),c
	movlw	low highword(07A120h)
	movwf	((c:set_time@i_418+2)),c
	movlw	high highword(07A120h)
	movwf	((c:set_time@i_418+3)),c
	goto	l4723
	
l591:
	goto	l4723
	
l590:
	
l4723:
	decf	((c:set_time@i_418)),c
	movlw	0
	subwfb	((c:set_time@i_418+1)),c
	subwfb	((c:set_time@i_418+2)),c
	subwfb	((c:set_time@i_418+3)),c
		incf	((c:set_time@i_418)),c,w
	bnz	u4171
	incf	((c:set_time@i_418+1)),c,w
	bnz	u4171
	incf	((c:set_time@i_418+2)),c,w
	bnz	u4171
	incf	((c:set_time@i_418+3)),c,w
	btfss	status,2
	goto	u4171
	goto	u4170

u4171:
	goto	l4723
u4170:
	goto	l4725
	
l592:
	line	139
	
l4725:
;set_time.c: 139: clcd_write(0x0F,0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Fh)&0ffh
	
	call	_clcd_write
	line	140
	
l4727:
;set_time.c: 140: for(unsigned long i = 500000; i--;);
	movlw	low(07A120h)
	movwf	((c:set_time@i_419)),c
	movlw	high(07A120h)
	movwf	((c:set_time@i_419+1)),c
	movlw	low highword(07A120h)
	movwf	((c:set_time@i_419+2)),c
	movlw	high highword(07A120h)
	movwf	((c:set_time@i_419+3)),c
	goto	l4729
	
l594:
	goto	l4729
	
l593:
	
l4729:
	decf	((c:set_time@i_419)),c
	movlw	0
	subwfb	((c:set_time@i_419+1)),c
	subwfb	((c:set_time@i_419+2)),c
	subwfb	((c:set_time@i_419+3)),c
		incf	((c:set_time@i_419)),c,w
	bnz	u4181
	incf	((c:set_time@i_419+1)),c,w
	bnz	u4181
	incf	((c:set_time@i_419+2)),c,w
	bnz	u4181
	incf	((c:set_time@i_419+3)),c,w
	btfss	status,2
	goto	u4181
	goto	u4180

u4181:
	goto	l4729
u4180:
	goto	l4731
	
l595:
	goto	l4731
	line	141
	
l580:
	goto	l4731
	line	142
	
l579:
	goto	l4731
	
l557:
	line	27
	
l4731:
		movlw	10
	xorwf	((c:set_time@key)),c,w
	btfss	status,2
	goto	u4191
	goto	u4190

u4191:
	goto	l4619
u4190:
	goto	l4733
	
l596:
	line	143
	
l4733:
;set_time.c: 141: }
;set_time.c: 142: }
;set_time.c: 143: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	145
	
l4735:
;set_time.c: 145: clcd_print(n_time, (0x80 + (0)));
		movlw	low(_n_time)
	movwf	((c:clcd_print@data)),c
	movlw	high(_n_time)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(080h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	147
	
l4737:
;set_time.c: 147: for(unsigned long i = 500000; i--;);
	movlw	low(07A120h)
	movwf	((c:set_time@i_420)),c
	movlw	high(07A120h)
	movwf	((c:set_time@i_420+1)),c
	movlw	low highword(07A120h)
	movwf	((c:set_time@i_420+2)),c
	movlw	high highword(07A120h)
	movwf	((c:set_time@i_420+3)),c
	goto	l4739
	
l598:
	goto	l4739
	
l597:
	
l4739:
	decf	((c:set_time@i_420)),c
	movlw	0
	subwfb	((c:set_time@i_420+1)),c
	subwfb	((c:set_time@i_420+2)),c
	subwfb	((c:set_time@i_420+3)),c
		incf	((c:set_time@i_420)),c,w
	bnz	u4201
	incf	((c:set_time@i_420+1)),c,w
	bnz	u4201
	incf	((c:set_time@i_420+2)),c,w
	bnz	u4201
	incf	((c:set_time@i_420+3)),c,w
	btfss	status,2
	goto	u4201
	goto	u4200

u4201:
	goto	l4739
u4200:
	goto	l4741
	
l599:
	line	149
	
l4741:
;set_time.c: 149: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	152
	
l4743:
;set_time.c: 152: unsigned char just = 0x00;
	movlw	low(0)
	movwf	((c:set_time@just)),c
	line	153
	
l4745:
;set_time.c: 153: just = (n_time[1] & 0x0F) | ((n_time[0] << 4) & 0xF0);
	movff	(c:_n_time),??_set_time+0+0
	swapf	(??_set_time+0+0),c
	movlw	(0ffh shl 4) & 0ffh
	andwf	(??_set_time+0+0),c
	movlw	0F0h
	andwf	(??_set_time+0+0),c
	movf	(0+((c:_n_time)+01h)),c,w
	andlw	low(0Fh)
	iorwf	(??_set_time+0+0),c,w
	movwf	((c:set_time@just)),c
	line	154
	
l4747:
;set_time.c: 154: write_ds1307(0x02, just);
	movff	(c:set_time@just),(c:write_ds1307@data)
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	156
	
l4749:
;set_time.c: 156: just = (n_time[4] & 0x0F) | ((n_time[3] << 4) & 0xF0);
	movff	0+((c:_n_time)+03h),??_set_time+0+0
	swapf	(??_set_time+0+0),c
	movlw	(0ffh shl 4) & 0ffh
	andwf	(??_set_time+0+0),c
	movlw	0F0h
	andwf	(??_set_time+0+0),c
	movf	(0+((c:_n_time)+04h)),c,w
	andlw	low(0Fh)
	iorwf	(??_set_time+0+0),c,w
	movwf	((c:set_time@just)),c
	line	158
	
l4751:
;set_time.c: 158: write_ds1307(0x01, just);
	movff	(c:set_time@just),(c:write_ds1307@data)
	movlw	(01h)&0ffh
	
	call	_write_ds1307
	line	159
	
l4753:
;set_time.c: 159: just = (n_time[7] & 0x0F) | ((n_time[6] << 4) & 0xF0);
	movff	0+((c:_n_time)+06h),??_set_time+0+0
	swapf	(??_set_time+0+0),c
	movlw	(0ffh shl 4) & 0ffh
	andwf	(??_set_time+0+0),c
	movlw	0F0h
	andwf	(??_set_time+0+0),c
	movf	(0+((c:_n_time)+07h)),c,w
	andlw	low(0Fh)
	iorwf	(??_set_time+0+0),c,w
	movwf	((c:set_time@just)),c
	line	160
	
l4755:
;set_time.c: 160: write_ds1307(0x00, just);
	movff	(c:set_time@just),(c:write_ds1307@data)
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	162
	
l4757:
;set_time.c: 162: new_time_flag = 1;
	movlw	low(01h)
	movwf	((c:_new_time_flag)),c
	line	163
	
l600:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_set_time
	__end_of_set_time:
	signat	_set_time,89
	global	_write_ds1307

;; *************** function _write_ds1307 *****************
;; Defined at:
;;		line 48 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1   15[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	file	"ds1307.c"
	line	48
global __ptext26
__ptext26:
psect	text26
	file	"ds1307.c"
	line	48
	global	__size_of_write_ds1307
	__size_of_write_ds1307	equ	__end_of_write_ds1307-_write_ds1307
	
_write_ds1307:
;incstack = 0
	opt	stack 25
;write_ds1307@address stored from wreg
	movwf	((c:write_ds1307@address)),c
	line	50
	
l4401:
;ds1307.c: 50: i2c_start();
	call	_i2c_start	;wreg free
	line	51
	
l4403:
;ds1307.c: 51: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	52
	
l4405:
;ds1307.c: 52: i2c_write(address);
	movf	((c:write_ds1307@address)),c,w
	
	call	_i2c_write
	line	53
	
l4407:
;ds1307.c: 53: i2c_write(data);
	movf	((c:write_ds1307@data)),c,w
	
	call	_i2c_write
	line	54
	
l4409:
;ds1307.c: 54: i2c_stop();
	call	_i2c_stop	;wreg free
	line	55
	
l539:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_write_ds1307
	__end_of_write_ds1307:
	signat	_write_ds1307,8313
	global	_i2c_write

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 55 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	file	"i2c.c"
	line	55
global __ptext27
__ptext27:
psect	text27
	file	"i2c.c"
	line	55
	global	__size_of_i2c_write
	__size_of_i2c_write	equ	__end_of_i2c_write-_i2c_write
	
_i2c_write:
;incstack = 0
	opt	stack 25
;i2c_write@data stored from wreg
	movwf	((c:i2c_write@data)),c
	line	57
	
l4233:
;i2c.c: 57: SSPBUF = data;
	movff	(c:i2c_write@data),(c:4041)	;volatile
	line	58
	
l4235:
;i2c.c: 58: i2c_idle();
	call	_i2c_idle	;wreg free
	line	59
	
l678:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
	signat	_i2c_write,4217
	global	_i2c_stop

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 43 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	line	43
global __ptext28
__ptext28:
psect	text28
	file	"i2c.c"
	line	43
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:
;incstack = 0
	opt	stack 25
	line	45
	
l4237:
;i2c.c: 45: PEN = 1;
	bsf	c:(32298/8),(32298)&7	;volatile
	line	46
	
l4239:
;i2c.c: 46: i2c_idle();
	call	_i2c_idle	;wreg free
	line	47
	
l672:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
	signat	_i2c_stop,89
	global	_i2c_start

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 37 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	line	37
global __ptext29
__ptext29:
psect	text29
	file	"i2c.c"
	line	37
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:
;incstack = 0
	opt	stack 25
	line	39
	
l4229:
;i2c.c: 39: SEN = 1;
	bsf	c:(32296/8),(32296)&7	;volatile
	line	40
	
l4231:
;i2c.c: 40: i2c_idle();
	call	_i2c_idle	;wreg free
	line	41
	
l669:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
	signat	_i2c_start,89
	global	_i2c_idle

;; *************** function _i2c_idle *****************
;; Defined at:
;;		line 23 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_rep_start
;;		_i2c_write
;;		_i2c_rx_mode
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	line	23
global __ptext30
__ptext30:
psect	text30
	file	"i2c.c"
	line	23
	global	__size_of_i2c_idle
	__size_of_i2c_idle	equ	__end_of_i2c_idle-_i2c_idle
	
_i2c_idle:
;incstack = 0
	opt	stack 25
	line	25
	
l4127:
;i2c.c: 25: while (!SSPIF);
	goto	l659
	
l660:
	
l659:
	btfss	c:(31987/8),(31987)&7	;volatile
	goto	u3361
	goto	u3360
u3361:
	goto	l659
u3360:
	
l661:
	line	26
;i2c.c: 26: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	27
	
l662:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2c_idle
	__end_of_i2c_idle:
	signat	_i2c_idle,89
	global	_password_change

;; *************** function _password_change *****************
;; Defined at:
;;		line 8 in file "password_time_change.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  c_password      5   27[COMRAM] unsigned char [5]
;;  r_password      5   22[COMRAM] unsigned char [5]
;;  pos             2   36[COMRAM] int 
;;  count           2   33[COMRAM] int 
;;  star            2   20[COMRAM] int 
;;  key             1   35[COMRAM] unsigned char 
;;  address         1   32[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2  160[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        18       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        18       0       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_delay_fun
;;		_read_switches
;;		_strcmp
;;		_write_internal_eeprom
;; This function is called by:
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"password_time_change.c"
	line	8
global __ptext31
__ptext31:
psect	text31
	file	"password_time_change.c"
	line	8
	global	__size_of_password_change
	__size_of_password_change	equ	__end_of_password_change-_password_change
	
_password_change:
;incstack = 0
	opt	stack 26
	line	10
	
l4507:
;password_time_change.c: 10: unsigned char c_password[5]={'\0'}, r_password[5]={'\0'};
	lfsr	2,(password_change@F16060)
	lfsr	1,(password_change@c_password)
	movlw	5-1
u3801:
	movff	plusw2,plusw1
	decf	wreg
	bc	u3801

	lfsr	2,(password_change@F16062)
	lfsr	1,(password_change@r_password)
	movlw	5-1
u3811:
	movff	plusw2,plusw1
	decf	wreg
	bc	u3811

	line	11
	
l4509:
;password_time_change.c: 11: unsigned char key,address = 0xC0;
	movlw	low(0C0h)
	movwf	((c:password_change@address)),c
	line	12
	
l4511:
;password_time_change.c: 12: int count = 0, pos = 0, star = 0;
	movlw	high(0)
	movwf	((c:password_change@count+1)),c
	movlw	low(0)
	movwf	((c:password_change@count)),c
	
l4513:
	movlw	high(0)
	movwf	((c:password_change@pos+1)),c
	movlw	low(0)
	movwf	((c:password_change@pos)),c
	
l4515:
	movlw	high(0)
	movwf	((c:password_change@star+1)),c
	movlw	low(0)
	movwf	((c:password_change@star)),c
	line	13
	
l4517:
;password_time_change.c: 13: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	15
	
l4519:
;password_time_change.c: 15: clcd_print("Enter new password", (0x80 + (0)));
		movlw	low(STR_17)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_17)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(080h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	goto	l4521
	line	17
;password_time_change.c: 17: while(1)
	
l418:
	line	19
	
l4521:
;password_time_change.c: 18: {
;password_time_change.c: 19: clcd_write(address, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movf	((c:password_change@address)),c,w
	
	call	_clcd_write
	line	20
	
l4523:
;password_time_change.c: 20: clcd_write(0x0E, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Eh)&0ffh
	
	call	_clcd_write
	line	22
	
l4525:
;password_time_change.c: 22: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:password_change@key)),c
	line	25
	
l4527:
;password_time_change.c: 25: if (count < 4 && (key == 1 || key == 2))
	btfsc	((c:password_change@count+1)),c,7
	goto	u3820
	movf	((c:password_change@count+1)),c,w
	bnz	u3821
	movlw	4
	subwf	 ((c:password_change@count)),c,w
	btfsc	status,0
	goto	u3821
	goto	u3820

u3821:
	goto	l4557
u3820:
	
l4529:
		decf	((c:password_change@key)),c,w
	btfsc	status,2
	goto	u3831
	goto	u3830

u3831:
	goto	l4533
u3830:
	
l4531:
		movlw	2
	xorwf	((c:password_change@key)),c,w
	btfss	status,2
	goto	u3841
	goto	u3840

u3841:
	goto	l4557
u3840:
	goto	l4533
	
l421:
	line	27
	
l4533:
;password_time_change.c: 26: {
;password_time_change.c: 27: if (key == 1)
		decf	((c:password_change@key)),c,w
	btfss	status,2
	goto	u3851
	goto	u3850

u3851:
	goto	l4537
u3850:
	line	29
	
l4535:
;password_time_change.c: 28: {
;password_time_change.c: 29: c_password[pos] = '1';
	movlw	low(password_change@c_password)
	addwf	((c:password_change@pos)),c,w
	movwf	c:fsr2l
	movlw	high(password_change@c_password)
	addwfc	((c:password_change@pos+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(031h)
	movwf	indf2
	line	30
;password_time_change.c: 30: }
	goto	l4541
	line	31
	
l422:
	
l4537:
;password_time_change.c: 31: else if (key == 2)
		movlw	2
	xorwf	((c:password_change@key)),c,w
	btfss	status,2
	goto	u3861
	goto	u3860

u3861:
	goto	l4541
u3860:
	line	33
	
l4539:
;password_time_change.c: 32: {
;password_time_change.c: 33: c_password[pos] = '0';
	movlw	low(password_change@c_password)
	addwf	((c:password_change@pos)),c,w
	movwf	c:fsr2l
	movlw	high(password_change@c_password)
	addwfc	((c:password_change@pos+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(030h)
	movwf	indf2
	goto	l4541
	line	34
	
l424:
	goto	l4541
	line	35
	
l423:
	
l4541:
;password_time_change.c: 34: }
;password_time_change.c: 35: clcd_putch('*', (0xC0 + (pos)));
	movf	((c:password_change@pos)),c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr)),c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	37
	
l4543:
;password_time_change.c: 37: count++;
	infsnz	((c:password_change@count)),c
	incf	((c:password_change@count+1)),c
	line	38
	
l4545:
;password_time_change.c: 38: pos++;
	infsnz	((c:password_change@pos)),c
	incf	((c:password_change@pos+1)),c
	line	39
	
l4547:
;password_time_change.c: 39: if (count == 4)
		movlw	4
	xorwf	((c:password_change@count)),c,w
iorwf	((c:password_change@count+1)),c,w
	btfss	status,2
	goto	u3871
	goto	u3870

u3871:
	goto	l4555
u3870:
	line	41
	
l4549:
;password_time_change.c: 40: {
;password_time_change.c: 41: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	42
	
l4551:
;password_time_change.c: 42: pos = 0;
	movlw	high(0)
	movwf	((c:password_change@pos+1)),c
	movlw	low(0)
	movwf	((c:password_change@pos)),c
	line	44
	
l4553:
;password_time_change.c: 44: clcd_print(" Re Enter new password", (0x80 + (0)));
		movlw	low(STR_18)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_18)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(080h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	goto	l4555
	line	46
	
l425:
	line	47
	
l4555:
;password_time_change.c: 46: }
;password_time_change.c: 47: address = (0xC0 + (pos));
	movf	((c:password_change@pos)),c,w
	addlw	low(0C0h)
	movwf	((c:password_change@address)),c
	line	49
;password_time_change.c: 49: }
	goto	l4577
	line	50
	
l419:
	
l4557:
;password_time_change.c: 50: else if ((key == 1 || key == 2))
		decf	((c:password_change@key)),c,w
	btfsc	status,2
	goto	u3881
	goto	u3880

u3881:
	goto	l4561
u3880:
	
l4559:
		movlw	2
	xorwf	((c:password_change@key)),c,w
	btfss	status,2
	goto	u3891
	goto	u3890

u3891:
	goto	l4577
u3890:
	goto	l4561
	
l429:
	line	54
	
l4561:
;password_time_change.c: 51: {
;password_time_change.c: 54: if (key == 1)
		decf	((c:password_change@key)),c,w
	btfss	status,2
	goto	u3901
	goto	u3900

u3901:
	goto	l4565
u3900:
	line	56
	
l4563:
;password_time_change.c: 55: {
;password_time_change.c: 56: r_password[pos] = '1';
	movlw	low(password_change@r_password)
	addwf	((c:password_change@pos)),c,w
	movwf	c:fsr2l
	movlw	high(password_change@r_password)
	addwfc	((c:password_change@pos+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(031h)
	movwf	indf2
	line	57
;password_time_change.c: 57: }
	goto	l4569
	line	58
	
l430:
	
l4565:
;password_time_change.c: 58: else if (key == 2)
		movlw	2
	xorwf	((c:password_change@key)),c,w
	btfss	status,2
	goto	u3911
	goto	u3910

u3911:
	goto	l4569
u3910:
	line	60
	
l4567:
;password_time_change.c: 59: {
;password_time_change.c: 60: r_password[pos] = '0';
	movlw	low(password_change@r_password)
	addwf	((c:password_change@pos)),c,w
	movwf	c:fsr2l
	movlw	high(password_change@r_password)
	addwfc	((c:password_change@pos+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(030h)
	movwf	indf2
	goto	l4569
	line	61
	
l432:
	goto	l4569
	line	62
	
l431:
	
l4569:
;password_time_change.c: 61: }
;password_time_change.c: 62: clcd_putch('*', (0xC0 + (pos)));
	movf	((c:password_change@pos)),c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr)),c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	63
	
l4571:
;password_time_change.c: 63: pos++;
	infsnz	((c:password_change@pos)),c
	incf	((c:password_change@pos+1)),c
	line	64
	
l4573:
;password_time_change.c: 64: count ++;
	infsnz	((c:password_change@count)),c
	incf	((c:password_change@count+1)),c
	line	65
	
l4575:
;password_time_change.c: 65: address = (0xC0 + (pos));
	movf	((c:password_change@pos)),c,w
	addlw	low(0C0h)
	movwf	((c:password_change@address)),c
	goto	l4577
	line	68
	
l427:
	goto	l4577
	line	72
	
l426:
	
l4577:
;password_time_change.c: 68: }
;password_time_change.c: 72: if (count == 8 && (strcmp(c_password, r_password) == 0))
		movlw	8
	xorwf	((c:password_change@count)),c,w
iorwf	((c:password_change@count+1)),c,w
	btfss	status,2
	goto	u3921
	goto	u3920

u3921:
	goto	l4599
u3920:
	
l4579:
		movlw	low(password_change@c_password)
	movwf	((c:strcmp@s1)),c
	movlw	high(password_change@c_password)
	movwf	((c:strcmp@s1+1)),c

		movlw	low(password_change@r_password)
	movwf	((c:strcmp@s2)),c
	movlw	high(password_change@r_password)
	movwf	((c:strcmp@s2+1)),c

	call	_strcmp	;wreg free
	movf	(0+?_strcmp),c,w
iorwf	(1+?_strcmp),c,w
	btfss	status,2
	goto	u3931
	goto	u3930

u3931:
	goto	l4599
u3930:
	line	74
	
l4581:
;password_time_change.c: 73: {
;password_time_change.c: 74: write_internal_eeprom(0x01, c_password[0]);
	movff	(c:password_change@c_password),(c:write_internal_eeprom@data)
	movlw	(01h)&0ffh
	
	call	_write_internal_eeprom
	line	75
;password_time_change.c: 75: write_internal_eeprom(0x02, c_password[1]);
	movff	0+((c:password_change@c_password)+01h),(c:write_internal_eeprom@data)
	movlw	(02h)&0ffh
	
	call	_write_internal_eeprom
	line	76
;password_time_change.c: 76: write_internal_eeprom(0x03, c_password[2]);
	movff	0+((c:password_change@c_password)+02h),(c:write_internal_eeprom@data)
	movlw	(03h)&0ffh
	
	call	_write_internal_eeprom
	line	77
;password_time_change.c: 77: write_internal_eeprom(0x04, c_password[3]);
	movff	0+((c:password_change@c_password)+03h),(c:write_internal_eeprom@data)
	movlw	(04h)&0ffh
	
	call	_write_internal_eeprom
	line	78
	
l4583:
;password_time_change.c: 78: delay_fun();
	call	_delay_fun	;wreg free
	line	80
	
l4585:
;password_time_change.c: 80: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	81
	
l4587:
;password_time_change.c: 81: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	82
	
l4589:
;password_time_change.c: 82: clcd_print("password change", (0x80 + (0)));
		movlw	low(STR_19)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_19)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(080h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	83
	
l4591:
;password_time_change.c: 83: clcd_print("Successfully", (0xC0 + (0)));
		movlw	low(STR_20)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_20)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	84
	
l4593:
;password_time_change.c: 84: delay_fun();
	call	_delay_fun	;wreg free
	goto	l434
	line	85
	
l4595:
;password_time_change.c: 85: return 1;
;	Return value of _password_change is never used
	goto	l434
	line	86
	
l4597:
;password_time_change.c: 86: }
	goto	l4521
	line	87
	
l433:
	
l4599:
;password_time_change.c: 87: else if (count == 9 && (strcmp(c_password, r_password) != 0))
		movlw	9
	xorwf	((c:password_change@count)),c,w
iorwf	((c:password_change@count+1)),c,w
	btfss	status,2
	goto	u3941
	goto	u3940

u3941:
	goto	l4521
u3940:
	
l4601:
		movlw	low(password_change@c_password)
	movwf	((c:strcmp@s1)),c
	movlw	high(password_change@c_password)
	movwf	((c:strcmp@s1+1)),c

		movlw	low(password_change@r_password)
	movwf	((c:strcmp@s2)),c
	movlw	high(password_change@r_password)
	movwf	((c:strcmp@s2+1)),c

	call	_strcmp	;wreg free
	movf	(0+?_strcmp),c,w
iorwf	(1+?_strcmp),c,w
	btfsc	status,2
	goto	u3951
	goto	u3950

u3951:
	goto	l4521
u3950:
	line	89
	
l4603:
;password_time_change.c: 88: {
;password_time_change.c: 89: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	90
;password_time_change.c: 90: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	91
	
l4605:
;password_time_change.c: 91: clcd_print("Change pass not", (0x80 + (0)));
		movlw	low(STR_21)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_21)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(080h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	92
	
l4607:
;password_time_change.c: 92: clcd_print("Matched try again later", (0xC0 + (0)));
		movlw	low(STR_22)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_22)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	97
	
l4609:
;password_time_change.c: 97: delay_fun();
	call	_delay_fun	;wreg free
	goto	l434
	line	98
	
l4611:
;password_time_change.c: 98: return 1;
;	Return value of _password_change is never used
	goto	l434
	line	100
	
l436:
	goto	l4521
	line	102
	
l435:
	goto	l4521
	
l437:
	line	17
	goto	l4521
	
l438:
	line	103
	
l434:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_password_change
	__end_of_password_change:
	signat	_password_change,90
	global	_strcmp

;; *************** function _strcmp *****************
;; Defined at:
;;		line 33 in file "/opt/microchip/xc8/v1.36/sources/common/strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              2   14[COMRAM] PTR const unsigned char 
;;		 -> password_compare@password(5), password_change@c_password(5), 
;;  s2              2   16[COMRAM] PTR const unsigned char 
;;		 -> password_compare@enter_pass(5), password_change@r_password(5), 
;; Auto vars:     Size  Location     Type
;;  r               1   19[COMRAM] char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_password_change
;;		_password_compare
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.36/sources/common/strcmp.c"
	line	33
global __ptext32
__ptext32:
psect	text32
	file	"/opt/microchip/xc8/v1.36/sources/common/strcmp.c"
	line	33
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:
;incstack = 0
	opt	stack 28
	line	37
	
l4389:
	goto	l4393
	
l1302:
	line	38
	
l4391:
	infsnz	((c:strcmp@s1)),c
	incf	((c:strcmp@s1+1)),c
	line	39
	infsnz	((c:strcmp@s2)),c
	incf	((c:strcmp@s2+1)),c
	goto	l4393
	line	40
	
l1301:
	line	37
	
l4393:
	movff	(c:strcmp@s1),fsr2l
	movff	(c:strcmp@s1+1),fsr2h
	movf	indf2,w
	movwf	(??_strcmp+0+0)&0ffh,c
	movff	(c:strcmp@s2),fsr2l
	movff	(c:strcmp@s2+1),fsr2h
	movf	indf2,w
	sublw	0
	addwf	((??_strcmp+0+0)),c,w
	movwf	((c:strcmp@r)),c
	movf	((c:strcmp@r)),c,w
	btfss	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l4397
u3710:
	
l4395:
	movff	(c:strcmp@s1),fsr2l
	movff	(c:strcmp@s1+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l4391
u3720:
	goto	l4397
	
l1304:
	goto	l4397
	
l1305:
	line	41
	
l4397:
	movf	((c:strcmp@r)),c,w
	movwf	((c:?_strcmp)),c
	clrf	((c:?_strcmp+1)),c
	btfsc	((c:?_strcmp)),c,7
	decf	((c:?_strcmp+1)),c
	goto	l1306
	
l4399:
	line	42
	
l1306:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
	signat	_strcmp,8314
	global	_read_switches

;; *************** function _read_switches *****************
;; Defined at:
;;		line 88 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;  detection_ty    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  detection_ty    1   15[COMRAM] unsigned char 
;;  key             1   16[COMRAM] unsigned char 
;;  key1            1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_scan_key
;; This function is called by:
;;		_main
;;		_display_menu
;;		_password_change
;;		_view_log
;;		_password_compare
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	file	"matrix_keypad.c"
	line	88
global __ptext33
__ptext33:
psect	text33
	file	"matrix_keypad.c"
	line	88
	global	__size_of_read_switches
	__size_of_read_switches	equ	__end_of_read_switches-_read_switches
	
_read_switches:
;incstack = 0
	opt	stack 28
;read_switches@detection_type stored from wreg
	movwf	((c:read_switches@detection_type)),c
	line	93
	
l4281:
;matrix_keypad.c: 90: static unsigned char once = 1;
;matrix_keypad.c: 91: char key, key1;
;matrix_keypad.c: 93: if (detection_type == 1)
		decf	((c:read_switches@detection_type)),c,w
	btfss	status,2
	goto	u3571
	goto	u3570

u3571:
	goto	l4301
u3570:
	line	95
	
l4283:
;matrix_keypad.c: 94: {
;matrix_keypad.c: 95: key = scan_key() ;
	call	_scan_key	;wreg free
	movwf	((c:read_switches@key)),c
	line	96
	
l4285:
;matrix_keypad.c: 96: if (key != 0xFF && once)
		incf	((c:read_switches@key)),c,w
	btfsc	status,2
	goto	u3581
	goto	u3580

u3581:
	goto	l4297
u3580:
	
l4287:
	movf	((c:read_switches@once)),c,w
	btfsc	status,2
	goto	u3591
	goto	u3590
u3591:
	goto	l4297
u3590:
	line	98
	
l4289:
;matrix_keypad.c: 97: {
;matrix_keypad.c: 98: key1 = key;
	movff	(c:read_switches@key),(c:read_switches@key1)
	line	99
	
l4291:
;matrix_keypad.c: 99: once = 0;
	movlw	low(0)
	movwf	((c:read_switches@once)),c
	line	100
;matrix_keypad.c: 100: return key1;
	movf	((c:read_switches@key1)),c,w
	goto	l248
	
l4293:
	goto	l248
	line	101
	
l4295:
;matrix_keypad.c: 101: }
	goto	l4307
	line	102
	
l247:
	
l4297:
;matrix_keypad.c: 102: else if(key == 0xFF)
		incf	((c:read_switches@key)),c,w
	btfss	status,2
	goto	u3601
	goto	u3600

u3601:
	goto	l4307
u3600:
	line	104
	
l4299:
;matrix_keypad.c: 103: {
;matrix_keypad.c: 104: once = 1;
	movlw	low(01h)
	movwf	((c:read_switches@once)),c
	goto	l4307
	line	105
	
l250:
	goto	l4307
	line	106
	
l249:
;matrix_keypad.c: 105: }
;matrix_keypad.c: 106: }
	goto	l4307
	line	107
	
l246:
	
l4301:
;matrix_keypad.c: 107: else if (detection_type == 0)
	movf	((c:read_switches@detection_type)),c,w
	btfss	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l4307
u3610:
	line	109
	
l4303:
;matrix_keypad.c: 108: {
;matrix_keypad.c: 109: return scan_key();
	call	_scan_key	;wreg free
	goto	l248
	
l4305:
	goto	l248
	line	113
	
l252:
	goto	l4307
	line	115
	
l251:
	
l4307:
;matrix_keypad.c: 113: }
;matrix_keypad.c: 115: return 0xFF;
	movlw	(0FFh)&0ffh
	goto	l248
	
l4309:
	line	116
	
l248:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_read_switches
	__end_of_read_switches:
	signat	_read_switches,4217
	global	_scan_key

;; *************** function _scan_key *****************
;; Defined at:
;;		line 18 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_switches
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	line	18
global __ptext34
__ptext34:
psect	text34
	file	"matrix_keypad.c"
	line	18
	global	__size_of_scan_key
	__size_of_scan_key	equ	__end_of_scan_key-_scan_key
	
_scan_key:
;incstack = 0
	opt	stack 28
	line	20
	
l4153:
;matrix_keypad.c: 20: RB5 = 0;
	bcf	c:(31757/8),(31757)&7	;volatile
	line	21
;matrix_keypad.c: 21: RB6 = 1;
	bsf	c:(31758/8),(31758)&7	;volatile
	line	22
;matrix_keypad.c: 22: RB7 = 1;
	bsf	c:(31759/8),(31759)&7	;volatile
	line	24
;matrix_keypad.c: 24: if (RB1 == 0)
	btfsc	c:(31753/8),(31753)&7	;volatile
	goto	u3401
	goto	u3400
u3401:
	goto	l220
u3400:
	line	26
	
l4155:
;matrix_keypad.c: 25: {
;matrix_keypad.c: 26: return 1;
	movlw	(01h)&0ffh
	goto	l221
	
l4157:
	goto	l221
	line	27
	
l4159:
;matrix_keypad.c: 27: }
	goto	l222
	line	28
	
l220:
;matrix_keypad.c: 28: else if (RB2 == 0)
	btfsc	c:(31754/8),(31754)&7	;volatile
	goto	u3411
	goto	u3410
u3411:
	goto	l223
u3410:
	line	30
	
l4161:
;matrix_keypad.c: 29: {
;matrix_keypad.c: 30: return 4;
	movlw	(04h)&0ffh
	goto	l221
	
l4163:
	goto	l221
	line	31
	
l4165:
;matrix_keypad.c: 31: }
	goto	l222
	line	32
	
l223:
;matrix_keypad.c: 32: else if (RB3 == 0)
	btfsc	c:(31755/8),(31755)&7	;volatile
	goto	u3421
	goto	u3420
u3421:
	goto	l225
u3420:
	line	34
	
l4167:
;matrix_keypad.c: 33: {
;matrix_keypad.c: 34: return 7;
	movlw	(07h)&0ffh
	goto	l221
	
l4169:
	goto	l221
	line	35
	
l4171:
;matrix_keypad.c: 35: }
	goto	l222
	line	36
	
l225:
;matrix_keypad.c: 36: else if (RB4 == 0)
	btfsc	c:(31756/8),(31756)&7	;volatile
	goto	u3431
	goto	u3430
u3431:
	goto	l222
u3430:
	line	38
	
l4173:
;matrix_keypad.c: 37: {
;matrix_keypad.c: 38: return 10;
	movlw	(0Ah)&0ffh
	goto	l221
	
l4175:
	goto	l221
	line	39
	
l227:
	goto	l222
	line	41
	
l226:
	goto	l222
	
l224:
	
l222:
;matrix_keypad.c: 39: }
;matrix_keypad.c: 41: RB5 = 1;
	bsf	c:(31757/8),(31757)&7	;volatile
	line	42
;matrix_keypad.c: 42: RB6 = 0;
	bcf	c:(31758/8),(31758)&7	;volatile
	line	43
;matrix_keypad.c: 43: RB7 = 1;
	bsf	c:(31759/8),(31759)&7	;volatile
	line	45
;matrix_keypad.c: 45: if (RB1 == 0)
	btfsc	c:(31753/8),(31753)&7	;volatile
	goto	u3441
	goto	u3440
u3441:
	goto	l228
u3440:
	line	47
	
l4177:
;matrix_keypad.c: 46: {
;matrix_keypad.c: 47: return 2;
	movlw	(02h)&0ffh
	goto	l221
	
l4179:
	goto	l221
	line	48
	
l4181:
;matrix_keypad.c: 48: }
	goto	l229
	line	49
	
l228:
;matrix_keypad.c: 49: else if (RB2 == 0)
	btfsc	c:(31754/8),(31754)&7	;volatile
	goto	u3451
	goto	u3450
u3451:
	goto	l230
u3450:
	line	51
	
l4183:
;matrix_keypad.c: 50: {
;matrix_keypad.c: 51: return 5;
	movlw	(05h)&0ffh
	goto	l221
	
l4185:
	goto	l221
	line	52
	
l4187:
;matrix_keypad.c: 52: }
	goto	l229
	line	53
	
l230:
;matrix_keypad.c: 53: else if (RB3 == 0)
	btfsc	c:(31755/8),(31755)&7	;volatile
	goto	u3461
	goto	u3460
u3461:
	goto	l232
u3460:
	line	55
	
l4189:
;matrix_keypad.c: 54: {
;matrix_keypad.c: 55: return 8;
	movlw	(08h)&0ffh
	goto	l221
	
l4191:
	goto	l221
	line	56
	
l4193:
;matrix_keypad.c: 56: }
	goto	l229
	line	57
	
l232:
;matrix_keypad.c: 57: else if (RB4 == 0)
	btfsc	c:(31756/8),(31756)&7	;volatile
	goto	u3471
	goto	u3470
u3471:
	goto	l229
u3470:
	line	59
	
l4195:
;matrix_keypad.c: 58: {
;matrix_keypad.c: 59: return 11;
	movlw	(0Bh)&0ffh
	goto	l221
	
l4197:
	goto	l221
	line	60
	
l234:
	goto	l229
	line	62
	
l233:
	goto	l229
	
l231:
	
l229:
;matrix_keypad.c: 60: }
;matrix_keypad.c: 62: RB5 = 1;
	bsf	c:(31757/8),(31757)&7	;volatile
	line	63
;matrix_keypad.c: 63: RB6 = 1;
	bsf	c:(31758/8),(31758)&7	;volatile
	line	64
;matrix_keypad.c: 64: RB7 = 0;
	bcf	c:(31759/8),(31759)&7	;volatile
	line	66
;matrix_keypad.c: 66: RB7 = 0;
	bcf	c:(31759/8),(31759)&7	;volatile
	line	68
;matrix_keypad.c: 68: if (RB1 == 0)
	btfsc	c:(31753/8),(31753)&7	;volatile
	goto	u3481
	goto	u3480
u3481:
	goto	l235
u3480:
	line	70
	
l4199:
;matrix_keypad.c: 69: {
;matrix_keypad.c: 70: return 3;
	movlw	(03h)&0ffh
	goto	l221
	
l4201:
	goto	l221
	line	71
	
l4203:
;matrix_keypad.c: 71: }
	goto	l4221
	line	72
	
l235:
;matrix_keypad.c: 72: else if (RB2 == 0)
	btfsc	c:(31754/8),(31754)&7	;volatile
	goto	u3491
	goto	u3490
u3491:
	goto	l237
u3490:
	line	74
	
l4205:
;matrix_keypad.c: 73: {
;matrix_keypad.c: 74: return 6;
	movlw	(06h)&0ffh
	goto	l221
	
l4207:
	goto	l221
	line	75
	
l4209:
;matrix_keypad.c: 75: }
	goto	l4221
	line	76
	
l237:
;matrix_keypad.c: 76: else if (RB3 == 0)
	btfsc	c:(31755/8),(31755)&7	;volatile
	goto	u3501
	goto	u3500
u3501:
	goto	l239
u3500:
	line	78
	
l4211:
;matrix_keypad.c: 77: {
;matrix_keypad.c: 78: return 9;
	movlw	(09h)&0ffh
	goto	l221
	
l4213:
	goto	l221
	line	79
	
l4215:
;matrix_keypad.c: 79: }
	goto	l4221
	line	80
	
l239:
;matrix_keypad.c: 80: else if (RB4 == 0)
	btfsc	c:(31756/8),(31756)&7	;volatile
	goto	u3511
	goto	u3510
u3511:
	goto	l4221
u3510:
	line	82
	
l4217:
;matrix_keypad.c: 81: {
;matrix_keypad.c: 82: return 12;
	movlw	(0Ch)&0ffh
	goto	l221
	
l4219:
	goto	l221
	line	83
	
l241:
	goto	l4221
	line	85
	
l240:
	goto	l4221
	
l238:
	goto	l4221
	
l236:
	
l4221:
;matrix_keypad.c: 83: }
;matrix_keypad.c: 85: return 0xFF;
	movlw	(0FFh)&0ffh
	goto	l221
	
l4223:
	line	86
	
l221:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_scan_key
	__end_of_scan_key:
	signat	_scan_key,89
	global	_delay_fun

;; *************** function _delay_fun *****************
;; Defined at:
;;		line 173 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2   18[COMRAM] int 
;;  j               2   16[COMRAM] int 
;;  i               2   14[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_password_change
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"main.c"
	line	173
global __ptext35
__ptext35:
psect	text35
	file	"main.c"
	line	173
	global	__size_of_delay_fun
	__size_of_delay_fun	equ	__end_of_delay_fun-_delay_fun
	
_delay_fun:
;incstack = 0
	opt	stack 27
	line	175
	
l4311:
;main.c: 175: for (int i = 0; i < 5000; ++i)
	movlw	high(0)
	movwf	((c:delay_fun@i+1)),c
	movlw	low(0)
	movwf	((c:delay_fun@i)),c
	
l4313:
	btfsc	((c:delay_fun@i+1)),c,7
	goto	u3621
	movlw	136
	subwf	 ((c:delay_fun@i)),c,w
	movlw	19
	subwfb	((c:delay_fun@i+1)),c,w
	btfss	status,0
	goto	u3621
	goto	u3620

u3621:
	goto	l4317
u3620:
	goto	l148
	
l4315:
	goto	l148
	line	176
	
l142:
	line	177
	
l4317:
;main.c: 176: {
;main.c: 177: for(int j = 0; j< 100; j++);
	movlw	high(0)
	movwf	((c:delay_fun@j+1)),c
	movlw	low(0)
	movwf	((c:delay_fun@j)),c
	
l4319:
	btfsc	((c:delay_fun@j+1)),c,7
	goto	u3631
	movf	((c:delay_fun@j+1)),c,w
	bnz	u3630
	movlw	100
	subwf	 ((c:delay_fun@j)),c,w
	btfss	status,0
	goto	u3631
	goto	u3630

u3631:
	goto	l4323
u3630:
	goto	l4327
	
l4321:
	goto	l4327
	
l144:
	
l4323:
	infsnz	((c:delay_fun@j)),c
	incf	((c:delay_fun@j+1)),c
	
l4325:
	btfsc	((c:delay_fun@j+1)),c,7
	goto	u3641
	movf	((c:delay_fun@j+1)),c,w
	bnz	u3640
	movlw	100
	subwf	 ((c:delay_fun@j)),c,w
	btfss	status,0
	goto	u3641
	goto	u3640

u3641:
	goto	l4323
u3640:
	goto	l4327
	
l145:
	line	178
	
l4327:
;main.c: 178: for(int k = 0; k< 100; k++);
	movlw	high(0)
	movwf	((c:delay_fun@k+1)),c
	movlw	low(0)
	movwf	((c:delay_fun@k)),c
	
l4329:
	btfsc	((c:delay_fun@k+1)),c,7
	goto	u3651
	movf	((c:delay_fun@k+1)),c,w
	bnz	u3650
	movlw	100
	subwf	 ((c:delay_fun@k)),c,w
	btfss	status,0
	goto	u3651
	goto	u3650

u3651:
	goto	l4333
u3650:
	goto	l4337
	
l4331:
	goto	l4337
	
l146:
	
l4333:
	infsnz	((c:delay_fun@k)),c
	incf	((c:delay_fun@k+1)),c
	
l4335:
	btfsc	((c:delay_fun@k+1)),c,7
	goto	u3661
	movf	((c:delay_fun@k+1)),c,w
	bnz	u3660
	movlw	100
	subwf	 ((c:delay_fun@k)),c,w
	btfss	status,0
	goto	u3661
	goto	u3660

u3661:
	goto	l4333
u3660:
	goto	l4337
	
l147:
	line	175
	
l4337:
	infsnz	((c:delay_fun@i)),c
	incf	((c:delay_fun@i+1)),c
	
l4339:
	btfsc	((c:delay_fun@i+1)),c,7
	goto	u3671
	movlw	136
	subwf	 ((c:delay_fun@i)),c,w
	movlw	19
	subwfb	((c:delay_fun@i+1)),c,w
	btfss	status,0
	goto	u3671
	goto	u3670

u3671:
	goto	l4317
u3670:
	goto	l148
	
l143:
	line	181
	
l148:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_delay_fun
	__end_of_delay_fun:
	signat	_delay_fun,89
	global	_clcd_putch

;; *************** function _clcd_putch *****************
;; Defined at:
;;		line 51 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     const unsigned char 
;;  addr            1   16[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   17[COMRAM] const unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_main
;;		_display_menu
;;		_password_change
;;		_view_log
;;		_password_compare
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"clcd.c"
	line	51
global __ptext36
__ptext36:
psect	text36
	file	"clcd.c"
	line	51
	global	__size_of_clcd_putch
	__size_of_clcd_putch	equ	__end_of_clcd_putch-_clcd_putch
	
_clcd_putch:
;incstack = 0
	opt	stack 27
;clcd_putch@data stored from wreg
	movwf	((c:clcd_putch@data)),c
	line	53
	
l4259:
;clcd.c: 53: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movf	((c:clcd_putch@addr)),c,w
	
	call	_clcd_write
	line	54
;clcd.c: 54: clcd_write(data, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit)),c
	movf	((c:clcd_putch@data)),c,w
	
	call	_clcd_write
	line	55
	
l58:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clcd_putch
	__end_of_clcd_putch:
	signat	_clcd_putch,8313
	global	_download_log

;; *************** function _download_log *****************
;; Defined at:
;;		line 11 in file "download_log.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  new1           16   17[COMRAM] unsigned char [16]
;;  i               2   35[COMRAM] short 
;;  j               2   33[COMRAM] short 
;; Return value:  Size  Location     Type
;;                  2  164[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        20       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        20       0       0       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_init_uart
;;		_puts
;;		_read_internal_eeprom
;; This function is called by:
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	file	"download_log.c"
	line	11
global __ptext37
__ptext37:
psect	text37
	file	"download_log.c"
	line	11
	global	__size_of_download_log
	__size_of_download_log	equ	__end_of_download_log-_download_log
	
_download_log:
;incstack = 0
	opt	stack 26
	line	13
	
l4759:
;download_log.c: 13: init_uart();
	call	_init_uart	;wreg free
	line	15
	
l4761:
;download_log.c: 15: short i, j = 0;
	movlw	high(0)
	movwf	((c:download_log@j+1)),c
	movlw	low(0)
	movwf	((c:download_log@j)),c
	line	21
	
l4763:
;download_log.c: 16: unsigned char new1[16];
;download_log.c: 21: puts("LOG DOWNLOADED.\n\r");
		movlw	low(STR_14)
	movwf	((c:puts@s)),c
	movlw	high(STR_14)
	movwf	((c:puts@s+1)),c

	call	_puts	;wreg free
	line	22
	
l4765:
;download_log.c: 22: puts("TIME     EVE  SPD");
		movlw	low(STR_15)
	movwf	((c:puts@s)),c
	movlw	high(STR_15)
	movwf	((c:puts@s+1)),c

	call	_puts	;wreg free
	goto	l4785
	line	24
;download_log.c: 24: while(1)
	
l384:
	line	27
;download_log.c: 25: {
;download_log.c: 27: while (j < 10)
	goto	l4785
	
l386:
	line	30
	
l4767:
;download_log.c: 28: {
;download_log.c: 30: for(i = 0; i < 16; i++)
	movlw	high(0)
	movwf	((c:download_log@i+1)),c
	movlw	low(0)
	movwf	((c:download_log@i)),c
	
l4769:
	btfsc	((c:download_log@i+1)),c,7
	goto	u4211
	movf	((c:download_log@i+1)),c,w
	bnz	u4210
	movlw	16
	subwf	 ((c:download_log@i)),c,w
	btfss	status,0
	goto	u4211
	goto	u4210

u4211:
	goto	l4773
u4210:
	goto	l4781
	
l4771:
	goto	l4781
	line	31
	
l387:
	line	32
	
l4773:
;download_log.c: 31: {
;download_log.c: 32: new1[i] = read_internal_eeprom(save);
	movlw	low(download_log@new1)
	addwf	((c:download_log@i)),c,w
	movwf	c:fsr2l
	movlw	high(download_log@new1)
	addwfc	((c:download_log@i+1)),c,w
	movwf	1+c:fsr2l
	movf	((c:_save)),c,w
	
	call	_read_internal_eeprom
	movwf	indf2,c

	line	33
	
l4775:
;download_log.c: 33: save++;
	infsnz	((c:_save)),c
	incf	((c:_save+1)),c
	line	30
	
l4777:
	infsnz	((c:download_log@i)),c
	incf	((c:download_log@i+1)),c
	
l4779:
	btfsc	((c:download_log@i+1)),c,7
	goto	u4221
	movf	((c:download_log@i+1)),c,w
	bnz	u4220
	movlw	16
	subwf	 ((c:download_log@i)),c,w
	btfss	status,0
	goto	u4221
	goto	u4220

u4221:
	goto	l4773
u4220:
	goto	l4781
	
l388:
	line	36
	
l4781:
;download_log.c: 34: }
;download_log.c: 36: puts(new1);
		movlw	low(download_log@new1)
	movwf	((c:puts@s)),c
	movlw	high(download_log@new1)
	movwf	((c:puts@s+1)),c

	call	_puts	;wreg free
	line	37
;download_log.c: 37: puts("\n\r");
		movlw	low(STR_16)
	movwf	((c:puts@s)),c
	movlw	high(STR_16)
	movwf	((c:puts@s+1)),c

	call	_puts	;wreg free
	line	38
	
l4783:
;download_log.c: 38: j++;
	infsnz	((c:download_log@j)),c
	incf	((c:download_log@j+1)),c
	goto	l4785
	line	39
	
l385:
	line	27
	
l4785:
	btfsc	((c:download_log@j+1)),c,7
	goto	u4231
	movf	((c:download_log@j+1)),c,w
	bnz	u4230
	movlw	10
	subwf	 ((c:download_log@j)),c,w
	btfss	status,0
	goto	u4231
	goto	u4230

u4231:
	goto	l4767
u4230:
	goto	l4787
	
l389:
	line	41
	
l4787:
;download_log.c: 39: }
;download_log.c: 41: if (save == 165)
		movlw	165
	xorwf	((c:_save)),c,w
iorwf	((c:_save+1)),c,w
	btfss	status,2
	goto	u4241
	goto	u4240

u4241:
	goto	l4785
u4240:
	line	43
	
l4789:
;download_log.c: 42: {
;download_log.c: 43: save = 5;
	movlw	high(05h)
	movwf	((c:_save+1)),c
	movlw	low(05h)
	movwf	((c:_save)),c
	goto	l391
	line	44
	
l4791:
;download_log.c: 44: return 1;
;	Return value of _download_log is never used
	goto	l391
	line	45
	
l390:
	goto	l4785
	line	46
	
l392:
	line	24
	goto	l4785
	
l393:
	line	49
;download_log.c: 45: }
;download_log.c: 46: }
;download_log.c: 48: return 1;
;	Return value of _download_log is never used
	
l391:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_download_log
	__end_of_download_log:
	signat	_download_log,90
	global	_read_internal_eeprom

;; *************** function _read_internal_eeprom *****************
;; Defined at:
;;		line 41 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_download_log
;;		_view_log
;;		_password_compare
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"eeprom.c"
	line	41
global __ptext38
__ptext38:
psect	text38
	file	"eeprom.c"
	line	41
	global	__size_of_read_internal_eeprom
	__size_of_read_internal_eeprom	equ	__end_of_read_internal_eeprom-_read_internal_eeprom
	
_read_internal_eeprom:
;incstack = 0
	opt	stack 28
;read_internal_eeprom@address stored from wreg
	movwf	((c:read_internal_eeprom@address)),c
	line	44
	
l4375:
;eeprom.c: 44: EEADR = address;
	movff	(c:read_internal_eeprom@address),(c:4009)	;volatile
	line	47
	
l4377:
;eeprom.c: 47: EECON1bits.WREN = 0;
	bcf	((c:4006)),c,2	;volatile
	line	50
	
l4379:
;eeprom.c: 50: EECON1bits.EEPGD = 0;
	bcf	((c:4006)),c,7	;volatile
	line	53
	
l4381:
;eeprom.c: 53: EECON1bits.CFGS = 0;
	bcf	((c:4006)),c,6	;volatile
	line	56
	
l4383:
;eeprom.c: 56: EECON1bits.RD = 1;
	bsf	((c:4006)),c,0	;volatile
	line	59
	
l4385:
;eeprom.c: 59: return EEDATA;
	movf	((c:4008)),c,w	;volatile
	goto	l621
	
l4387:
	line	60
	
l621:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_read_internal_eeprom
	__end_of_read_internal_eeprom:
	signat	_read_internal_eeprom,4217
	global	_puts

;; *************** function _puts *****************
;; Defined at:
;;		line 90 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  s               2   15[COMRAM] PTR const unsigned char 
;;		 -> STR_16(3), download_log@new1(16), STR_15(18), STR_14(18), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   15[COMRAM] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_putch
;; This function is called by:
;;		_download_log
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	file	"uart.c"
	line	90
global __ptext39
__ptext39:
psect	text39
	file	"uart.c"
	line	90
	global	__size_of_puts
	__size_of_puts	equ	__end_of_puts-_puts
	
_puts:
;incstack = 0
	opt	stack 26
	line	92
	
l4367:
;uart.c: 92: while(*s)
	goto	l4373
	
l362:
	line	94
	
l4369:
;uart.c: 93: {
;uart.c: 94: putch(*s++);
	movff	(c:puts@s),tblptrl
	movff	(c:puts@s+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u3687
	tblrd	*
	
	movf	tablat,w
	bra	u3680
u3687:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u3680:
	
	call	_putch
	
l4371:
	infsnz	((c:puts@s)),c
	incf	((c:puts@s+1)),c
	goto	l4373
	line	95
	
l361:
	line	92
	
l4373:
	movff	(c:puts@s),tblptrl
	movff	(c:puts@s+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u3697
	tblrd	*
	
	movf	tablat,w
	bra	u3690
u3697:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u3690:
	iorlw	0
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l4369
u3700:
	goto	l364
	
l363:
	line	98
;uart.c: 95: }
;uart.c: 97: return 0;
;	Return value of _puts is never used
	
l364:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_puts
	__end_of_puts:
	signat	_puts,4218
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 79 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_puts
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
	line	79
global __ptext40
__ptext40:
psect	text40
	file	"uart.c"
	line	79
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:
;incstack = 0
	opt	stack 26
;putch@byte stored from wreg
	movwf	((c:putch@byte)),c
	line	83
	
l4225:
;uart.c: 83: while(!TXIF)
	goto	l355
	
l356:
	line	86
;uart.c: 84: {
;uart.c: 85: continue;
	
l355:
	line	83
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u3521
	goto	u3520
u3521:
	goto	l355
u3520:
	goto	l4227
	
l357:
	line	87
	
l4227:
;uart.c: 86: }
;uart.c: 87: TXREG = byte;
	movff	(c:putch@byte),(c:4013)	;volatile
	line	88
	
l358:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_init_uart

;; *************** function _init_uart *****************
;; Defined at:
;;		line 4 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_download_log
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
	line	4
global __ptext41
__ptext41:
psect	text41
	file	"uart.c"
	line	4
	global	__size_of_init_uart
	__size_of_init_uart	equ	__end_of_init_uart-_init_uart
	
_init_uart:
;incstack = 0
	opt	stack 27
	line	7
	
l4355:
;uart.c: 7: TRISC7 = 1;
	bsf	c:(31911/8),(31911)&7	;volatile
	line	8
;uart.c: 8: TRISC6 = 0;
	bcf	c:(31910/8),(31910)&7	;volatile
	line	13
;uart.c: 13: CSRC = 0;
	bcf	c:(32103/8),(32103)&7	;volatile
	line	15
;uart.c: 15: TX9 = 0;
	bcf	c:(32102/8),(32102)&7	;volatile
	line	17
;uart.c: 17: TXEN = 1;
	bsf	c:(32101/8),(32101)&7	;volatile
	line	20
;uart.c: 20: SYNC = 0;
	bcf	c:(32100/8),(32100)&7	;volatile
	line	22
;uart.c: 22: SENDB = 0;
	bcf	c:(32099/8),(32099)&7	;volatile
	line	25
;uart.c: 25: BRGH = 1;
	bsf	c:(32098/8),(32098)&7	;volatile
	line	27
;uart.c: 27: TRMT = 0;
	bcf	c:(32097/8),(32097)&7	;volatile
	line	29
;uart.c: 29: TX9D = 0;
	bcf	c:(32096/8),(32096)&7	;volatile
	line	34
;uart.c: 34: SPEN = 1;
	bsf	c:(32095/8),(32095)&7	;volatile
	line	36
;uart.c: 36: RX9 = 0;
	bcf	c:(32094/8),(32094)&7	;volatile
	line	38
;uart.c: 38: SREN = 0;
	bcf	c:(32093/8),(32093)&7	;volatile
	line	40
;uart.c: 40: CREN = 1;
	bsf	c:(32092/8),(32092)&7	;volatile
	line	42
;uart.c: 42: ADDEN = 0;
	bcf	c:(32091/8),(32091)&7	;volatile
	line	44
;uart.c: 44: FERR = 0;
	bcf	c:(32090/8),(32090)&7	;volatile
	line	46
;uart.c: 46: OERR = 0;
	bcf	c:(32089/8),(32089)&7	;volatile
	line	48
;uart.c: 48: RX9D = 0;
	bcf	c:(32088/8),(32088)&7	;volatile
	line	53
;uart.c: 53: ABDOVF = 0;
	bcf	c:(32199/8),(32199)&7	;volatile
	line	55
;uart.c: 55: RCIDL = 1;
	bsf	c:(32198/8),(32198)&7	;volatile
	line	57
;uart.c: 57: SCKP = 0;
	bcf	c:(32196/8),(32196)&7	;volatile
	line	59
;uart.c: 59: BRG16 = 0;
	bcf	c:(32195/8),(32195)&7	;volatile
	line	61
;uart.c: 61: WUE = 0;
	bcf	c:(32193/8),(32193)&7	;volatile
	line	63
;uart.c: 63: ABDEN = 0;
	bcf	c:(32192/8),(32192)&7	;volatile
	line	67
	
l4357:
;uart.c: 67: SPBRG = 10;
	movlw	low(0Ah)
	movwf	((c:4015)),c	;volatile
	line	70
	
l4359:
;uart.c: 70: TXIE = 1;
	bsf	c:(31980/8),(31980)&7	;volatile
	line	72
	
l4361:
;uart.c: 72: TXIF = 0;
	bcf	c:(31988/8),(31988)&7	;volatile
	line	74
	
l4363:
;uart.c: 74: RCIE = 1;
	bsf	c:(31981/8),(31981)&7	;volatile
	line	76
	
l4365:
;uart.c: 76: RCIF = 0;
	bcf	c:(31989/8),(31989)&7	;volatile
	line	77
	
l352:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_uart
	__end_of_init_uart:
	signat	_init_uart,89
	global	_clear_log

;; *************** function _clear_log *****************
;; Defined at:
;;		line 10 in file "clear_log.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  address         2   16[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2  166[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_write_internal_eeprom
;; This function is called by:
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
	file	"clear_log.c"
	line	10
global __ptext42
__ptext42:
psect	text42
	file	"clear_log.c"
	line	10
	global	__size_of_clear_log
	__size_of_clear_log	equ	__end_of_clear_log-_clear_log
	
_clear_log:
;incstack = 0
	opt	stack 27
	line	13
	
l4793:
;clear_log.c: 13: int address = 0x05;
	movlw	high(05h)
	movwf	((c:clear_log@address+1)),c
	movlw	low(05h)
	movwf	((c:clear_log@address)),c
	line	16
;clear_log.c: 16: while( address != 0xA5)
	goto	l4799
	
l473:
	line	18
	
l4795:
;clear_log.c: 17: {
;clear_log.c: 18: write_internal_eeprom(address, 0);
	movlw	low(0)
	movwf	((c:write_internal_eeprom@data)),c
	movf	((c:clear_log@address)),c,w
	
	call	_write_internal_eeprom
	line	19
	
l4797:
;clear_log.c: 19: address++;
	infsnz	((c:clear_log@address)),c
	incf	((c:clear_log@address+1)),c
	goto	l4799
	line	20
	
l472:
	line	16
	
l4799:
		movlw	165
	xorwf	((c:clear_log@address)),c,w
iorwf	((c:clear_log@address+1)),c,w
	btfss	status,2
	goto	u4251
	goto	u4250

u4251:
	goto	l4795
u4250:
	goto	l4801
	
l474:
	line	21
	
l4801:
;clear_log.c: 20: }
;clear_log.c: 21: e_address = 0x05;
	movlw	high(05h)
	movwf	((c:_e_address+1)),c
	movlw	low(05h)
	movwf	((c:_e_address)),c
	goto	l475
	line	22
	
l4803:
	line	23
;clear_log.c: 22: return 1;
;	Return value of _clear_log is never used
	
l475:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clear_log
	__end_of_clear_log:
	signat	_clear_log,90
	global	_write_internal_eeprom

;; *************** function _write_internal_eeprom *****************
;; Defined at:
;;		line 4 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1   14[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_password_change
;;		_save_events
;;		_clear_log
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2
	file	"eeprom.c"
	line	4
global __ptext43
__ptext43:
psect	text43
	file	"eeprom.c"
	line	4
	global	__size_of_write_internal_eeprom
	__size_of_write_internal_eeprom	equ	__end_of_write_internal_eeprom-_write_internal_eeprom
	
_write_internal_eeprom:
;incstack = 0
	opt	stack 29
;write_internal_eeprom@address stored from wreg
	movwf	((c:write_internal_eeprom@address)),c
	line	7
	
l4261:
;eeprom.c: 7: EEADR = address;
	movff	(c:write_internal_eeprom@address),(c:4009)	;volatile
	line	10
	
l4263:
;eeprom.c: 10: EEDATA = data;
	movff	(c:write_internal_eeprom@data),(c:4008)	;volatile
	line	13
	
l4265:
;eeprom.c: 13: EECON1bits.EEPGD = 0;
	bcf	((c:4006)),c,7	;volatile
	line	16
	
l4267:
;eeprom.c: 16: EECON1bits.CFGS = 0;
	bcf	((c:4006)),c,6	;volatile
	line	19
	
l4269:
;eeprom.c: 19: EECON1bits.WREN = 1;
	bsf	((c:4006)),c,2	;volatile
	line	22
	
l4271:
;eeprom.c: 22: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	25
	
l4273:
;eeprom.c: 25: EECON2 = 0x55;
	movlw	low(055h)
	movwf	((c:4007)),c	;volatile
	line	26
	
l4275:
;eeprom.c: 26: EECON2 = 0xAA;
	movlw	low(0AAh)
	movwf	((c:4007)),c	;volatile
	line	29
	
l4277:
;eeprom.c: 29: EECON1bits.WR = 1;
	bsf	((c:4006)),c,1	;volatile
	line	32
	
l4279:
;eeprom.c: 32: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	35
;eeprom.c: 35: while (!PIR2bits.EEIF);
	goto	l615
	
l616:
	
l615:
	btfss	((c:4001)),c,4	;volatile
	goto	u3561
	goto	u3560
u3561:
	goto	l615
u3560:
	
l617:
	line	38
;eeprom.c: 38: PIR2bits.EEIF = 0;
	bcf	((c:4001)),c,4	;volatile
	line	39
	
l618:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_write_internal_eeprom
	__end_of_write_internal_eeprom:
	signat	_write_internal_eeprom,8313
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.36/sources/common/awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] int 
;;  divisor         2   16[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   19[COMRAM] unsigned char 
;;  counter         1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.36/sources/common/awmod.c"
	line	8
global __ptext44
__ptext44:
psect	text44
	file	"/opt/microchip/xc8/v1.36/sources/common/awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:
;incstack = 0
	opt	stack 29
	line	13
	
l3873:
	movlw	low(0)
	movwf	((c:___awmod@sign)),c
	line	14
	
l3875:
	btfsc	((c:___awmod@dividend+1)),c,7
	goto	u3070
	goto	u3071

u3071:
	goto	l3881
u3070:
	line	15
	
l3877:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	line	16
	
l3879:
	movlw	low(01h)
	movwf	((c:___awmod@sign)),c
	goto	l3881
	line	17
	
l934:
	line	18
	
l3881:
	btfsc	((c:___awmod@divisor+1)),c,7
	goto	u3080
	goto	u3081

u3081:
	goto	l3885
u3080:
	line	19
	
l3883:
	negf	((c:___awmod@divisor)),c
	comf	((c:___awmod@divisor+1)),c
	btfsc	status,0
	incf	((c:___awmod@divisor+1)),c
	goto	l3885
	
l935:
	line	20
	
l3885:
	movf	((c:___awmod@divisor)),c,w
iorwf	((c:___awmod@divisor+1)),c,w
	btfsc	status,2
	goto	u3091
	goto	u3090

u3091:
	goto	l3901
u3090:
	line	21
	
l3887:
	movlw	low(01h)
	movwf	((c:___awmod@counter)),c
	line	22
	goto	l3891
	
l938:
	line	23
	
l3889:
	bcf	status,0
	rlcf	((c:___awmod@divisor)),c
	rlcf	((c:___awmod@divisor+1)),c
	line	24
	incf	((c:___awmod@counter)),c
	goto	l3891
	line	25
	
l937:
	line	22
	
l3891:
	
	btfss	((c:___awmod@divisor+1)),c,(15)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l3889
u3100:
	goto	l3893
	
l939:
	goto	l3893
	line	26
	
l940:
	line	27
	
l3893:
		movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c,w
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c,w
	btfss	status,0
	goto	u3111
	goto	u3110

u3111:
	goto	l3897
u3110:
	line	28
	
l3895:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c

	goto	l3897
	
l941:
	line	29
	
l3897:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1)),c
	rrcf	((c:___awmod@divisor)),c
	line	30
	
l3899:
	decfsz	((c:___awmod@counter)),c
	
	goto	l3893
	goto	l3901
	
l942:
	goto	l3901
	line	31
	
l936:
	line	32
	
l3901:
	movf	((c:___awmod@sign)),c,w
	btfsc	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l3905
u3120:
	line	33
	
l3903:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	goto	l3905
	
l943:
	line	34
	
l3905:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	goto	l944
	
l3907:
	line	35
	
l944:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.36/sources/common/awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] int 
;;  divisor         2   16[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   20[COMRAM] int 
;;  sign            1   19[COMRAM] unsigned char 
;;  counter         1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.36/sources/common/awdiv.c"
	line	8
global __ptext45
__ptext45:
psect	text45
	file	"/opt/microchip/xc8/v1.36/sources/common/awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 29
	line	14
	
l3829:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l3831:
	btfsc	((c:___awdiv@divisor+1)),c,7
	goto	u3010
	goto	u3011

u3011:
	goto	l3837
u3010:
	line	16
	
l3833:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l3835:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l3837
	line	18
	
l921:
	line	19
	
l3837:
	btfsc	((c:___awdiv@dividend+1)),c,7
	goto	u3020
	goto	u3021

u3021:
	goto	l3843
u3020:
	line	20
	
l3839:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l3841:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l3843
	line	22
	
l922:
	line	23
	
l3843:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l3845:
	movf	((c:___awdiv@divisor)),c,w
iorwf	((c:___awdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u3031
	goto	u3030

u3031:
	goto	l3865
u3030:
	line	25
	
l3847:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l3851
	
l925:
	line	27
	
l3849:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l3851
	line	29
	
l924:
	line	26
	
l3851:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l3849
u3040:
	goto	l3853
	
l926:
	goto	l3853
	line	30
	
l927:
	line	31
	
l3853:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l3855:
		movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u3051
	goto	u3050

u3051:
	goto	l3861
u3050:
	line	33
	
l3857:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l3859:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l3861
	line	35
	
l928:
	line	36
	
l3861:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l3863:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l3853
	goto	l3865
	
l929:
	goto	l3865
	line	38
	
l923:
	line	39
	
l3865:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l3869
u3060:
	line	40
	
l3867:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l3869
	
l930:
	line	41
	
l3869:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l931
	
l3871:
	line	42
	
l931:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_ON_OFF_up_down_gear

;; *************** function _ON_OFF_up_down_gear *****************
;; Defined at:
;;		line 100 in file "adc.c"
;; Parameters:    Size  Location     Type
;;  gear            2   19[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_clcd_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2
	file	"adc.c"
	line	100
global __ptext46
__ptext46:
psect	text46
	file	"adc.c"
	line	100
	global	__size_of_ON_OFF_up_down_gear
	__size_of_ON_OFF_up_down_gear	equ	__end_of_ON_OFF_up_down_gear-_ON_OFF_up_down_gear
	
_ON_OFF_up_down_gear:
;incstack = 0
	opt	stack 27
	line	102
	
l5031:
;adc.c: 102: switch (gear)
	goto	l5071
	line	104
;adc.c: 103: {
;adc.c: 104: case 1:
	
l744:
	line	105
	
l5033:
;adc.c: 105: clcd_print("GR ", (0xC0 + (9)));
		movlw	low(STR_31)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_31)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C9h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	106
	
l5035:
;adc.c: 106: save_array[10] = 'R';
	movlw	low(052h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Ah))&0ffh
	line	107
	
l5037:; BSR set to: 0

;adc.c: 107: save_array[9] = 'G';
	movlw	low(047h)
	movlb	0	; () banked
	movwf	(0+(_save_array+09h))&0ffh
	line	108
	
l5039:; BSR set to: 0

;adc.c: 108: save_array[11] = ' ';
	movlw	low(020h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Bh))&0ffh
	line	111
;adc.c: 111: break;
	goto	l5073
	line	112
;adc.c: 112: case 2:
	
l746:; BSR set to: 0

	line	113
	
l5041:
;adc.c: 113: clcd_print("GN ", (0xC0 + (9)));
		movlw	low(STR_32)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_32)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C9h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	114
	
l5043:
;adc.c: 114: save_array[9] = 'G';
	movlw	low(047h)
	movlb	0	; () banked
	movwf	(0+(_save_array+09h))&0ffh
	line	115
	
l5045:; BSR set to: 0

;adc.c: 115: save_array[10] = 'N';
	movlw	low(04Eh)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Ah))&0ffh
	line	116
	
l5047:; BSR set to: 0

;adc.c: 116: save_array[11] = ' ';
	movlw	low(020h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Bh))&0ffh
	line	118
;adc.c: 118: break;
	goto	l5073
	line	119
;adc.c: 119: case 3:
	
l747:; BSR set to: 0

	line	120
	
l5049:
;adc.c: 120: save_array[10] = '1';
	movlw	low(031h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Ah))&0ffh
	line	121
;adc.c: 121: save_array[9] = 'G';
	movlw	low(047h)
	movlb	0	; () banked
	movwf	(0+(_save_array+09h))&0ffh
	line	122
;adc.c: 122: save_array[11] = ' ';
	movlw	low(020h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Bh))&0ffh
	line	124
	
l5051:; BSR set to: 0

;adc.c: 124: clcd_print("G1 ", (0xC0 + (9)));
		movlw	low(STR_33)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_33)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C9h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	125
;adc.c: 125: break;
	goto	l5073
	line	126
;adc.c: 126: case 4:
	
l748:
	line	127
	
l5053:
;adc.c: 127: save_array[10] = '2';
	movlw	low(032h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Ah))&0ffh
	line	128
;adc.c: 128: save_array[9] = 'G';
	movlw	low(047h)
	movlb	0	; () banked
	movwf	(0+(_save_array+09h))&0ffh
	line	129
;adc.c: 129: save_array[11] = ' ';
	movlw	low(020h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Bh))&0ffh
	line	131
	
l5055:; BSR set to: 0

;adc.c: 131: clcd_print("G2 ", (0xC0 + (9)));
		movlw	low(STR_34)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_34)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C9h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	132
;adc.c: 132: break;
	goto	l5073
	line	133
;adc.c: 133: case 5:
	
l749:
	line	134
	
l5057:
;adc.c: 134: save_array[9] = 'G';
	movlw	low(047h)
	movlb	0	; () banked
	movwf	(0+(_save_array+09h))&0ffh
	line	135
;adc.c: 135: save_array[10] = '3';
	movlw	low(033h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Ah))&0ffh
	line	136
;adc.c: 136: save_array[11] = ' ';
	movlw	low(020h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Bh))&0ffh
	line	138
	
l5059:; BSR set to: 0

;adc.c: 138: clcd_print("G3 ", (0xC0 + (9)));
		movlw	low(STR_35)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_35)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C9h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	139
;adc.c: 139: break;
	goto	l5073
	line	140
;adc.c: 140: case 6:
	
l750:
	line	141
	
l5061:
;adc.c: 141: save_array[9] = 'G';
	movlw	low(047h)
	movlb	0	; () banked
	movwf	(0+(_save_array+09h))&0ffh
	line	142
;adc.c: 142: save_array[10] = '4';
	movlw	low(034h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Ah))&0ffh
	line	143
;adc.c: 143: save_array[11] = ' ';
	movlw	low(020h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Bh))&0ffh
	line	145
	
l5063:; BSR set to: 0

;adc.c: 145: clcd_print("G4 ", (0xC0 + (9)));
		movlw	low(STR_36)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_36)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C9h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	146
;adc.c: 146: break;
	goto	l5073
	line	148
;adc.c: 148: case 10:
	
l751:
	line	149
	
l5065:
;adc.c: 149: save_array[9] = 'O';
	movlw	low(04Fh)
	movlb	0	; () banked
	movwf	(0+(_save_array+09h))&0ffh
	line	150
;adc.c: 150: save_array[10] = 'N';
	movlw	low(04Eh)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Ah))&0ffh
	line	151
;adc.c: 151: save_array[11] = 32;
	movlw	low(020h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Bh))&0ffh
	line	152
;adc.c: 152: break;
	goto	l5073
	line	154
;adc.c: 154: case 11:
	
l752:; BSR set to: 0

	line	155
	
l5067:
;adc.c: 155: save_array[9] = 'O';
	movlw	low(04Fh)
	movlb	0	; () banked
	movwf	(0+(_save_array+09h))&0ffh
	line	156
;adc.c: 156: save_array[10] = 'F';
	movlw	low(046h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Ah))&0ffh
	line	157
;adc.c: 157: save_array[11] = 'F';
	movlw	low(046h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Bh))&0ffh
	line	158
;adc.c: 158: break;
	goto	l5073
	line	159
	
l5069:; BSR set to: 0

;adc.c: 159: }
	goto	l5073
	line	102
	
l743:; BSR set to: 0

	
l5071:
	movff	(c:ON_OFF_up_down_gear@gear),??_ON_OFF_up_down_gear+0+0
	movff	(c:ON_OFF_up_down_gear@gear+1),??_ON_OFF_up_down_gear+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_ON_OFF_up_down_gear+0+1,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l5305
	goto	l5073
	
l5305:
; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 11
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
;	Chosen strategy is simple_byte

	movf ??_ON_OFF_up_down_gear+0+0,c,w
	xorlw	1^0	; case 1
	skipnz
	goto	l5033
	xorlw	2^1	; case 2
	skipnz
	goto	l5041
	xorlw	3^2	; case 3
	skipnz
	goto	l5049
	xorlw	4^3	; case 4
	skipnz
	goto	l5053
	xorlw	5^4	; case 5
	skipnz
	goto	l5057
	xorlw	6^5	; case 6
	skipnz
	goto	l5061
	xorlw	10^6	; case 10
	skipnz
	goto	l5065
	xorlw	11^10	; case 11
	skipnz
	goto	l5067
	goto	l5073

	line	159
	
l745:
	line	160
	
l5073:
;adc.c: 160: save_array[8] = ' ';
	movlw	low(020h)
	movlb	0	; () banked
	movwf	(0+(_save_array+08h))&0ffh
	line	161
;adc.c: 161: save_array[12] = ' ';
	movlw	low(020h)
	movlb	0	; () banked
	movwf	(0+(_save_array+0Ch))&0ffh
	line	162
	
l753:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_ON_OFF_up_down_gear
	__end_of_ON_OFF_up_down_gear:
	signat	_ON_OFF_up_down_gear,4217
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 42 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            2   16[COMRAM] PTR const unsigned char 
;;		 -> STR_36(4), STR_35(4), STR_34(4), STR_33(4), 
;;		 -> STR_32(4), STR_31(4), display_speed@buff(5), n_time(9), 
;;		 -> STR_30(9), STR_29(16), STR_28(19), STR_27(16), 
;;		 -> STR_26(19), STR_25(18), STR_24(15), STR_23(15), 
;;		 -> STR_22(24), STR_21(16), STR_20(13), STR_19(16), 
;;		 -> STR_18(23), STR_17(19), date(11), time(9), 
;;		 -> STR_13(6), STR_12(9), STR_11(9), STR_10(16), 
;;		 -> STR_9(9), STR_8(5), STR_7(4), STR_6(4), 
;;		 -> STR_5(8), STR_4(5), save_array(17), STR_3(4), 
;;		 -> STR_2(4), STR_1(5), 
;;  addr            1   18[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_main
;;		_display_menu
;;		_display_time
;;		_password_change
;;		_view_log
;;		_password_compare
;;		_set_time
;;		_display_speed
;;		_ON_OFF_up_down_gear
;;		_display_date
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2
	file	"clcd.c"
	line	42
global __ptext47
__ptext47:
psect	text47
	file	"clcd.c"
	line	42
	global	__size_of_clcd_print
	__size_of_clcd_print	equ	__end_of_clcd_print-_clcd_print
	
_clcd_print:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	44
	
l4251:
;clcd.c: 44: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movf	((c:clcd_print@addr)),c,w
	
	call	_clcd_write
	line	45
;clcd.c: 45: while (*data != '\0')
	goto	l4257
	
l53:
	line	47
	
l4253:
;clcd.c: 46: {
;clcd.c: 47: clcd_write(*data++, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit)),c
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u3537
	tblrd	*
	
	movf	tablat,w
	bra	u3530
u3537:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u3530:
	
	call	_clcd_write
	
l4255:
	infsnz	((c:clcd_print@data)),c
	incf	((c:clcd_print@data+1)),c
	goto	l4257
	line	48
	
l52:
	line	45
	
l4257:
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u3547
	tblrd	*
	
	movf	tablat,w
	bra	u3540
u3547:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u3540:
	iorlw	0
	btfss	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l4253
u3550:
	goto	l55
	
l54:
	line	49
	
l55:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clcd_print
	__end_of_clcd_print:
	signat	_clcd_print,8313
	global	_clcd_write

;; *************** function _clcd_write *****************
;; Defined at:
;;		line 4 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;;  control_bit     1   14[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_clcd
;;		_clcd_print
;;		_clcd_putch
;;		_main
;;		_display_menu
;;		_password_change
;;		_view_log
;;		_password_compare
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2
	line	4
global __ptext48
__ptext48:
psect	text48
	file	"clcd.c"
	line	4
	global	__size_of_clcd_write
	__size_of_clcd_write	equ	__end_of_clcd_write-_clcd_write
	
_clcd_write:
;incstack = 0
	opt	stack 28
;clcd_write@byte stored from wreg
	movwf	((c:clcd_write@byte)),c
	line	6
	
l4133:
;clcd.c: 6: RC1 = control_bit;
	btfsc	((c:clcd_write@control_bit)),c,0
	goto	u3371
	goto	u3370
u3371:
	bsf	c:(31761/8),(31761)&7	;volatile
	goto	u3385
u3370:
	bcf	c:(31761/8),(31761)&7	;volatile
u3385:
	line	7
	
l4135:
;clcd.c: 7: PORTD = byte;
	movff	(c:clcd_write@byte),(c:3971)	;volatile
	line	10
	
l4137:
;clcd.c: 10: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	11
	
l4139:
;clcd.c: 11: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	13
	
l4141:
;clcd.c: 13: TRISD7 = 0xFF;
	bsf	c:(31919/8),(31919)&7	;volatile
	line	14
	
l4143:
;clcd.c: 14: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	15
	
l4145:
;clcd.c: 15: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	goto	l4147
	line	17
;clcd.c: 17: do
	
l44:
	line	19
	
l4147:
;clcd.c: 18: {
;clcd.c: 19: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	20
	
l4149:
;clcd.c: 20: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	21
	
l4151:
;clcd.c: 21: } while (RD7);
	btfsc	c:(31775/8),(31775)&7	;volatile
	goto	u3391
	goto	u3390
u3391:
	goto	l4147
u3390:
	
l45:
	line	23
;clcd.c: 23: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	24
;clcd.c: 24: TRISD7 = 0x00;
	bcf	c:(31919/8),(31919)&7	;volatile
	line	25
	
l46:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 4 in file "isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"isr.c"
	line	4
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:
;incstack = 0
	opt	stack 24
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	movff	pclat+0,??_isr+0
	movff	pclat+1,??_isr+1
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0l+0,??_isr+2
	movff	fsr0h+0,??_isr+3
	movff	fsr1l+0,??_isr+4
	movff	fsr1h+0,??_isr+5
	movff	fsr2l+0,??_isr+6
	movff	fsr2h+0,??_isr+7
	movff	prodl+0,??_isr+8
	movff	prodh+0,??_isr+9
	movff	tblptrl+0,??_isr+10
	movff	tblptrh+0,??_isr+11
	movff	tblptru+0,??_isr+12
	movff	tablat+0,??_isr+13
	line	8
	
i2l3909:
;isr.c: 6: static unsigned short count;
;isr.c: 8: if (TMR0IF)
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u313_41
	goto	i2u313_40
i2u313_41:
	goto	i2l25
i2u313_40:
	line	10
	
i2l3911:
;isr.c: 9: {
;isr.c: 10: TMR0 = TMR0 + 8;
	movlw	low(08h)
	addwf	((c:4054)),c,w	;volatile
	movwf	((c:4054)),c	;volatile
	movlw	high(08h)
	addwfc	((c:4054+1)),c,w	;volatile
	movwf	1+((c:4054)),c	;volatile
	line	12
;isr.c: 12: if (count++ == 20000)
	movlb	0	; () banked
	infsnz	((isr@count))&0ffh
	incf	((isr@count+1))&0ffh
		movlw	33
	movlb	0	; () banked
	xorwf	((isr@count))&0ffh,w
	bnz	i2u314_41
	movlw	78
	movlb	0	; () banked
	xorwf	((isr@count+1))&0ffh,w
	btfss	status,2
	goto	i2u314_41
	goto	i2u314_40

i2u314_41:
	goto	i2l3919
i2u314_40:
	line	14
	
i2l3913:; BSR set to: 0

;isr.c: 13: {
;isr.c: 14: flag--;
	decf	((c:_flag)),c
	btfss	status,0
	decf	((c:_flag+1)),c
	line	15
	
i2l3915:; BSR set to: 0

;isr.c: 15: if (flag <= 0)
	btfsc	((c:_flag+1)),c,7
	goto	i2u315_40
	movf	((c:_flag+1)),c,w
	bnz	i2u315_41
	decf	((c:_flag)),c,w
	btfsc	status,0
	goto	i2u315_41
	goto	i2u315_40

i2u315_41:
	goto	i2l3919
i2u315_40:
	line	17
	
i2l3917:; BSR set to: 0

;isr.c: 16: {
;isr.c: 17: flag = 0;
	movlw	high(0)
	movwf	((c:_flag+1)),c
	movlw	low(0)
	movwf	((c:_flag)),c
	goto	i2l3919
	line	18
	
i2l24:; BSR set to: 0

	goto	i2l3919
	line	20
	
i2l23:; BSR set to: 0

	line	22
	
i2l3919:; BSR set to: 0

;isr.c: 18: }
;isr.c: 20: }
;isr.c: 22: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l25
	line	23
	
i2l22:; BSR set to: 0

	line	24
	
i2l25:
	movff	??_isr+13,tablat+0
	movff	??_isr+12,tblptru+0
	movff	??_isr+11,tblptrh+0
	movff	??_isr+10,tblptrl+0
	movff	??_isr+9,prodh+0
	movff	??_isr+8,prodl+0
	movff	??_isr+7,fsr2h+0
	movff	??_isr+6,fsr2l+0
	movff	??_isr+5,fsr1h+0
	movff	??_isr+4,fsr1l+0
	movff	??_isr+3,fsr0h+0
	movff	??_isr+2,fsr0l+0
	movff	??_isr+1,pclat+1
	movff	??_isr+0,pclat+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
psect	mediumconst
	db 0	; dummy byte at the end
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	end
