    AREA FIBONACCI, CODE, READONLY
ENTRY
START

    MOV R0, #0       
    MOV R1, #1    
    MOV R2, #10     
    LDR R3, =RESULTS ; 

LOOP
    STR R0, [R3], #4 
    MOV R4, R0       
    MOV R0, R1       
    MOV R1, R4    

    SUB R2, R2, #1 
    CMP R2, #0      
    BNE LOOP       

STOP
    B STOP      

RESULTS
    DCD 0      
END
