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
  12 0000 20009FE5 		ldr r0,=thumb+1         ; +1 to enter Thumb state
  13 0004 0FE0A0E1 		        mov lr,pc               ; set the return address
  14 0008 10FF2FE1 		        bx r0                   ; branch to Thumb code
  15              		
  16 000c 03B0A0E3 		        MOV r11,#0x03
  17 0010 07C0A0E3 		        MOV r12,#0x07
  18 0014 0CA08BE0 		        add r10,r11,r12
  19              	
  20              		
  21 0018 040000EA 	loop:   b loop
  22              	
  23              		.code 16                ;half word align
  24              	
  25 001c 0521     		thumb:  MOV r1,#0x05
  26 001e 0A22     		        MOV r2,#0x0a
  27 0020 8818     		        add r0,r1,r2    ;perform addition of r1 and r2 ,store the result in r0
  28              	
  29              	
  30 0022 FF21     		        MOV r1,#0xff
  31 0024 AA22     		        MOV r2,#0xaa
  32              	
  33 0026 7047     		        bx lr           ;return to ARM code and state
  34              	
  35              	
  36 0028 1D000000 	.end 
ARM GAS  app.s 			page 2


DEFINED SYMBOLS
               app.s:11     .text:00000000 main_asm
               app.s:25     .text:0000001c thumb
               app.s:21     .text:00000018 loop

NO UNDEFINED SYMBOLS
