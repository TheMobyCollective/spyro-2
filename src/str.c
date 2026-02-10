#include "common.h"
#include "str.h"

// https://decomp.me/scratch/9CeXG
INCLUDE_ASM("asm/nonmatchings/str", func_80012B84);

// https://decomp.me/scratch/ve60n
//INCLUDE_ASM("asm/nonmatchings/str", func_80012C1C);

void func_80012C1C(int arg0, int arg1, int arg2) {
    D_80068334 = arg0;
    D_80068338 = arg0;
    D_8006833C = arg1;
    D_80068340 = arg2;
    D_800682F4 = 8;
    D_80068304 = 0;
}

// https://decomp.me/scratch/fsumm
//INCLUDE_ASM("asm/nonmatchings/str", func_80012C58);

void func_80012C58(int arg0, int arg1, int arg2) {
    if (*D_8006836C > 0) {
        D_8006835C = arg0;
        D_80068360 = arg0;
        D_80068364 = arg1;
        D_80068368 = arg2;
        if (D_800682F4 != 5) {
            D_800682F4 = 8;
        }
        D_80068304 = 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/str", func_80012CBC);

// https://decomp.me/scratch/YpxGY
INCLUDE_ASM("asm/nonmatchings/str", func_80013690);

// https://decomp.me/scratch/hSyXY
INCLUDE_ASM("asm/nonmatchings/str", func_8001379C);

INCLUDE_ASM("asm/nonmatchings/str", func_80013810);

INCLUDE_ASM("asm/nonmatchings/str", func_80013918);

INCLUDE_RODATA("asm/nonmatchings/str", D_800106F4);
