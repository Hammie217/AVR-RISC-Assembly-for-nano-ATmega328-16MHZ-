;Turn inbuilt LED 'L' (D13,pb05) on and off

.equ	PORTB	= 0x05
.equ	DDRB	= 0x04

	ldi r16,0b00100000
    ldi r17,0b00000000
	out DDRB,r16

Start:
    out PortB,r16
    rcall DELAY
    out PortB,r17
    rcall DELAY
	rjmp Start

DELAY:
    ldi r20, 250 ; how many sets of 4ms (250 for 1 second)
L2:
    ldi  r18, 84
    clr  r19
L1: inc  r19
    brne L1
    dec  r18
    brne L1
    dec  r20
    brne L2
ret



