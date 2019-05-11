
;CHECK A NUMBER IS >=100 || >=80 || >=60 || LESS THEN 60
INCLUDE 'EMU8086.INC'

.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC   
          
       MOV BX,99 ; RANDOM NUMBER
       
       CMP BX,100  ;COMPARE  >=100
       JGE IF1
       
        CMP BX,80  ;COMPARE   >=80
       JGE IF2
       
        CMP BX,60  ;COMPARE   >=60
       JGE IF3
       
        CMP BX,40  ;COMPARE   >=40
       JGE IF4  
       
       JMP  ELSE 
       
        
       IF1:
       PRINTN "THE  NUMBER IS GREATER THAN 100"
       JMP END_IF    
       
       IF2:
       PRINTN "THE  NUMBER IS GREATER THAN 80"
       JMP END_IF
       
       IF3:
       PRINTN "THE  NUMBER IS GREATER THAN 60"
       JMP END_IF
       
       IF4:
       PRINTN "THE  NUMBER IS GREATER THAN 40"
       JMP END_IF  
       
       ELSE:
       PRINTN "THE NUMBER IS LESS THAN 20"
       JMP END_IF
       
       END_IF:
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP  

END MAIN
