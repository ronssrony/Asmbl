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
                   
                   jmp compare  ;jump to the compare label (unconditional jmp)
                   
                   
                   
                   compare:
                     cmp n,al 
                     
                     je equal    ; jump if equal    (conditonal jumps)
                     
                     jl less    ;jump if n less than al
                     
                     jg great   ;jump if n greter than al
                     
                     equal:
                       print ' Both number is equal ' 
                       mov ah,04ch
                       int 21h
                       
                       less:
                       print ' first number is less than second '
                       mov ah,04ch
                       int 21h
                       
                       great:
                       print ' first number is greater than second '
                       mov ah,04ch
                       int 21h
                       
               
                
                main endp 
             
             
             
 end main