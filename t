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
  12 0000 0910E0E3 		mov r1,#-10;
  13 0004 C12F81E0 		add r2,r1,r1,asr #31
  14 0008 C11F22E0 		eor r1,r2,r1,asr #31
  15              	
  16              		
  17              		
  18              		
  19 000c 010000EA 	loop:   b loop
  20              	.end 
ARM GAS  app.s 			page 2


DEFINED SYMBOLS
               app.s:11     .text:00000000 main_asm
               app.s:19     .text:0000000c loop

NO UNDEFINED SYMBOLS
