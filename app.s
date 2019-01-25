
;/* PROGRAM TO ------------------ */

;ARM CODE 
.code 32		;word align
.text	
.global add

;/* Application code for assembly starts here */


add:	
	add r0,r0,r1
	add r0,r0,r2
	add r0,r0,r3
	
	stmfd sp!,{r4-r5,lr}
	add r0,r0,r4
	add r0,r0,r5
	bx lr			
	
	

.end 
