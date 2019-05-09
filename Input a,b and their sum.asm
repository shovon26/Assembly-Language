;INPUT A,B
;OUTPUT A+B

.MODEL SMALL
.STACK 100H
.DATA
    
    A DB ?
    B DB ?


.CODE

     MAIN PROC
        
     MOV AH , 1 
     INT 21H    ;INPUT A
     
     ;INSTRUCTION DESTINATION ,SOURCE
     
     MOV A , AL
     SUB A , 48 
     
     INT 21H   ;INPUT B
     MOV B , AL
     SUB B , 48
            
     
     MOV BH , A
     ADD BH , B
     ADD BH , 48    
            
     
     ;NEW LINE
     MOV AH,2
     MOV DH,0AH
     INT 21H
     MOV DH,0DH
     INT 21H  
        
    
     MOV DL , BH     ;OUTPUT-A+B
     INT 21H   
        
        
      
     MOV AH,4CH
     INT 21H
     MAIN ENDP

 END  MAIN
