
;/* PROGRAM TO ------------------ */

;ARM CODE 
.code 32		;word align
.text	
.global main_asm

;/* Application code for assembly starts here */

main_asm:

	movs r1,#02;
	movs r2,#03;	
	mul r3,r1,r2;
	
	
loop:   b loop
.end 
