.MODEL SMALL
.STACK 100H
.DATA



.CODE

     MAIN PROC


     MOV AH , 1   ;TAKE INPUT/INPUT FUNCTION
     INT 21H 
      
      ;THE INPUT IS STORED IN 'AL' REGISTER
      
      MOV AH,2   ;PRINT SOMETHING 
      MOV DL,AL  ;PRINT DL FROM AL
      INT 21H
      
      
      ;NEW LINE
      MOV AH,2
      MOV DL,0AH
      INT 21H
      MOV DL,0DH
      INT 21H
      
      MOV AH,4CH
      INT 21H
      MAIN ENDP


 END  MAIN
