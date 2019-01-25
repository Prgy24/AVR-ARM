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
  12              	
  13 0000 0210B0E3 		movs r1,#02;
  14 0004 0320B0E3 		movs r2,#03;	
  15 0008 910203E0 		mul r3,r1,r2;
  16              		
  17              		
  18 000c 010000EA 	loop:   b loop
  19              	.end 
ARM GAS  app.s 			page 2


DEFINED SYMBOLS
               app.s:11     .text:00000000 main_asm
               app.s:18     .text:0000000c loop

NO UNDEFINED SYMBOLS
