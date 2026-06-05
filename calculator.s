.intel_syntax noprefix
.global main
.extern printf

.section .data
num1:
    .quad 15             # First number
num2:
    .quad 27             # Second number
format_string:
    .ascii "The result of %d + %d is: %d\15\12\0"

.section .text
main:
    sub rsp, 40          # Setup stack pointer

    # 1. Load data into registers
    mov rax, [num1]      # Load 15 into RAX
    mov rbx, [num2]      # Load 27 into RBX

    # 2. Add numbers
    mov rcx, rax         # Move 15 to RCX
    add rcx, rbx         # Add 27 to RCX (RCX = 42)

    # 3. Setup arguments for printf
    mov r9, rcx          # Arg 4: Result (42)
    mov r8, rbx          # Arg 3: num2 (27)
    mov rdx, rax         # Arg 2: num1 (15)
    lea rcx, [rip + format_string] # Arg 1: Format string

    call printf          # Call printf function

    xor eax, eax         # Set return value to 0
    add rsp, 40          # Restore stack pointer
    ret                  # Exit program