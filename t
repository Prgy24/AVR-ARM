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
  13 0000 24009FE5 			ldr r0,=thumb+1         ; +1 to enter Thumb state
  14 0004 0FE0A0E1 		        mov lr,pc               ; set the return address
  15 0008 10FF2FE1 		        bx r0                   ; branch to Thumb code
  16              		
  17 000c 1CB09FE5 		        LDR r11,=0x030000CF
  18 0010 1CC09FE5 		        LDR r12,=0x070000FC
  19 0014 0CA08BE0 		        add r10,r11,r12
  20              	
  21              		
  22 0018 040000EA 	loop:   b loop
  23              	
  24              		.code 16                ;half word align
  25              	
  26 001c 0521     		thumb:  MOV r1,#0x05
  27 001e 0A22     		        MOV r2,#0x0a
  28 0020 8818     		        add r0,r1,r2    ;perform addition of r1 and r2 ,store the result in r0
  29              	
  30 0022 12DF     			swi 0x12
  31 0024 FF21     		        MOV r1,#0xff
  32 0026 AA22     		        MOV r2,#0xaa
  33              	
  34 0028 7047     		        bx lr           ;return to ARM code and state
  35              	
  36              	
  37 002a 00001D00 	.end 
  37      0000CF00 
  37      0003FC00 
  37      0007
ARM GAS  app.s 			page 2


DEFINED SYMBOLS
               app.s:11     .text:00000000 main_asm
               app.s:26     .text:0000001c thumb
               app.s:22     .text:00000018 loop

NO UNDEFINED SYMBOLS
