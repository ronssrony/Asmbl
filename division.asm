include 'emu8086.inc '

.stack 100h
.model small

.data


.code

            main proc
             
             mov cx,7 ;number of times I want to print 'hello mars'
             
             mov dl,10
             mov ah,02h
             int 21h
             
             mov dl,13
             mov ah,02h
             int 21h
             
             looping:
             
                   print 'HELLO MARS'
                   mov dl,10
                   mov ah,02h
                   int 21h
                   
                   mov dl,13 
                   mov ah,02h
                   int 21h
             
              
              
              loop looping
             
             




       main endp


end main             print 'Remainder: '
             mov dl,bh
             add dl,48
             mov ah,02h
             int 21h
                
                
                
                
                




       main endp


end main