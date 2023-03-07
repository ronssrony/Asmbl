include 'emu8086.inc'    

.stack 100h
.model small


.data 

 array db 3,5,7,9,11,12

.code 
              main proc
                  mov ax,@data
                  mov ds,ax
                  
                  print 'Your array element is' 
                  
                  mov si,offset array
                  
                  mov cx,6
                  
                  loopx:
                  
                    mov dl,[si]
                    add dl,48
                    mov ah,02h
                    int 21h
                    
                    mov dl,32
                    mov ah,02h
                    int 21h
                    
                    inc si
                  
                  
                  loop loopx
                
                
                
                main endp
   
   
   
   end main           