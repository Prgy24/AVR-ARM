
;/* PROGRAM TO ------------------ */

;ARM CODE 
.code 32		;word align
.text	
.global main_asm

;/* Application code for assembly starts here */

main_asm:
	mov r0,#2
	mov r1,#3
	mov r2,#4
	mov r3,#1
	mov r4,#5
	mov r5,#5
	stmfd sp!,{r4-r5,lr}
	bl add
	mov r6,r0 
	
	
loop:   b loop
.end 
