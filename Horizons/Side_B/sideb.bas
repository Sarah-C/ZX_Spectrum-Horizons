Check 88527079
Auto 8224
 100 GO SUB 8000
 200 GO SUB 1000
 500 PRINT AT 21,0;"         \{f1}START\{f0} THE TAPE        ": LOAD "wall"
 900 STOP
1000 CLS : PRINT '"HORIZONS is an introductory     cassette written by Psion for   Sinclair."
1020 PRINT '"The programs on this cassette   are largely written in BASIC to illustrate some of the things   you can do."
1030 PRINT '"Substantial machine-code        programs from Sinclair by Psion will allow you to apply the     Spectrum to its full capability."
1040 PRINT '"This range includes serious     business-type applications and  games (both intellectual and    not so intellectual)."
1050 PRINT ''"Press any key to continue.": PAUSE 0
2000 CLS : PRINT "\{vi}VU-FILE\{vn} is a general purpose    filing program or database -    an essential software package   for every Spectrum owner. Use   for names and addresses, club   diaries, accounts and lists     of all kinds."
2010 PRINT '"\{vi}VU-CALC\{vn} constructs, generates   and calculates large tables     for such diverse applications   as financial analysis, budgets  and projections."
2020 PRINT '"\{vi}VU-3D\{vn} is a comprehensive design program for three-dimensional   objects.Allows you to create,   rotate and observe solid obje-  cts in full 3-D perspective.    Includes  hidden line removal   and shading"
2030 PRINT #0;"Press any key to continue": PAUSE 0
3000 CLS : PRINT ''"\{vi}FLIGHT SIMULATION\{vn} view the      moving world outside in 3-D     perspective thro' the cockpit   windows, take off, land and     control the plane with the      many cockpit instruments."
3010 PRINT '"\{vi}CHESS\{vn} can you beat the Spectrum at chess - ten levels of play   - board and pieces in colour    graphics."
3020 PRINT '"\{vi}HUNGRY HORACE\{vn} one of the most   amusing, colourful and exciting computer games yet devised."
3040 PRINT ''"Press any key to continue": PAUSE 0
4000 CLS : PRINT '''''"\{vi}PLANETOIDS\{vn} an exciting real     -time reactive machine-code     game in which you must avoid    and destroy the  passing        planetoids in space"
4010 PRINT '"\{vi}SPACE RAIDERS\{vn} defend the earth  with your gun base from attacks of successive waves of 55       aliens."
4020 PRINT ''"Press any key to continue": PAUSE 0
5000 PAPER 1: INK 7: BORDER 1: CLS : PRINT "HORIZONS    SIDE B"': RETURN
8000 GO SUB 5000
8010 PRINT '"CONTENTS               FILE NAME"'
8020 PRINT '"\{vi}1.Thro' The Wall\{vn}            wall"''"\{vi}2.Bubblesort\{vn}          bubblesort"''"\{vi}3.Evolution\{vn}            evolution"''"\{vi}4.\{vnvi}Life\{vn}                      life"'
8030 PRINT '"\{vi}5.Draw\{vn}                      draw"''"\{vi}6.Monte Carlo\{vn}         montecarlo"''"\{vi}7.Character Generator\{vn}  character"''"\{vi}8.Waves\{vn}                    waves"'
8040 PRINT ''"Press any key to continue."
8090 PAUSE 0: RETURN
9000 SAVE "sideb" LINE 9100: STOP
9100 GO SUB 5000: LOAD "logo" SCREEN$
9110 PRINT AT 0,9;"\{f1}STOP  THE TAPE\{f0}": PAUSE 500: GO TO 1
