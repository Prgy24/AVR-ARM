
;/* PROGRAM TO ------------------ */

;ARM CODE 
.code 32		;word align
.text	
.global main_asm

;/* Application code for assembly starts here */

main_asm:
	MOV r1,#0x12
	mov r5,#01
here:	MOV r2,#0x2
	
	sub r3,r1,r2
	add r4,r4,r5	
	mov r1,r3
	teq r3,#0	
	bne here
	
	
loop:   b loop
.end 
