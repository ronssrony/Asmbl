include 'emu8086.inc '

.stack 100h
.model small

.data


.code

            main proc
             
             mov al,13
             mov bl,3
             
             div bl
             
             mov bx,ax
             
             print 'Quatient'
             mov dl,bh
             add dl,48
             mov ah,02h
             int 21h
             
             mov dl,10
             mov ah,02h
             int 21h
             
             mov dl,13 
             mov ah,02h
             int 21h
             
             print 'Remainder'
             
             mov dl,bl
             add dl,48
             mov ah,02h
             int 21h
             
             




       main endp


end main     
                
                
                
                




     
