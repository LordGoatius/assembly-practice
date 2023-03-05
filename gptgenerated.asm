 message:
    .ascii "Hello, world!\0"

_start: 
    movq %rax, 1
    movq %rdi, 1
    movq %rsi, message     
    movq %rdx, 14
    syscall             

    movq %rax, 60  
    xor %rdi, %rdi    
    syscall 
