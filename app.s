
;/* PROGRAM TO ------------------ */

;ARM CODE 
.code 32		;word align
.text	
.global main_asm

;/* Application code for assembly starts here */

main_asm:
	mov r1,#-10;
	add r2,r1,r1,asr #31
	eor r1,r2,r1,asr #31

	
	
	
loop:   b loop
.end 
