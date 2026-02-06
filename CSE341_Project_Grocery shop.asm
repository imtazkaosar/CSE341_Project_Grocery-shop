.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here 
enternum db 10,13, 'Enter your choice number: $' 
sum dw 0
sum1 dw 0
store dw 0 
quantity db 10,13,'Quantity/g/kg: $'
taka db 10,13,'Total Taka $' 
M1 DB 10,13,10,13,'                 Welcome to Our Grocery Shop$',10,13 
M2 DB 10,13,10,13,'Welcome to the dashboard $' 
mainmenu db 10,13,'                           8.Back to main menu$'
msgpin db 10,13,'Enter your pin: $'            
invalid db 10,13,'Your Pin is Invalid. Try again$' 
prev_price_msg db 10,13,'Current price: $'
priceupdate db 10,13,'Press the product number of which you want to update the price: $'
priceenter db 10,13,'Enter New Price: $' 
itemno dw 0

pin dw 1234
inputpin dw 0

price DW 215,180, 200, 40, 50,120,135,150,50,40,80,350,180,120,70,60,200,215,180, 40, 150, 50,120,135,120,70,60,200,100,120   ; array of 5 bytes


update db 10,13, '1.Rice 2.Lentil 3.Flour 4.Sugar 5.Salt 6.Soyabean Oil 7.Turmeric 8.Chili 9.Cumin 10.Coriander 11.Mustard 12.Mixed Masala 13.Eggs 14.Milk Powder 15.Yogurt 16.Cheese 17.Butter 18.Liquid Milk 19.Biscuits  20.Roti  21.Chips  22.Chia seeds  23.Nuts  24.Chocolate  25.  26. 27. 28. 29. 30.  $'
 
updatedprice dw 0 
 
M3 DB 10,13,'                   1.Staple Foods / Essentials         $' 
M4 DB 10,13,'                   2.Spices & Condiments             $'
M5 DB 10,13,'                   3.Dairy Products            $' 
M15 DB 10,13,'                   4.Dry Snacks & Packaged Foods         $' 
M18 DB 10,13,'                   5.Checkout            $'
M19 DB 10,13,'                   6.Admin Panel            $'

Mcheck DB 10,13,'                           7.CHECKOUT                  $'

M6 DB 10,13,'              1.Rice                             tk/=     $' ;staple
M7 DB 10,13,'              2.Lentil                           tk/=     $'
M8 DB 10,13,'              3.Flour                            tk/=     $' 
M20 DB 10,13,'             4.Sugar                           tk/=     $'
M21 DB 10,13,'             5.Salt                            tk/=     $'
M22 DB 10,13,'             6.Soyabean Oil                    tk/=     $' 

M9 DB 10,13,'             1.Turmeric Powder (100g)           tk/=     $' ;spice
M10 DB 10,13,'             2.Chili Powder (100g)             tk/=     $'
M11 DB 10,13,'             3.Cumin         (50g)             tk/=     $'
M23 DB 10,13,'             4.Coriander Powder (100g)         tk/=     $' 
M24 DB 10,13,'             5.Mustard Seeds (50g)             tk/=     $'
M25 DB 10,13,'             6.Mixed Masala (100g)             tk/=     $'  

M12 DB 10,13,'             1.Eggs (one dozen)                tk/=     $' ;dairy
M13 DB 10,13,'             2.Milk Powder (500g)              tk/=     $'
M14 DB 10,13,'             3.Yogurt (Sweet, 250g)            tk/=     $' 
M26 DB 10,13,'             4.Cheese (200g)                   tk/=     $' 
M27 DB 10,13,'             5.Butter(500g)                    tk/=     $'
M28 DB 10,13,'             6.Liquid Milk (1kg)               tk/=     $' 

M29 DB 10,13,'             1.Biscuits                        tk/=     $' 
M30 DB 10,13,'             2.Roti                            tk/=     $'
M31 DB 10,13,'             3.Chips                           tk/=     $' 
M32 DB 10,13,'             4.Chia seeds                      tk/=     $' ;dry food
M33 DB 10,13,'             5.Nuts                            tk/=     $'
M34 DB 10,13,'             6.Chocolate                       tk/=     $'





NC DW 10, 13, 10, 13,"Sorry! No coupons available  :'( $" 
    
C DW 10, 13, 10, 13,"You've a coupon available!$"  

C1 DW 10, 13, 10, 13,"Congratulations! You got 100 tk/= off  :D$"

C2 DW 10, 13, 10, 13,"Congratulations! You got 220 tk/= off  :D$" 

C3 DW 10, 13, 10, 13,"Congratulations! You got 350 tk/= off  :D$" 

B1 DW 10, 13, 10, 13,"Your total bill is: $"

B2 DW 10, 13, 10, 13,"Cash Received: $" 

B3 DW 10, 13, 10, 13,"Cash Returned: $"  

PAID DW 0

PAY DW 10, 13, 10, 13,"Please pay the bill$"  

PAYING DW 10, 13, 10, 13,"Cash in (Taka) : $"

RETURNED DW 10, 13, 10, 13,"Here's the return (Taka) : $" 

SUM2 DW 0    

CASH_FLAG DB 0

COD_FLAG DB 0 

METHOD DW 10, 13, 10, 13,"Please enter your desired payment method: $" 

POPTION DW 10, 13, 10, 13,"Payment options: $"
 
c1METHOD DW 10, 13,"   1. Cash$"

c2METHOD DW 10, 13,"   2. COD $" 

THY DW 10, 13, 10, 13,"Thank you for shopping with us :D $"  

CM DW 10, 13, 10, 13,"Your coupon code is : $"

AM DW 10, 13, 10, 13,"To avail the coupon please enter the coupon correctly : $"

CF DW 0

CF2 DB 0

IM DW 10, 13, 10, 13,"Sorry! The code is INVALID  :'( . Please, try again. $"

DISCOUNT DW 0

INVF DW 0 

WRONGMSG DW 10, 13, 10, 13,"Unfortunately all your attempts were wrong. You couldn't avail the coupon this time  :'($" 

WRONGF DB 0  

DIVISOR DW 0  

RETURNS DW 0  





Mremove DW 10, 13,'                          9.Remove previous item$'  

previous_item DW 0

empty DW 10, 13, 10, 13, 'There is nothing to remove$'

remove_successful DW 10, 13, 10, 13, 'Last added item successfully removed$'

no_prev DW 10, 13, 10, 13, 'No new item added after removal$'

                                        

;Search System
SEARCHMENU DB 10,13,'                   7.Search Product$'
SEARCHMSG  DB 10,13,'1.Search by Product Code$'
           DB 10,13,'2.Search by Category$'
           DB 10,13,'Enter choice: $'
ENTERCODE  DB 10,13,'Enter product number: $'
ENTERCAT   DB 10,13,'Enter category number: $'
NORESULT   DB 10,13,'Invalid input or product not found!$'
AGAINMSG   DB 10,13,'Search again? (Y/N): $'
FOUNDMSG   DB 10,13,'Product found. Price: $'


; Rating System
ENTER_RATING DB 10,13,'Enter rating (1-5): $'
INVALID_RATING DB 10,13,'Invalid rating!$'
AVG_MSG DB 10,13,'Average Store Rating: $'
RATING_SUM DW 0
RATING_COUNT DW 0


; Admin Panel
quantity_arr DW 30 DUP(50)   ; initial stock for 30 products
;/////// admin /////
adminmenu DB 10,13,'       Admin Panel:'
          DB 10,13,'1. Update Price'
          DB 10,13,'2. Update Quantity'
          DB 10,13,'3. Add Item'
          DB 10,13,'4. Delete Item'
          DB 10,13,'5. Back to Main Menu$'


qtymsg DB 10,13,'Enter product number to update quantity: $'
qtyenter DB 10,13,'Enter new quantity: $'

addmsg DB 10,13,'Enter reserved product number to add item: $'

delmsg DB 10,13,'Enter product number to delete: $'

exists_msg DB 10,13,'Item already exists!$'
no_item_msg DB 10,13,'No item in this slot!$'
added_msg DB 10,13,'Item added successfully.$'
deleted_msg DB 10,13,'Item deleted successfully.$' 
 
.CODE 


MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  



firstloop: 
lea dx, M1
mov ah,9
int 21h 

lea dx, M2
mov ah,9
int 21h

lea dx, M3
mov ah,9
int 21h

lea dx, M4
mov ah,9
int 21h

lea dx, M5
mov ah,9
int 21h 

lea dx, M15
mov ah,9
int 21h 

lea dx, SEARCHMENU
mov ah,9
int 21h


lea dx, M18
mov ah,9
int 21h

lea dx, M19
mov ah,9
int 21h


lea dx,enternum
mov ah,9
int 21h 

mov ah,1
int 21h

mov cx,10;

sub al,30h
cmp al, 1
je staple

cmp al,5
je checkout 

cmp al,6
je admin                       

cmp al,7
je search_product
        
cmp al, 2
je spices

cmp al,3 
je dairy

cmp al,4
je dry


staple_start:
staple:

;1st price showing
mov store,0
lea dx, M6
mov ah, 9
int 21h

mov si,0
mov ax,price[si]
mov store,ax 

mov cx,2
mov bx,100



loop1:  
mov dx,0
mov ax,store
div bx
mov store,dx
mov dl,al 

add dl,30h
mov ah,2
int 21h

mov ax,bx
mov bl,10
div bl
mov bh,0
mov bx,ax
loop loop1

mov dx,store
add dx,30h
mov ah,2
int 21h


 ;2nd price showing
mov store,0
lea dx, M7
mov ah, 9
int 21h

mov si,2
mov ax,price[si]
mov store,ax 

mov cx,2
mov bx,100




loop2:  
mov dx,0
mov ax,store
div bx
mov store,dx
mov dl,al 

add dl,30h
mov ah,2
int 21h
                           
mov ax,bx
mov bl,10
div bl
mov bh,0
mov bx,ax
loop loop2

mov dx,store
add dx,30h
mov ah,2
int 21h

;3rd price showing
mov store,0
lea dx, M8
mov ah, 9
int 21h

mov si,4
mov ax,price[si]
mov store,ax 

mov cx,2
mov bx,100




loop3:  
mov dx,0
mov ax,store
div bx
mov store,dx
mov dl,al 

add dl,30h
mov ah,2
int 21h

mov ax,bx
mov bl,10
div bl
mov bh,0
mov bx,ax
loop loop3

mov dx,store
add dx,30h
mov ah,2
int 21h

;4th price showing
mov store,0
lea dx, M20
mov ah, 9
int 21h

mov si,6
mov ax,price[si]
mov store,ax 

mov cx,2
mov bx,100




loop4:  
mov dx,0
mov ax,store
div bx
mov store,dx
mov dl,al 

add dl,30h
mov ah,2
int 21h

mov ax,bx
mov bl,10
div bl
mov bh,0
mov bx,ax
loop loop4

mov dx,store
add dx,30h
mov ah,2
int 21h 

;5th price showing
mov store,0
lea dx, M21
mov ah, 9
int 21h

mov si,8
mov ax,price[si]
mov store,ax 

mov cx,2
mov bx,100




loop5:  
mov dx,0
mov ax,store
div bx
mov store,dx
mov dl,al 

add dl,30h
mov ah,2
int 21h

mov ax,bx
mov bl,10
div bl
mov bh,0
mov bx,ax
loop loop5

mov dx,store
add dx,30h
mov ah,2
int 21h

;6th price showing
mov store,10
lea dx, M22
mov ah, 9
int 21h

mov si,10
mov ax,price[si]
mov store,ax 

mov cx,2
mov bx,100


loop6:  
mov dx,0
mov ax,store
div bx
mov store,dx
mov dl,al 

add dl,30h
mov ah,2
int 21h

mov ax,bx
mov bl,10
div bl
mov bh,0
mov bx,ax
loop loop6

mov dx,store
add dx,30h
mov ah,2
int 21h

lea dx,Mcheck
mov ah,9
int 21h 

lea dx, mainmenu
mov ah,9
int 21h

lea dx, Mremove
mov ah,9
int 21h

lea dx,enternum
mov ah,9
int 21h 

mov ah,1
int 21h
sub al,30h

cmp al,7
je checkout

cmp al,1
je rice

cmp al,2
je lentil 

cmp al,3
je flour

cmp al,4
je sugar 

cmp al,5
je salt

cmp al,6 
je soya 

cmp al, 9
je remove_last_item

cmp al,8
jmp firstloopblock   



rice:
mov si,0
mov bx,price[si] 

lea dx, quantity
mov ah,9
int 21h

mov ah,1
int 21h
sub al,30h
mov ah,0
mul bx
add sum,ax 

mov previous_item, ax

jmp next  


lentil:
mov si,2
mov bx,price[si] 

lea dx, quantity
mov ah,9
int 21h

mov ah,1
int 21h
sub al,30h
mov ah,0
mul bx
add sum,ax

mov previous_item, ax

jmp next


flour:

mov si,4
mov bx,price[si] 

lea dx, quantity
mov ah,9
int 21h

mov ah,1
int 21h
sub al,30h
mov ah,0
mul bx
add sum,ax 

mov previous_item, ax

jmp next

sugar:
mov si,6
mov bx,price[si] 

lea dx, quantity
mov ah,9
int 21h

mov ah,1
int 21h
sub al,30h
mov ah,0
mul bx
add sum,ax

mov previous_item, ax

jmp next 

salt:
mov si,8
mov bx,price[si] 

lea dx, quantity
mov ah,9
int 21h

mov ah,1
int 21h
sub al,30h
mov ah,0
mul bx
add sum,ax 

mov previous_item, ax

jmp next

soya:
mov si,10
mov bx,price[si] 

lea dx, quantity
mov ah,9
int 21h

mov ah,1
int 21h
sub al,30h
mov ah,0
mul bx
add sum,ax 

mov previous_item, ax

jmp next
  

;Dairy products menu 

dairy_start:     

dairy:
    mov store,0
    lea dx, M12   
    mov ah,9
    int 21h
    mov si,24     
    mov ax, price[si]
    mov store,ax
      

    mov cx,2
    mov bx,100
dairy_loop1:  
    mov dx,0
    mov ax,store
    div bx
    mov store,dx
    mov dl,al  
    add dl,30h
    mov ah,2
    int 21h
    mov ax,bx
    mov bl,10
    div bl
    mov bh,0
    mov bx,ax
    loop dairy_loop1
    mov dx,store
    add dx,30h
    mov ah,2
    int 21h

    ;Milk powder
    mov store,0
    lea dx, M13    
    mov ah, 9
    int 21h
    mov si,26    
    mov ax, price[si]
    mov store,ax  

    mov cx,2
    mov bx,100
dairy_loop2:  
    mov dx,0
    mov ax,store
    div bx
    mov store,dx
    mov dl,al  
    add dl,30h
    mov ah,2
    int 21h
    mov ax,bx
    mov bl,10
    div bl
    mov bh,0
    mov bx,ax
    loop dairy_loop2
    mov dx,store
    add dx,30h
    mov ah,2
    int 21h

    ;Yogurt price display
    mov store,0
    lea dx, M14  
    mov ah,9
    int 21h
    mov si,28     
    mov ax, price[si]
    mov store,ax  

    mov cx,2
    mov bx,100
dairy_loop3:  
    mov dx,0
    mov ax,store
    div bx
    mov store,dx
    mov dl,al  
    add dl,30h
    mov ah,2
    int 21h
    mov ax,bx
    mov bl,10
    div bl
    mov bh,0
    mov bx,ax
    loop dairy_loop3
    mov dx,store
    add dx,30h
    mov ah,2
    int 21h

    ;Cheese
    mov store,0
    lea dx, M26    
    mov ah, 9
    int 21h
    mov si, 30     
    mov ax, price[si]
    mov store,ax  

    mov cx,2
    mov bx,100
dairy_loop4:  
    mov dx,0
    mov ax,store
    div bx
    mov store,dx
    mov dl,al  
    add dl,30h
    mov ah,2
    int 21h
    mov ax,bx
    mov bl,10
    div bl
    mov bh,0
    mov bx,ax
    loop dairy_loop4
    mov dx,store
    add dx,30h
    mov ah,2
    int 21h

    ;butter
    mov store,0
    lea dx, M27   
    mov ah, 9
    int 21h
    mov si, 32     
    mov ax, price[si]
    mov store,ax  

    mov cx,2
    mov bx,100
dairy_loop5:  
    mov dx,0
    mov ax,store
    div bx
    mov store,dx
    mov dl,al  
    add dl,30h
    mov ah,2
    int 21h
    mov ax,bx
    mov bl,10
    div bl
    mov bh,0
    mov bx,ax
    loop dairy_loop5
    mov dx,store
    add dx,30h
    mov ah,2
    int 21h

    ;liquid milk
    mov store,0
    lea dx, M28    
    mov ah, 9
    int 21h
    mov si, 34     
    mov ax, price[si]
    mov store,ax  

    mov cx,2
    mov bx,100
dairy_loop6:  
    mov dx,0
    mov ax,store
    div bx
    mov store,dx
    mov dl,al  
    add dl,30h
    mov ah,2
    int 21h
    mov ax,bx
    mov bl,10
    div bl
    mov bh,0
    mov bx,ax
    loop dairy_loop6
    mov dx,store
    add dx,30h
    mov ah,2
    int 21h

    ;Dairy menu
    lea dx,Mcheck
    mov ah,9
    int 21h   
    
    lea dx, mainmenu
    mov ah,9
    int 21h
    
    lea dx, Mremove
    mov ah,9
    int 21h   
    
    lea dx, enternum
    mov ah,9
    int 21h  
    
    mov ah,1
    int 21h
    sub al,30h  
    
    
    
    cmp al,7
    je checkout 
    
    cmp al,1
    je egg   
    
    cmp al,2
    je milk   
    
    cmp al,3
    je yogurt  
    
    cmp al,4
    je cheese 
    
    cmp al,5
    je butter 
    
    cmp al,6
    je liquidmilk 
    
    cmp al,9
    je remove_last_item  
    
    cmp al,8
    jmp firstloopblock   

;Dairy purchase 
egg:
 mov si,24      
 mov bx, price[si]
 lea dx, quantity
 mov ah,9
 int 21h
 mov ah,1      
 int 21h
 sub al,30h     
 mov ah,0
 mul bx          
 add sum,ax
    
 mov previous_item, ax
     
 jmp next_dairy

milk:
 mov si,26      
 mov bx, price[si]
 lea dx, quantity
 mov ah,9
 int 21h
 mov ah,1
 int 21h
 sub al,30h
 mov ah,0
 mul bx      
 add sum,ax
    
 mov previous_item, ax
    
 jmp next_dairy

yogurt:
 mov si, 28      
 mov bx, price[si]
 lea dx, quantity
 mov ah, 9
 int 21h
 mov ah, 1
 int 21h
 sub al, 30h
 mov ah, 0
 mul bx
 add sum, ax    
    
 mov previous_item, ax
    
 jmp next_dairy

cheese:
    mov si, 30      
    mov bx, price[si]
    lea dx, quantity
    mov ah, 9
    int 21h
    mov ah, 1
    int 21h
    sub al, 30h
    mov ah, 0
    mul bx
    add sum, ax  
    
    mov previous_item, ax
    
    jmp next_dairy 
    

butter:
    mov si,32     
    mov bx, price[si]
    lea dx, quantity
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    sub al,30h
    mov ah,0
    mul bx
    add sum, ax
    
    mov previous_item, ax
    
    jmp next_dairy

liquidmilk:
mov si,34      
mov bx, price[si]
lea dx, quantity
mov ah,9
int 21h
mov ah,1
int 21h
sub al,30h
mov ah,0
mul bx
add sum,ax

mov previous_item, ax
    
jmp next_dairy  
    
    
;Dry foods menu
 
dry_start:  
dry:

;1.biscuits  
  lea dx, M29 
  mov ah,9
  int 21h
  mov si,40     
  call show_price

;2.Roti
  lea dx, M30    
  mov ah,9
  int 21h
  mov si,38     
  call show_price

;3.Chips
  lea dx, M31   
  mov ah,9
  int 21h
  mov si,36   
  call show_price

;4.Chia seeds
  lea dx, M32   
  mov ah,9
  int 21h
  mov si,42    
  call show_price

;5.Nuts
 lea dx, M33
 mov ah,9
 int 21h
 mov si,44    
 call show_price

;6.Chocolate
  lea dx,M34 
  mov ah,9
  int 21h
  mov si,46     
  call show_price   
  

;Dry selection menu 
  lea dx, Mcheck
  mov ah,9
  int 21h  
  lea dx, mainmenu
  mov ah,9
  int 21h
  
  lea dx, Mremove
  mov ah,9
  int 21h
  
  lea dx, enternum
  mov ah,9
  int 21h  
  mov ah,1
  int 21h
  sub al,30h
    
  cmp al,7
  je checkout 
    
  cmp al,1
  je biscuits  
    
  cmp al,2
  je roti  
    
  cmp al,3
  je chips  
    
  cmp al,4
  je chia_seeds
    
  cmp al,5
  je nuts  
    
  cmp al,6
  je chocolate
  
  cmp al,9
  je remove_last_item  
    
  cmp al,8
  jmp firstloopblock    
    
    

;Dry purchase  
biscuits:
 mov si, 40      
 call get_quantity
 jmp next_dry

roti:
 mov si, 38      
 call get_quantity
 
 
 jmp next_dry

chips:
 mov si, 36     
 call get_quantity
 jmp next_dry

chia_seeds:
 mov si, 42       
 call get_quantity
 jmp next_dry

nuts:
 mov si, 44       
 call get_quantity
 jmp next_dry

chocolate:
 mov si,46      
 call get_quantity
 jmp next_dry    
   

; Spices products  

spices:
  ;Turmeric
  lea dx, M9     
  mov ah,9
  int 21h
  mov si,12     
  call show_price

  ;Chili
  lea dx,M10    
  mov ah,9
  int 21h
  mov si,14     
  call show_price

  ;Cumin
  lea dx,M11 
  mov ah,9
  int 21h
  mov si,16     
  call show_price

  ;Coriander
  lea dx, M23    
  mov ah,9
  int 21h
  mov si, 18     
  call show_price

  ;Mustard seeds
  lea dx,M24    
  mov ah,9
  int 21h
  mov si,20     
  call show_price

  ;Mixed masala
  lea dx,M25    
  mov ah,9
  int 21h
  mov si,22   
  call show_price
                       
                       
                       
  ; Spices item menu
  lea dx,Mcheck
  mov ah, 9 
  int 21h 
     
  lea dx,mainmenu
  mov ah, 9
  int 21h
  
  lea dx, Mremove
  mov ah,9
  int 21h 
    
  lea dx,enternum
  mov ah,9
  int 21h 
   
  mov ah,1
  int 21h
  sub al,30h
    
  cmp al,7
  je checkout 
    
  cmp al,1
  je turmeric 
    
  cmp al,2
  je chili  
  
  cmp al,3
  je cumin   
  
  cmp al,4
  je coriander 
    
  cmp al,5
  je mustard   
    
  cmp al, 6
  je masala 
  
  cmp al,9
  je remove_last_item   
    
  cmp al,8
  jmp firstloopblock        
    
    
; Spices Purchase  

turmeric:
mov si,12     
call get_quantity
jmp next_spice

chili:
mov si,14      
call get_quantity
jmp next_spice

cumin:
mov si,16   
call get_quantity
jmp next_spice

coriander:
mov si,18   
call get_quantity
jmp next_spice

mustard:
mov si,20     
call get_quantity
jmp next_spice

masala:
mov si,22      
call get_quantity
jmp next_spice
    
   
next:
loop staple_start

next_dairy:
loop dairy_start 

next_dry:
loop dry_start  

next_spice:
jmp spices

;///////////////////REMOVE LAST ITEM////////////////////
remove_last_item: 

cmp sum, 0
je not_removed1

cmp previous_item, 0
je not_removed2

mov ax,sum  
sub ax,previous_item
mov sum,ax

mov previous_item, 0  
lea dx, remove_successful
mov ah,9
int 21h

jmp firstloopblock
 
 
not_removed1:
lea dx, empty
mov ah,9
int 21h

jmp firstloopblock

not_removed2:
lea dx, no_prev
mov ah,9
int 21h

jmp firstloopblock


; SEARCH SYSTEM

search_product:
    lea dx, SEARCHMSG
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    sub al,30h

    cmp al,1
    je search_by_code
    cmp al,2
    je search_by_category

    lea dx, NORESULT
    mov ah,9
    int 21h
    jmp search_again


; Search by Product Code
search_by_code:
    lea dx, ENTERCODE
    mov ah,9
    int 21h

    ; READ PRODUCT CODE 
    mov ax,0
    mov bx,10

    ; read first digit
    mov ah,1
    int 21h
    sub al,30h
    mov ah,0
    mul bx            
    mov cx,ax

    ; read second digit
    mov ah,1
    int 21h
    sub al,30h
    mov ah,0
    add ax,cx         

    cmp ax,1
    jl not_found
    cmp ax,30
    jg not_found

    push ax                 ; save product code

    ; PRINT PRODUCT NAME
    call print_product_name

    pop ax                  ; restore product code

    ; CALCULATE PRICE INDEX 
    mov bl,2
    mul bl
    sub ax,2
    mov si,ax

    lea dx, FOUNDMSG
    mov ah,9
    int 21h

    call show_price

    jmp search_again

; Search by Category
search_by_category:
    lea dx, ENTERCAT
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    sub al,30h

    cmp al,1
    je staple
    cmp al,2
    je spices
    cmp al,3
    je dairy
    cmp al,4
    je dry

    lea dx, NORESULT
    mov ah,9
    int 21h
    jmp search_again


not_found:
    lea dx, NORESULT
    mov ah,9
    int 21h


search_again:
    lea dx, AGAINMSG
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    cmp al,'Y'
    je search_product
    cmp al,'y'
    je search_product

    jmp firstloopblock


checkout:
mov ax,sum
mov sum1,ax     ; storing the total price

lea dx,taka
mov ah,9
int 21h                                 

mov cx,3
mov bx,1000



checkoutloop:  
mov dx,0
mov ax,sum
div bx
mov sum,dx
mov dl,al  

add dl,30h
mov ah,2
int 21h                   ;4 digit output total price

mov ax,bx
mov bl,10
div bl
mov bh,0
mov bx,ax
loop checkoutloop

mov dx,sum 
add dx,30h
mov ah,2
int 21h 

JMP COUPONS                                                                                          

jmp firstloopblock    


; Admin login ////////////


admin:
lea dx, msgpin
mov ah,9
int 21h

mov inputpin,0
MOV CX, 4
MOV BX, 1000     

input:
    MOV AH, 1        
    INT 21H
    SUB AL, 30H    

    MOV AH, 0       
    MUL BX           
    ADD inputpin, AX 

    
    MOV AX, BX
    MOV DX, 0       
    MOV DL, 10      
    DIV DL          
    MOV BX, AX  

    LOOP input 

mov bx, pin
cmp bx, inputpin 
;je update1    
;je update_price
je admin_menu 

lea dx,invalid
mov ah,9
int 21h
jmp firstloopblock 

;/////////////////////////
;ADMIN PANEL

admin_menu:
lea dx, adminmenu
mov ah,9
int 21h

mov ah,1
int 21h
sub al,30h

cmp al,1
je update_price
cmp al,2
je update_quantity
cmp al,3
je add_item
cmp al,4
je delete_item
jmp firstloopblock
;/////////////////////////


;update1:
update_price:
lea dx, update    ;show product list
mov ah,9
int 21h

lea dx,priceupdate     ;which product to update?
mov ah,9
int 21h 

;mov cx, 1
mov bl, 10
mov itemno,0  


itemno1:
mov ah,1  ;1st digit
int 21h
sub al,30h
mov ah,0
mul bl                 
add itemno,ax

mov ax,bx
mov bx,10
div bl
mov bx,ax

mov ah,1   ;2 digit input
int 21h
sub al,30h
mov ah,0
add itemno,ax

    

;calculating price array offset
mov ax, itemno
mov bl,2 ;x 2 (DW=2 bytes)
mov bh,0
mul bl     
sub ax,2 ;adjust for 1-based index, if cheese in index 15 enter 16 and the price is fetched from 16*2 - 2 =30 which is same as 15*2=30   

mov si,ax  ;si =offset in price array  


;showing current price 


lea dx, prev_price_msg 
mov ah, 9
int 21h  
call show_price  

;entering new price

lea dx, priceenter
mov ah,9
int 21h

mov cx, 2
mov bl, 100  
mov updatedprice,0   

update2:
mov ah,1
int 21h
sub al,30h

mul bl
add updatedprice,ax

mov ax,bx
mov bx,10
div bl
mov bx,ax

loop update2  

mov ah,1
int 21h
sub al,30h
mov ah,0
add updatedprice,ax  

mov ax, updatedprice

mov price[si], ax  


; validate product exists
cmp price[si], 0
je no_item_price

no_item_price:
lea dx, no_item_msg
mov ah,9
int 21h

jmp admin_menu  ;//////////////////
 
firstloopblock:
;loop firstloop   
jmp firstloop 
   
;UPDATE QUANTITY 
update_quantity:
lea dx, qtymsg
mov ah,9
int 21h

lea dx, update    ;show product list
mov ah,9
int 21h

mov bl,10
mov itemno,0

; Get the item number to update
mov ah,1
int 21h
sub al,30h
mov ah,0
mul bl
add itemno,ax

mov ah,1
int 21h
sub al,30h
mov ah,0
add itemno,ax

mov ax,itemno
mov bl,2
mul bl
sub ax,2
mov si,ax

; CHECK ITEM AVAILABILITY
cmp price[si], 0      ; if price is 0 item not available
je no_item_qty        ; If item not found, jump to the error message
cmp quantity_arr[si], 0  ;if quantity is 0 item quantity not available
je no_item_qty        ; If quantity is also 0, jump to the error message

; Item exists, proceed with quantity update
lea dx, qtyenter
mov ah,9
int 21h

mov ah,1
int 21h
sub al,30h
mov ah,0
mov quantity_arr[si],ax

jmp admin_menu       ; After updating quantity, go back to admin menu

; ITEM NOT FOUND ERROR 
no_item_qty:
lea dx, no_item_msg
mov ah,9
int 21h
jmp admin_menu


; ADD ITEM

add_item:
lea dx, addmsg
mov ah,9
int 21h 

lea dx, update    ;show product list
mov ah,9
int 21h

mov bl,10
mov itemno,0

mov ah,1
int 21h
sub al,30h
mov ah,0
mul bl
add itemno,ax

mov ah,1
int 21h
sub al,30h
mov ah,0
add itemno,ax

mov ax,itemno
mov bl,2
mul bl
sub ax,2
mov si,ax

;check if slot is empty FIRST
cmp price[si], 0
jne item_exists
jmp continue_add

item_exists:
lea dx, exists_msg
mov ah,9
int 21h
jmp admin_menu

continue_add:


; enter price 
lea dx, priceenter
mov ah,9
int 21h
call read_number
mov price[si], ax

; enter quantity
lea dx, qtyenter
mov ah,9
int 21h
mov ah,1
int 21h
sub al,30h
mov ah,0
mov quantity_arr[si], ax

lea dx, added_msg
mov ah,9
int 21h
jmp admin_menu


mov ah,1
int 21h
sub al,30h
mov ah,0
mov quantity_arr[si],ax
jmp admin_menu 

;DELETE ITEM 

delete_item:
lea dx, delmsg
mov ah,9
int 21h

lea dx, update    ;show product list
mov ah,9
int 21h

mov bl,10
mov itemno,0

mov ah,1
int 21h
sub al,30h
mov ah,0
mul bl
add itemno,ax

mov ah,1
int 21h
sub al,30h
mov ah,0
add itemno,ax

mov ax,itemno
mov bl,2
mul bl
sub ax,2
mov si,ax

cmp price[si], 0
je nothing_to_delete_admin

mov price[si],0
mov quantity_arr[si],0  

lea dx, deleted_msg
mov ah,9
int 21h
jmp admin_menu

nothing_to_delete_admin:
lea dx, no_item_msg
mov ah,9
int 21h
jmp admin_menu

jmp admin_menu  
;admin ends here////////////////////  
 
  
;COUPON START ////////////                               
COUPONS:
                              
MOV AX, SUM1

CMP SUM1, 1000
JGE COUPON1
LEA DX, NC
MOV AH,9
INT 21h  
JMP BILL

COUPON1:

LEA DX, C
MOV AH,9
INT 21h 

CMP SUM1, 2000
JGE COUPON2

LEA DX, C1
MOV AH,9
INT 21h

MOV DISCOUNT, 100
MOV CF, 105 
JMP COUPON_CODE

COUPON2:
CMP SUM1, 3000
JGE COUPON3

LEA DX, C2
MOV AH,9
INT 21h

MOV DISCOUNT, 220
MOV CF, 202 
JMP COUPON_CODE 

COUPON3:
LEA DX, C3
MOV AH,9
INT 21h

MOV DISCOUNT, 350
MOV CF, 350 
JMP COUPON_CODE


                          
COUPON_CODE:

LEA DX, CM
MOV AH, 9
INT 21H


MOV AX, 0
MOV AX, CF 
MOV BX, 100
MOV CX, 3
       
       
CODE_SHOW:
DIV BL

MOV CF2, AH
MOV DL, AL 
ADD DL, 30H

MOV AH, 2 
INT 21H

MOV AX, 0
MOV DX, 0
MOV AX, BX                           

MOV DX, 10
DIV DL

MOV BX, AX
MOV AX, 0
MOV AL, CF2

LOOP CODE_SHOW

                           
CODE_INPUT_MSG:

CMP INVF, 2
JG WRONG_CODE

LEA DX, AM
MOV AH, 9
INT 21H 

MOV CF2, 0
MOV DL, 100
MOV CX, 3

CODE_INPUT:
MOV AH, 1
INT 21H

MOV AH, 0
SUB AL, 30H
MUL DL 

ADD CF2, AL
MOV AX, 0
MOV AL, DL
MOV DL, 10
DIV DL

MOV DL, AL
LOOP CODE_INPUT
                              
MOV AX, 0
MOV AX, CF
CMP CF2, AL
JE BILL
JNE INVALID_:

INVALID_:

LEA DX, IM
MOV AH, 9
INT 21H

INC INVF
JMP CODE_INPUT_MSG


WRONG_CODE:

LEA DX, WRONGMSG
MOV AH, 9
INT 21H

MOV WRONGF, 1
MOV DISCOUNT, 0

 
BILL:

LEA DX, B1
MOV AH,9
INT 21h


MOV DX, 0
MOV DX, DISCOUNT
SUB SUM1, DX

MOV BX, 0
MOV BX, SUM1
MOV SUM2, BX   


MOV CX,3
MOV BX,1000


FINAL_BILL:               
MOV DX,0
MOV AX,SUM1
DIV BX
MOV SUM1,DX
MOV DL,AL  

ADD DL,30H
MOV AH,2
INT 21H                           

MOV AX,BX
MOV BL,10
DIV BL
MOV BH,0
MOV BX,AX
LOOP FINAL_BILL

MOV DX, SUM1 
ADD DX,30H
MOV AH,2
INT 21h
    

PAY_NOW:
                            ;PAYMENT OPTIONS
LEA DX, POPTION
MOV AH, 9
INT 21H

LEA DX, C1METHOD
MOV AH, 9
INT 21H
                                   
LEA DX, C2METHOD
MOV AH, 9
INT 21H

LEA DX, METHOD
MOV AH, 9
INT 21H
       
MOV AH,1
INT 21H

sub AL, 30H
CMP AL, 2
JE TY


LEA DX, PAY
MOV AH, 9
INT 21H

LEA DX, PAYING
MOV AH, 9
INT 21H

MOV CX, 4
MOV DX, 1000

PAYMENT:               ;CASH PAYMENT
MOV AX, 0
MOV AH, 1
INT 21H 

MOV AH, 0
SUB AL, 30H
MOV DIVISOR, DX
MUL DX

ADD PAID, AX

MOV AX, 0
MOV AX, DIVISOR
MOV DX, 0
MOV DL, 10
DIV DL
MOV DX, 0
MOV DL, AL

LOOP PAYMENT


MOV BX, 0
MOV BX, SUM2
SUB PAID, BX


MOV CX, 4
MOV BX, 1000

LEA DX, RETURNED
MOV AH, 9
INT 21H

MOV AX, PAID

RETURN:                        ;CASH RETURN
MOV DX, 0
DIV BX

MOV RETURNS, DX

MOV DL, AL  
ADD DL, 30H
MOV AH, 2
INT 21H                            

MOV AX, BX
MOV BL, 10
DIV BL

MOV BH, 0
MOV BX, AX
MOV AX, RETURNS
LOOP RETURN

call rating_system


TY:
LEA DX, THY
MOV AH, 9
INT 21H


exit:
               
MOV AX,4C00H
INT 21H
                
        
MAIN ENDP 

show_price PROC  
    mov ax, price[si] 
    mov store, ax      
    mov cx, 2          
    mov bx, 100      
    
price_loop:  
    mov dx, 0
    mov ax, store
    div bx         ;AX= quotient, DX=remainder
    mov store, dx 
    mov dl, al     
    add dl, 30h     
    mov ah, 2         
    int 21h
    
    
    mov ax, bx
    mov bl, 10
    div bl             ;BX=BX/10
    mov bh, 0
    mov bx, ax
    loop price_loop
    
    ; Print last digit
    mov dx, store
    add dx, 30h
    mov ah, 2
    int 21h
    ret             ;returns to caller
show_price ENDP


get_quantity PROC  
    mov bx, price[si]  
    lea dx, quantity   
    mov ah, 9
    int 21h
    mov ah, 1         
    int 21h
    sub al, 30h  
    mov ah, 0
    mul bx          ;ax= p* q
    add sum, ax
    
    mov previous_item, ax
 
    ret           ;returns to caller
get_quantity ENDP


rating_system PROC
    lea dx, ENTER_RATING
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    sub al,30h

    cmp al,1
    jl bad_rating
    cmp al,5
    jg bad_rating

    mov ah,0
    add RATING_SUM, ax
    inc RATING_COUNT

    mov ax, RATING_SUM
    mov bx, RATING_COUNT
    mov dx,0
    div bx              ; AL = average

    push ax             ; SAVE AVERAGE

    lea dx, AVG_MSG
    mov ah,9
    int 21h

    pop ax              ; RESTORE AVERAGE

    mov dl, al
    add dl, '0'
    mov ah,2
    int 21h

    ret

bad_rating:
    lea dx, INVALID_RATING
    mov ah,9
    int 21h
    ret
rating_system ENDP

read_number PROC
    mov cx,2        ; 2 digit 
    mov bx,10
    mov ax,0
    mov updatedprice,0

read_loop:
    mov ah,1
    int 21h
    sub al,30h
    mov ah,0
    mul bx
    add updatedprice,ax
    loop read_loop

    mov ax,updatedprice
    ret
read_number ENDP


;PRINT PRODUCT NAME 
print_product_name PROC
    ; AX = product code
    cmp ax,1  
    je p1
    cmp ax,2  
    je p2
    cmp ax,3  
    je p3
    cmp ax,4  
    je p4
    cmp ax,5  
    je p5
    cmp ax,6  
    je p6
    cmp ax,7  
    je p7
    cmp ax,8  
    je p8
    cmp ax,9  
    je p9
    cmp ax,10 
    je p10
    cmp ax,11 
    je p11
    cmp ax,12 
    je p12
    cmp ax,13 
    je p13
    cmp ax,14 
    je p14
    cmp ax,15 
    je p15
    cmp ax,16 
    je p16
    cmp ax,17 
    je p17
    cmp ax,18 
    je p18
    cmp ax,19 
    je p19
    cmp ax,20 
    je p20
    cmp ax,21 
    je p21
    cmp ax,22 
    je p22
    cmp ax,23 
    je p23
    cmp ax,24 
    je p24
    ret

p1:  lea dx, M6   
jmp print_it
p2:  lea dx, M7   
jmp print_it
p3:  lea dx, M8   
jmp print_it
p4:  lea dx, M20  
jmp print_it
p5:  lea dx, M21  
jmp print_it
p6:  lea dx, M22  
jmp print_it
p7:  lea dx, M9   
jmp print_it
p8:  lea dx, M10  
jmp print_it
p9:  lea dx, M11  
jmp print_it
p10: lea dx, M23  
jmp print_it
p11: lea dx, M24  
jmp print_it
p12: lea dx, M25  
jmp print_it
p13: lea dx, M12  
jmp print_it
p14: lea dx, M13  
jmp print_it
p15: lea dx, M14  
jmp print_it
p16: lea dx, M26  
jmp print_it
p17: lea dx, M27  
jmp print_it
p18: lea dx, M28  
jmp print_it
p19: lea dx, M31  
jmp print_it
p20: lea dx, M29  
jmp print_it
p21: lea dx, M30  
jmp print_it
p22: lea dx, M32  
jmp print_it
p23: lea dx, M33  
jmp print_it
p24: lea dx, M34

print_it:
    mov ah,9
    int 21h
    ret
print_product_name ENDP


    END MAIN
