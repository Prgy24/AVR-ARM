ARM GAS  app.s 			page 1


   1              	
   2              	;/* PROGRAM TO ------------------ */
   3              	
   4              	;ARM CODE 
   5              	.code 32		;word align
   6              	.text	
   7              	.global main_asm
   8              	
   9              	;/* Application code for assembly starts here */
  10              	
  11              	main_asm:
  12 0000 0410A0E3 		mov r1,#04;
  13 0004 0120A0E3 		mov r2,#01;
  14 0008 023081E0 		add r3,r1,r2;
  15              		
  16              		
  17 000c 010000EA 	loop:   b loop
  18              	.end 
ARM GAS  app.s 			page 2


DEFINED SYMBOLS
               app.s:11     .text:00000000 main_asm
               app.s:17     .text:0000000c loop

NO UNDEFINED SYMBOLS
