INCLUDE "EMU8086.INC"
.MODEL SMALL

 .STACK 100H
 
 .DATA
   
   N DB ?  
   
 .CODE
   
   MAIN PROC
    
     
     MOV BH , 1101B
     AND BH , 0101B
     
     ADD BH , 48
     
     MOV AH , 2
     MOV DL , BH
     INT 21H 
       
     PRINTN
     
     MOV BH , 1101B
     OR BH , 0010B
     
     ADD BH,48
     
     MOV AH,2
     MOV DL,BH
     INT 21H 
    

    
    MOV AH ,4CH
    INT 21H
    MAIN ENDP
    
END MAIN  
