
;/* PROGRAM TO ------------------ */

;ARM CODE 
.code 32		;word align
.text	
.global main_asm

;/* Application code for assembly starts here */

main_asm:
	LDR r1,=0xF631024C;
	LDR r2,=0x17539ABD;
	eor r1,r1,r2;
	eor r2,r1,r2;
	eor r1,r1,r2;

	
	
loop:   b loop
.end 
