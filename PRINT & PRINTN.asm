
 INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
    
    A DB ?
    B DB ?


.CODE

     MAIN PROC
     
     MOV AX,@DATA
     MOV DS,AX
     
     
       PRINT "HELLO WORLD"  ;NO NEW LINE
      PRINTN ;NEW LINE
      PRINTN "HELLO BANGLADESH"
     MOV AH,4CH
     INT 21H
     MAIN ENDP

 END  MAIN
