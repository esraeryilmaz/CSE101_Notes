         load    R1,Text1      ;the start of the string
         load    R2,1          ;increase step
         load    R0,0          ;string-terminator
         load    R3,Text2
         load    R4,-1

loop1:   load    RF,[R1]      ;get character and print it on screen
         addi    R1,R1,R2     ;increase address
         jmpEQ   RF=R0,loop2  ;when string-terminator, then ready
         jmp     loop1        ;next character

loop2:   load    RF,[R3]
         addi    R3,R3,R4
         jmpEQ   RF=R0,loop3
         jmp     loop2

loop3:   halt

Text1:   db      10
         db      "ESRA",10 

Text2:   db      10
         db      10,"ESRA"