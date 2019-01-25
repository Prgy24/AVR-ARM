
;/* PROGRAM TO ------------------ */

;ARM CODE 
.code 32		;word align
.text	
.global main_asm

;/* Application code for assembly starts here */

main_asm:
	ldr r0,=thumb+1         ; +1 to enter Thumb state
	        mov lr,pc               ; set the return address
	        bx r0                   ; branch to Thumb code
	
	        MOV r11,#0x03
	        MOV r12,#0x07
	        add r10,r11,r12

	
loop:   b loop

	.code 16                ;half word align

	thumb:  MOV r1,#0x05
	        MOV r2,#0x0a
	        add r0,r1,r2    ;perform addition of r1 and r2 ,store the result in r0


	        MOV r1,#0xff
	        MOV r2,#0xaa

	        bx lr           ;return to ARM code and state


.end 
