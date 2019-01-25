ARM GAS  app.s 			page 1


   1              	
   2              	;/* PROGRAM TO ------------------ */
   3              	
   4              	;ARM CODE 
   5              	.code 32		;word align
   6              	.text	
   7              	.global add
   8              	
   9              	;/* Application code for assembly starts here */
  10              	
  11              	
  12              	add:	
  13 0000 010080E0 		add r0,r0,r1
  14 0004 020080E0 		add r0,r0,r2
  15 0008 030080E0 		add r0,r0,r3
  16              		
  17 000c 30402DE9 		stmfd sp!,{r4-r5,lr}
  18 0010 040080E0 		add r0,r0,r4
  19 0014 050080E0 		add r0,r0,r5
  20 0018 1EFF2FE1 		bx lr			
  21              		
  22              		
  23              	
  24              	.end 
ARM GAS  app.s 			page 2


DEFINED SYMBOLS
               app.s:12     .text:00000000 add

NO UNDEFINED SYMBOLS
