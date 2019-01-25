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
  13              	
  14              		
  15 0000 4000A0E3 		MOV R0,#64
  16 0004 0110A0E3 	here:	mov r1,#01
  17              		
  18 0008 000081E0 		add r0,r1,r0
  19 000c 5A0050E3 		cmp r0,#90
  20 0010 000000EF 		swi 0x00
  21 0014 FFFFFF1A 		bne here	
  22              		
  23 0018 040000EA 	loop:   b loop
  24              	
  25              		
  26              	
  27              	.end 
ARM GAS  app.s 			page 2


DEFINED SYMBOLS
               app.s:11     .text:00000000 main_asm
               app.s:16     .text:00000004 here
               app.s:23     .text:00000018 loop

NO UNDEFINED SYMBOLS
