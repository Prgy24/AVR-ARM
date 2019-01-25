'
;/* PROGRAM TO ------------------ */

;ARM CODE 
.code 32		;word align
.text	
.global main_asm

;/* Application code for assembly starts here */

main_asm:


	
	MOV R0,#64
here:	mov r1,#01
	
	add r0,r1,r0
	cmp r0,#90
	swi 0x00
	bne here	
	
loop:   b loop

	

.end 
