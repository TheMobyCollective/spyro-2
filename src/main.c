#include "common.h"
#include "main.h"

// https://decomp.me/scratch/2fpHs
//INCLUDE_ASM("asm/nonmatchings/main", func_80011ADC);

void func_80011ADC(void) {
    func_80054834(); //__main
    func_80011E9C(); //init
    do {
        func_8001B140(); //update
        func_800156FC(); //draw
    } while (1);
}
