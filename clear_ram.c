#include <stdio.h>
extern unsigned char ram[];     // RAM declared in assembly
extern void clear_ram(void);     // Assembly function

int main(void){
    for (int i = 0x50; i<= 0x58; i++){
        ram[i] = (char)0xFF;
    }

    printf("Before clearing");
    for (int i = 0x50; i <= 0x58; i++){
        printf("RAM[0x%02X] = 0x%02X\n", i, (unsigned char)ram[i]);
    }

    clear_ram();

    printf("\nAfter clear_ram():\n");
    for (int i = 0x50; i <= 0x58; i++){
        printf("RAM[0x%02X] = 0x%02X\n", i, (unsigned char)ram[i]);
    }

    return 0;
}