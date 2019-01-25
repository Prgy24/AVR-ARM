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
  12 0000 10109FE5 		LDR r1,=0xF631024C;
  13 0004 10209FE5 		LDR r2,=0x17539ABD;
  14 0008 021021E0 		eor r1,r1,r2;
  15 000c 022021E0 		eor r2,r1,r2;
  16 0010 021021E0 		eor r1,r1,r2;
  17              	
  18              		
  19              		
  20 0014 030000EA 	loop:   b loop
  21 0018 4C0231F6 	.end 
  21      BD9A5317 
ARM GAS  app.s 			page 2


DEFINED SYMBOLS
               app.s:11     .text:00000000 main_asm
               app.s:20     .text:00000014 loop

NO UNDEFINED SYMBOLS
