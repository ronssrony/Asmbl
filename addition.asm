  include 'emu8086.inc'
  .model small
  .stack 100h
  
  
  .data
  
  
  .code
                 main proc
                     print 'Enter first number ' 
                     mov ah,01h
                     int 21h
                     sub al,48
                     mov bl,al
                     
                     mov dl,10
                     mov ah,02h
                     int 21h
                     mov dl,13
                     mov ah,02h
                     int 21h
                     print 'Enter second number '
                     mov ah,01h
                     int 21h 
                     
                     sub al,48
                     add bl,al 
                     add bl,48  
                     
                     mov dl,10
                     mov ah,02h
                     int 21h 
                     
                     mov dl,13
                     mov ah,02h
                     int 21h   
                     
                     print 'YOUR sum is-->'  
                     
                     mov dl,bl
                     
                     mov ah,02h
                     int 21h
                     
                     
                     
               
                       
        main endp
        
        
        
        end main                