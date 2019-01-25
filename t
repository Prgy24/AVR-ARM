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
  13 0000 0210A0E3 		mov r1,#02
  14 0004 0320A0E3 		mov r2,#03
  15 0008 023081E0 		add r3,r1,r2
  16              		
  17 000c 230100EF 		swi 0x123
  18              	
  19 0010 0520A0E3 		mov r2,#05
  20 0014 023083E0 		add r3,r3,r2
  21              		
  22 0018 040000EA 	loop:   b loop
  23              	.end 
ARM GAS  app.s 			page 2


DEFINED SYMBOLS
               app.s:11     .text:00000000 main_asm
               app.s:22     .text:00000018 loop

NO UNDEFINED SYMBOLS
