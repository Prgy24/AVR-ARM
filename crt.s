
.code 32
.text 


.equ ABT,        0x17
.equ FIQ,        0x11
.equ IRQ,        0x12
.equ SVC,        0x13
.equ SYS,        0x1F
.equ UND,        0x1B
.equ USR,        0x10
.equ M_MODE,     0x1F

.global initilize_stack 
.extern main_asm

;/*Initilization of the stack for all the Modes */

initilize_stack :

;SUPERVISOR_MODE
	ldr SP,=0x1000

;ABORT_MODE
        mrs r0,CPSR
        bic r0,r0,#M_MODE
        orr r0,r0,#ABT
        msr CPSR,r0
        ldr SP,=0x2000

;FIQ_MODE
        mrs r0,CPSR
        bic r0,r0,#M_MODE
        orr r0,r0,#FIQ
        msr CPSR,r0
        ldr SP,=0x3000

;IRQ_MODE
        mrs r0,CPSR
        bic r0,r0,#M_MODE
        orr r0,r0,#IRQ
        msr CPSR,r0
        ldr SP,=0x4000


;SYSTEM
        mrs r0,CPSR
        bic r0,r0,#M_MODE
        orr r0,r0,#SYS
        msr CPSR,r0
        ldr SP,=0x5000

;UNDEFINED
        mrs r0,CPSR
        bic r0,r0,#M_MODE
	orr r0,r0,#UND
        msr CPSR,r0
        ldr r13,=0x6000

;USER
        mrs r0,CPSR
        bic r0,r0,#M_MODE
        orr r0,r0,#USR
        msr CPSR,r0
        ldr SP,=0x7000
        b main_asm


.end 
