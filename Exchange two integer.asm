;INPUT A,B
;OUTPUT A+B

.MODEL SMALL
.STACK 100H
.DATA
    
    A DB ?
    B DB ?


.CODE

     MAIN PROC
     
     MOV AX,@DATA
     MOV DS,AX
     
     
     MOV A , 50
     MOV B , 57   
        
     MOV BL , A
     MOV BH , B
     
     XCHG BH,BL
     
     MOV AH,2
     MOV DL , BL
     INT 21H
     
     MOV AH , 2
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H
     
     MOV AH , 2
     MOV DL,BH
     INT 21H
        
        
      
     MOV AH,4CH
     INT 21H
     MAIN ENDP

 END  MAIN
