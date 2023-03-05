
    .global _start

    .text
_start:
    movq %rdi, 1
    movq %rax, 1
    movq %rsi, message
    movq %rdx, 12
    syscall

    movq %rax, 60
    xor %rdi, %rdi
    syscall
    .data
message:
    .asciz "Hello World"
