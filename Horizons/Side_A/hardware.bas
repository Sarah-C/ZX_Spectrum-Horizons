Check F19D286A
Auto 8224

# Run-time Variables

Var z: Num = 0
Var y: Num = 176
Var x: Num = 40
Var a: Num = 23310
Var bp: Num = 0
Var ys: Num = 2
Var xs: Num = 1
Var cs: Num = 8
Var i: NumFOR = 23, 22, 1, 9400, 9
Var d$: Str = "and then press any key"
Var e$: StrArray(128) = "                                                                                                                                "

# End Run-time Variables

  10 PAPER 6: CLS
 100 BORDER 6: PAPER 8: INK 0
 110 DIM e$(128)
 120 LET z=0
 130 LET bp=0
 500 LET ys=2: LET xs=2: LET cs=8: LET y=160: LET d$="STOP THE TAPE": FLASH 1: GO SUB 9390: FLASH 0: LET y=176: LET xs=1: LET d$="and then press any key": GO SUB 9390: PAUSE z
1000 GO SUB 7000: LET xs=1: LET ys=2: LET y=160: LET d$="The Spectrum Hardware": GO SUB 9390: LET y=176: LET xs=2: LET d$="PSION \*1982": GO SUB 9390: PAUSE 200
1030 LET e$="This program will introduce the Spectrum hardware. We will startfrom the inside with the parts  that form the microcomputer.": GO SUB 9300
1040 LET k$="0123": GO SUB 8500
1050 LET e$="The most complex (yet cheapest) component is the microprocessor or CPU (Central Processing Unit)The CPU in the Spectrum is a Z80": GO SUB 9300: LET k$="2": GO SUB 8500
1100 LET e$="The CPU is of little use withoutmemory and the Spectrum has two kinds: ROM (Read Only Memory)   and RAM (Random Access Memory).": GO SUB 9300: LET k$="01": GO SUB 8500
1150 LET e$="The ROM contains fixed programs and data which allows the       Spectrum to start working as    soon as it is switched on.": GO SUB 9300: LET k$="0": GO SUB 8500
1180 LET e$="You can read from and write to  RAM (this program is in RAM) butthe contents of RAM are lost    when the power is switched off.": GO SUB 9300: LET k$="1": GO SUB 8500
1200 LET e$="In order for the computer to do useful work it must communicate with the outside world through  peripheral devices.": GO SUB 9300: LET k$="4567": GO SUB 8500
1250 LET e$="You can attach other peripherals(e.g. a printer) besides the    standard ones in this diagram   using the edge connector.": GO SUB 9300: LET k$="8": GO SUB 8500
1300 LET e$="The interface between the CPU   and the peripherals is complex  but is handled by a single ULA -a custom-designed chip.": GO SUB 9300: LET k$="3": GO SUB 8500
1350 LET e$="The TV & loudspeaker are output devices which the Spectrum uses to pass information to you. The loudspeaker is playing now.": GO SUB 9300: LET k$="5": LET bp=.5: GO SUB 8500: LET bp=0
1400 LET e$="The cassette recorder is an     input and output device which   is not for communication but forstorage of programs and data.": GO SUB 9300: LET k$="6": GO SUB 8500
1450 LET e$="The Spectrum 'talks' to you via the TV and you talk to or input information to the Spectrum     using the keyboard.": GO SUB 9300: LET k$="7": GO SUB 8500
1500 LET e$="Because it is vital that you    know how to use the keyboard    there follows a series of       programs to ensure just that.": GO SUB 9300: GO SUB 8500
1550 LET e$="Do you want to run this program again?                          Press Y or N for Yes or No.": GO SUB 9300
1600 LET k$=INKEY$: IF k$="y" THEN GO TO 1000
1610 IF k$<>"n" THEN GO TO 1600
2000 GO SUB 7000: LET xs=2: LET ys=2: LET y=160: LET d$="START THE TAPE": GO SUB 9390
2050 LET xs=1: LET y=176: LET d$="Loading lesson1": GO SUB 9390
2100 PRINT AT 0,0;: LOAD "lesson1"
6000 PAUSE 0: BORDER 6: PAPER 7: INK 0: STOP
7000 LET x=0: LET y=160: LET xs=4: LET ys=4: LET cs=8: LET d$="        ": GO TO 9400
8000 BORDER 6: LOAD "" SCREEN$ : RETURN
8500 INK 8: FLASH 1: GO SUB 8550: FLASH 0: GO SUB 9200: GO SUB 8550: INK 0: RETURN
8550 IF k$="" THEN RETURN
8560 OVER 1: FOR i=1 TO LEN k$: GO SUB 8600+( CODE k$(i)-48)*10:: NEXT i: OVER 0: RETURN
8600 PRINT AT 7,4;"   ": RETURN
8610 PRINT AT 7,13;"   ": RETURN
8620 PRINT AT 12,4;"   ": RETURN
8630 PRINT AT 12,13;"   ": RETURN
8640 PRINT AT 4,29;"  ": RETURN
8650 PRINT AT 9,29;"  ": RETURN
8660 PRINT AT 14,28;"    ": RETURN
8670 PRINT AT 17,19;"        ": RETURN
8680 PRINT AT 3,3;"              ": RETURN
8900 FOR i=1 TO 30: BEEP bp,i: IF INKEY$<>"" THEN RETURN
8910 NEXT i: GO TO 8900
9000 CLEAR : SAVE "hardware" LINE 9100: SAVE " " CODE 32256,300
9010 STOP
9100 CLEAR 32255: LOAD "" CODE
9110 LOAD "" SCREEN$ : GO TO 100
9200 LET y=z: LET ys=2: LET d$="Press any key to continue": GO SUB 9390: GO SUB 8900: PRINT AT 0,0;"                                                                ": RETURN
9300 GO SUB 7000: LET x=0: LET xs=1: LET ys=1: LET y=160: FOR j=0 TO 3: LET k=32*j+1: LET d$=e$(k TO k+31): GO SUB 9400: LET y=y+8: NEXT j: RETURN
9390 LET x=(256-xs*cs*LEN d$)/2
9400 LET a=23306: POKE a,x: POKE a+1,y: POKE a+2,xs: POKE a+3,ys: POKE a+4,cs: LET a=a+4: FOR i=1 TO LEN d$: POKE a+i, CODE d$(i): NEXT i: POKE a+i,255: RANDOMIZE USR 32256: RETURN
