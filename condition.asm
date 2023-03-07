include 'emu8086.inc'
 
 .stack 100h
 .model small
 
 .data 
 
  n db ?
  
 .code 
 
 
             main proc 
                   mov ax,@data
                   mov ds,ax
                   print 'Enter a number '
                   
                   mov ah,01h
                   int 21h
                   
                   mov n,al
                   
                   mov dl,10
                   mov ah,02h
                   int 21h
                   
                   mov dl,13
                   mov ah,02h
                   int 21h
                   
                   print 'Enter another number '
                   
                   mov ah,01h
                   int 21h
                   
                   cmp n,al
                   
                  
                   je equal
                     print ' Both are not equal ' ;this portion act as else funtion
                     mov ah,04ch
                     int 21h
                     
                     equal: 
                        
                        print 'Both are equal nubmer'
                        mov ah,04ch
                        int 21h
                    
                    
                   
                
                
                
                main endp 
             
             
             
             end main           main endp 
             
             
             
             end main