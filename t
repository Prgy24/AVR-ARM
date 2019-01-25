ARM GAS  crt.s 			page 1


   1              	
   2              	.code 32
   3              	.text 
   4              	
   5              	
   6              	.equ ABT,        0x17
   7              	.equ FIQ,        0x11
   8              	.equ IRQ,        0x12
   9              	.equ SVC,        0x13
  10              	.equ SYS,        0x1F
  11              	.equ UND,        0x1B
  12              	.equ USR,        0x10
  13              	.equ M_MODE,     0x1F
  14              	
  15              	.global initilize_stack 
  16              	.extern main_asm
  17              	
  18              	;/*Initilization of the stack for all the Modes */
  19              	
  20              	initilize_stack :
  21              	
  22              	;SUPERVISOR_MODE
  23 0000 01DAA0E3 		ldr SP,=0x1000
  24              	
  25              	;ABORT_MODE
  26 0004 00000FE1 	        mrs r0,CPSR
  27 0008 1F00C0E3 	        bic r0,r0,#M_MODE
  28 000c 170080E3 	        orr r0,r0,#ABT
  29 0010 00F029E1 	        msr CPSR,r0
  30 0014 02DAA0E3 	        ldr SP,=0x2000
  31              	
  32              	;FIQ_MODE
  33 0018 00000FE1 	        mrs r0,CPSR
  34 001c 1F00C0E3 	        bic r0,r0,#M_MODE
  35 0020 110080E3 	        orr r0,r0,#FIQ
  36 0024 00F029E1 	        msr CPSR,r0
  37 0028 03DAA0E3 	        ldr SP,=0x3000
  38              	
  39              	;IRQ_MODE
  40 002c 00000FE1 	        mrs r0,CPSR
  41 0030 1F00C0E3 	        bic r0,r0,#M_MODE
  42 0034 120080E3 	        orr r0,r0,#IRQ
  43 0038 00F029E1 	        msr CPSR,r0
  44 003c 01D9A0E3 	        ldr SP,=0x4000
  45              	
  46              	
  47              	;SYSTEM
  48 0040 00000FE1 	        mrs r0,CPSR
  49 0044 1F00C0E3 	        bic r0,r0,#M_MODE
  50 0048 1F0080E3 	        orr r0,r0,#SYS
  51 004c 00F029E1 	        msr CPSR,r0
  52 0050 05DAA0E3 	        ldr SP,=0x5000
  53              	
  54              	;UNDEFINED
  55 0054 00000FE1 	        mrs r0,CPSR
  56 0058 1F00C0E3 	        bic r0,r0,#M_MODE
  57 005c 1B0080E3 		orr r0,r0,#UND
ARM GAS  crt.s 			page 2


  58 0060 00F029E1 	        msr CPSR,r0
  59 0064 06DAA0E3 	        ldr r13,=0x6000
  60              	
  61              	;USER
  62 0068 00000FE1 	        mrs r0,CPSR
  63 006c 1F00C0E3 	        bic r0,r0,#M_MODE
  64 0070 100080E3 	        orr r0,r0,#USR
  65 0074 00F029E1 	        msr CPSR,r0
  66 0078 07DAA0E3 	        ldr SP,=0x7000
  67 007c FEFFFFEA 	        b main_asm
  68              	
  69              	
  70              	.end 
ARM GAS  crt.s 			page 3


DEFINED SYMBOLS
               crt.s:6      *ABS*:00000017 ABT
               crt.s:7      *ABS*:00000011 FIQ
               crt.s:8      *ABS*:00000012 IRQ
               crt.s:9      *ABS*:00000013 SVC
               crt.s:10     *ABS*:0000001f SYS
               crt.s:11     *ABS*:0000001b UND
               crt.s:12     *ABS*:00000010 USR
               crt.s:13     *ABS*:0000001f M_MODE
               crt.s:20     .text:00000000 initilize_stack

UNDEFINED SYMBOLS
main_asm
