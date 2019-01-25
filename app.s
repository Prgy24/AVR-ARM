
;/* PROGRAM TO ------------------ */

;ARM CODE 
.code 32		;word align
.text	
.global main_asm

;/* Application code for assembly starts here */

main_asm:
	
	mov r1,#02
	mov r2,#03
	add r3,r1,r2
	
	swi 0x123
	
	mov r2,#05
	add r3,r3,r2
	
loop:   b loop
.end 
