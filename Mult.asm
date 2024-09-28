section .data
    msg db "The result is: ", 0
    newline db 0xA, 0

section .bss
    result resb 4  ; Reserve space for result

section .text
    global _start

_start:
    ; Load the values to multiply into registers
    mov eax, 6       ; First number
    mov ebx, 7       ; Second number

    ; Multiply eax by ebx, result goes to eax
    mul ebx

    ; Store result for later use
    mov [result], eax

    ; Print the result (here you'd normally use a system call like write to display)
    
    ; Exit the program
    mov eax, 1        ; syscall number for exit
    xor ebx, ebx      ; exit code 0
    int 0x80          ; interrupt to call kernel
