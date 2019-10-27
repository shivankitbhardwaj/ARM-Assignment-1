     AREA     fabonacci, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 
		MOV  R3, #10 ; setting the range for N=10
		MOV  R0, #0x0 ; initialising the value of variables
		MOV  R1, #0x1 ; initialising the value of variables
loop	ADD  R2, R0, R1
		MOV  R0, R1
		MOV  R1, R2
		CMP  R3, #0
		beq stop ; come out of loop and terminate when it reaches to the limit
		SUB  R3, R3, #1 ; decrement the counter
		b loop 

stop    B stop ; stop program
     ENDFUNC
     END 