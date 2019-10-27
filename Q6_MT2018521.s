     AREA     GCD, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 
		MOV  R0, #5 ;  R0 contains the value of 'a'
		MOV  R1, #7 ;  R1 contains the value of 'b'
loop	CMP  R0,R1 ; comparing 'a' and 'b'
		BEQ stop;
		B func
func    ITE  GT 
        SUBGT R0,R0,R1 ; for a>b
        SUBLE R1,R1,R0 ; for a<=b
		B loop
stop    B stop ; stop program
     ENDFUNC
     END 