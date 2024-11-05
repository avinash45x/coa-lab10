org 100h             ; Set the origin for .COM program


start:
    mov cx, 26       ; Set the loop counter for 26 letters (A to Z)
    mov dl, 'A'      ; Initialize DL with ASCII code for 'A'

print_loop:
    ; Print the character in DL
    mov ah, 02h      ; DOS function 02h (print character in DL)
    int 21h          ; Call DOS interrupt to print character

    ; Increment DL to move to the next letter
    inc dl           ; Move to the next ASCII character

    ; Decrement CX and check if it's zero
    loop print_loop  ; Repeat until CX is zero

    ; Exit the program
    mov ah, 4Ch      ; DOS function 4Ch (exit program)
    int 21h          ; Call DOS interrupt to exit
