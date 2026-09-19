#include <stdio.h>
extern unsigned char ram[];     // RAM declared in assembly
extern void series_ram(void);     // Assembly function

int main(void){
    series_ram();

    //print result stored at 0x50
    unsigned char result = (unsigned char)ram[0x50];

    printf("Sum stored: %d\n", result);

    return 0;
}