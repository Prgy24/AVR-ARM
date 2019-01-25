
;/* file  @ boot.s  */


.code 32
.text

.global _start
.global __start

.extern initilize_stack

;/* Entry Point of the programe  */
_start:
__start:


;/* Start of the vector table */

b       RESET_HANDLER
b       UNDEF_HANDLER
b       SWI_HANDLER
b       PREFETCH_ABORT_HANDLER
b       DATA_ABORT_HANDLER
b       RESERVED_HANDLER
b       IRQ_HANDLER
        FIQ_HANDLER:subs pc,r14,#4


;/* Exceptions handlers */

RESET_HANDLER           :       b initilize_stack  

UNDEF_HANDLER           :       movs pc,r14

SWI_HANDLER             :	STMFD SP!,{R0-R12,LR}
				LDR R10,[LR,#-4]
				BIC R10,R10,#0XFF000000
				LDR r12,=0x456
			     	cmp r10,r12
				beq sub
				LDR r11,=0x234
				cmp r10,r11
				beq add
				swi 0x234
				mov r4,#4
			
				LDMFD SP!,{R0-R12,PC}^

add: mov r3,#3
     mov r4,#4
     add r3,r3,r4
	
		swi 0x456
	
	LDMFD SP!,{R0-R12,PC}^					
    
							


sub:
	mov r3,#8
	mov r4,#4
	sub r3,r3,r4
	
LDMFD SP!,{R0-R12,PC}^	

PREFETCH_ABORT_HANDLER  :       subs pc,r14,#4

DATA_ABORT_HANDLER      :       subs pc,r14,#8

RESERVED_HANDLER        :

IRQ_HANDLER             :       subs pc,r14,#4

.end 
