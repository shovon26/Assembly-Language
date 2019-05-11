INCLUDE "EMU8086.INC"
.MODEL SMALL

 .STACK 100H
 
 .DATA
   
   VAR DB ?
 .CODE
   
   MAIN PROC
    
      MOV AH,1
      INT 21H
      MOV BL,AL
      
      
      XOR BL,32  ;CASE CONVERSION
        
      PRINTN
      
      PRINTN "HAPPY!"  
        
      MOV AH,2
      MOV DL,BL 
      INT 21H
    

    
    MOV AH ,4CH
    INT 21H
    MAIN ENDP
    
END MAIN  
