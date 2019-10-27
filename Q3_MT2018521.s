     AREA     OddEven, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 
		MOV  R0, #0x6 ; R0 holds some value which needs to be checked for Even or Odd
		MOV  R1, #0x2 ; R1 holds the value '2'
		UDIV R2,R0,R1 ; R2 contains the quotient of R0/R1
		MLS R2,R2,R1,R0 ; storing remainder of R0/R1 and in R2
		CMP R2, #0 ; comparing remainder to zero
		ITE EQ
		MOVEQ R3, #0 ; R3=0 signifies that R0 holds an even value
		MOVNE R3, #1 ; R3=1 signifies that R0 holds an even value

stop    B stop ; stop program
     ENDFUNC
     END 