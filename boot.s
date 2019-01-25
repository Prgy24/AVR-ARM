
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

SWI_HANDLER             :	movs pc,r14 

PREFETCH_ABORT_HANDLER  :       subs pc,r14,#4

DATA_ABORT_HANDLER      :       subs pc,r14,#8

RESERVED_HANDLER        :

IRQ_HANDLER             :       subs pc,r14,#4

.end 
