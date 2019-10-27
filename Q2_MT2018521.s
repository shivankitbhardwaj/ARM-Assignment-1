     AREA     greatestofthree, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 
		MOV  R0, #3 ; variable1
		MOV  R1, #4 ; variable2
		MOV  R2, #5 ; variable3
		CMP R0,R1 ; compare variable 1 and variable 2
		BGE func1 ; if var1>=var2 then execute func1
		CMP R1,R2 ; now that variable 2 > variable compare it with variable 3
		BGE func
		b func3 ; if var 3> var2 then execute func3
func	MOV R3,R1 ; if var 2 > var 3 store it in R3   
		b stop
func1   CMP R0,R2 ; compare variable 1 and variable 3 
		BGE func2 ; if var1>=var3 then execute func2
		b func3 ; if var 3>var1 then execute func3
func3	MOV R3,R2 ;value stored in variable 3 is the largest and it is stored in R3
		b	stop  
func2   MOV R3,R0; value stored variable 1 is the largest and it is stored in R3 
		b	stop 
		

stop    B stop ; stop program
     ENDFUNC
     END 