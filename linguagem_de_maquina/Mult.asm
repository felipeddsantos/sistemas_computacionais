@R1    
D=M    
@R3    
M=D   
@R2    
M=0    

(LOOP)
    @R3    
    D=M    
    @END    
    D;JLE  
    @R3    
    M=D-1    
    @R0    
    D=M    
    @R2    
    M=D+M    
    @LOOP
    0;JMP   

(END)
    @END
    0;JMP    