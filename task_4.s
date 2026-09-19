.section .bss
.globl ram
.lcomm ram, 256     # Reserve 256 bytes of RAM (uninitialized memory)
.section .text

.globl series_ram     # Make function visible to C program

series_ram:
    mov $0, %eax      #stores 0 for the start of the series
    mov $1, %ecx      #counter register starting at i = 1
    mov $10, %edx     #the limit for N = 10

sum_loop:
    add %ecx, %eax    #sets the sum to += i
    inc %ecx          #increments i
    cmp %edx, %ecx    #compares the current i with N
    jle sum_loop      #repeats the loop when i<=10

    #stores the total sum into 0x50
    mov $ram+0x50, %rdi
    movb %al, (%rdi)    #stores lower byte of sum into ram 0x50

    ret

    .section .note.GNU-stack, "", @progbits
