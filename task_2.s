.section .bss
.globl ram
.lcomm ram, 256     # Reserve 256 bytes of RAM (uninitialized memory)
.section .text

.globl fill_ram     # Make function visible to C program
fill_ram:
 mov $ram+0x50,%edi
 movb $0xFF,(%edi)

 mov $ram+0x51,%edi
 movb $0xFF,(%edi)

 mov $ram+0x52,%edi
 movb $0xFF,(%edi)

 mov $ram+0x53,%edi
 movb $0xFF,(%edi)

 mov $ram+0x54,%edi
 movb $0xFF,(%edi)

 mov $ram+0x55,%edi
 movb $0xFF,(%edi)

 mov $ram+0x56,%edi
 movb $0xFF,(%edi)

 mov $ram+0x57,%edi
 movb $0xFF,(%edi)

 mov $ram+0x58,%edi
 movb $0xFF,(%edi)

ret                 # Return control back to C program

.section .note.GNU-stack, "", @progbits



