include 'emu8086.inc'
.stack 100h
.model small

.data 

  first db ?
  prd db ?
.code 
            
            
            main proc 
                mov ax,@data
                mov ds,ax
                
               print 'Enter first number'
               mov ah,01h
               int 21h 
               
               mov first,al
               sub first,48
               
               mov dl,10
               mov ah,02h
               int 21h
               
               mov dl,13 
               mov ah,02h
               int 21h
               
               print 'Enter second number'
               
               mov ah,01h
               int 21h 
               sub al,48
               
               mul first 
               
               mov prd,al
               add prd,48
                
                mov dl,10
                mov ah,02h
                int 21h
                
                mov dl,13
                mov ah,02h
                int 21h
                
                print 'your product'
                
                mov dl,prd
                mov ah,02h
                int 21h
                
                
                
                main endp
  end main          