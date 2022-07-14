;number to be searched in 4300 from 4200 to 4209
MOV R0,#4300H
MOV R1,#00H ;counter: number of times the searched no. is found
MOV R2,#0AH
MOV DPTR,#4200H
MOVX A,@DPTR
CJNE A,R0,9
INC R1
INC DPTR
DJNZ R2,6
MOV DPTR,#4220H ;store counter
MOVX @DPTR,R1
SJMP 13