.MODEL SMALL
.STACK 100H

.DATA

    NUM DB 55
    CHAR DB 'A'
    MSG DB  "Jahangirnagar University $"



.CODE


   MAIN PROC
   
      MOV AX,@DATA
      MOV DS,AX
      
      ;PRINT NUMBER
      MOV AH,2
      MOV DL,NUM
      INT 21H
      
      ;NEW LINE NEEDED
      
      MOV AH,2
      MOV DL,0AH
      INT 21H
      MOV DL,0DH
      INT 21H
      
      ; PRINT CHARACTER
      MOV AH,2
      MOV DL,CHAR  
      INT 21H  
        
            
      ;NEW LINE
     ; MOV AH,2
      MOV DL,0AH
      INT 21H
      MOV DL,0DH
      INT 21H
        
      
      ;PRINT MSG/STRING
      
      MOV AH,9  
      LEA  DX,MSG
      INT 21H
       
       
       

    MOV AH, 4CH
    INT 21H  
    MAIN ENDP
    
  END MAIN
