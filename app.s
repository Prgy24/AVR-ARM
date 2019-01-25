
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
	
	        LDR r11,=0x030000CF
	        LDR r12,=0x070000FC
	        add r10,r11,r12

	
loop:   b loop

	.code 16                ;half word align

	thumb:  MOV r1,#0x05
	        MOV r2,#0x0a
	        add r0,r1,r2    ;perform addition of r1 and r2 ,store the result in r0

		swi 0x12
	        MOV r1,#0xff
	        MOV r2,#0xaa

	        bx lr           ;return to ARM code and state


.end 
