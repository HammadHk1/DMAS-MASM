;##################;
; HAMMAD KHALID    ;
;  DMAS            ;           
;##################;
.model small
.stack 100h
.data
msg  db 'Enter Number in Correct Manner to get Answer',10,13,
        'Enter Answer without pressing Enter key',10,13,
        '-> var1 and var2 any number',10,13,
		'-> var3 && var4 product must be less then 10',10,13,
		'-> var5 must be greater then var6',10,13,
		'-> var8 is the number to be divided by var7',10,13,'$'
var1 db ?
var2 db ?
var3 db ?
var4 db ?
var5 db ?
var6 db ?
var7 db ?
var8 db ?

sum1 db ?
sub1 db ?
mul1 db ?
div1 db ?

arr db 0,0,0,0

count dw ?

temp db 0
msg1 db '::::SORTED::::',10,13,'$'
space db 10,13,'$'
.code
start:
	mov ax,@data
	mov ds,ax
		;Message displayed using 09h to display the rules so that person does not Enter Wrong input....
		mov dx,offset msg
		mov ah,09h
		int 21h
		;TAKING INPUT FOR THE USER TO CONTINOUE...
		mov ah,01h
		int 21h
		mov var1,al
		mov ah,01h
		int 21h
		mov var2,al
		mov ah,01h
		int 21h
		mov var3,al
		mov ah,01h
		int 21h
		mov var4,al
		mov ah,01h
		int 21h
    	mov var5,al
		mov ah,01h
		int 21h
		mov var6,al
		mov ah,01h
		int 21h
		mov var7,al
		mov ah,01h
		int 21h
		mov var8,al
		mov dx,offset space
		mov ah,09h
		int 21h
		;FOR ADDING TWO NUMBERS...
		mov al,var1
		add al,var2
		mov var1,al
		mov dl,var1
		sub dl,48
		mov sum1,dl
		mov ah,02h
		int 21h
		;FOR MULTIPLYING TWO NUMBER...
	    mov al,var3
		mov bl,var4
		sub al,30h
		sub bl,30h
		mul bl
		mov dx,ax
		add dx,30h
		mov mul1,dl
		mov ah,02h
	 	int 21h
		
		;FOR SUBTRACTING TWO NUMBER...
		mov al,var6
		sub var5,al
		mov dl,var5
		add dl,48
		mov sub1,dl
		mov ah,02h
		int 21h
		;FOR DIVIDING TWO NUMBER
		mov ah,0
		mov al,var7
		mov bl,var8
		sub al,48
		sub bl,48
		div bl
		mov dl,al
		add dl,48
		mov div1,dl
		mov ah,02h
		int 21h    


	mov al,sum1
	mov bl,mul1
	mov cl,sub1
	mov dl,div1
   mov arr[0],al
   mov arr[1],bl
   mov arr[2],cl
   mov arr[3],dl
   mov cl,0
   mov si,0
   mov di,1
   mov dl,0
   mov cx,4
L2:	
   mov dl,0
	L1:
	  cmp dl,3
	  je no_end
	  jmp IF_CONDITION
	  
		IF_CONDITION:
		  mov ah,[arr+di]
		  mov al,[arr+si]
		  cmp al,ah
          jae Temporary	
		  jmp Exit
        		  
		Temporary:
		mov ah,[arr+si]
		mov al,[arr+di]
		mov [arr+si],al
		mov [arr+di],ah
		
	    Exit:
		 inc si
		 inc di
		 inc dl
		 jmp L1 
	  
      no_end:
      mov si,0
	  mov di,1
	  inc dl
    
Loop L2	
	Exit1:
	    mov dx,offset space
	mov ah,09h
	int 21h
		mov dx,offset msg1
	mov ah,09h
	
	int 21h
	mov dl,[arr+3]
	mov ah,02h
	int 21h
	mov dl,[arr+2]
	mov ah,02h
	int 21h
	mov dl,[arr+1]
	mov ah,02h
	int 21h
	mov dl,[arr+0]	
	mov ah,02h
	int 21h
	
    mov ah,4ch
	int 21h
end start
