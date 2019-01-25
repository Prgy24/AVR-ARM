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
  12 0000 1210A0E3 		MOV r1,#0x12
  13 0004 0150A0E3 		mov r5,#01
  14 0008 0220A0E3 	here:	MOV r2,#0x2
  15              		
  16 000c 023041E0 		sub r3,r1,r2
  17 0010 054084E0 		add r4,r4,r5	
  18 0014 0310A0E1 		mov r1,r3
  19 0018 000033E3 		teq r3,#0	
  20 001c 0000001A 		bne here
  21              		
  22              		
  23 0020 060000EA 	loop:   b loop
  24              	.end 
ARM GAS  app.s 			page 2


DEFINED SYMBOLS
               app.s:11     .text:00000000 main_asm
               app.s:14     .text:00000008 here
               app.s:23     .text:00000020 loop

NO UNDEFINED SYMBOLS
