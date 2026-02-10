#include "common.h"
#include "draw.h"

INCLUDE_ASM("asm/nonmatchings/draw", func_80013A14);

INCLUDE_ASM("asm/nonmatchings/draw", func_80013BC4);

// https://decomp.me/scratch/aDh7K
//INCLUDE_ASM("asm/nonmatchings/draw", func_80014504);

void func_80014504(void) {
    if ((D_800698F0 == 1) || (D_800698F0 >= 3)) {
        D_80069941 = 0;
        D_80069942 = 0;
        D_80069943 = 0;
        D_800699B5 = 0;
        D_800699B6 = 0;
        D_800699B7 = 0;
        if ((D_800698F8 != 0) && (D_800698EC != 0)) {
            func_8004D104(0x38);
            func_80052B88();
        }
    } else {
        func_800155A0(0x3D);
    }
}

INCLUDE_ASM("asm/nonmatchings/draw", func_800145AC);

INCLUDE_ASM("asm/nonmatchings/draw", func_800151F0);

// https://decomp.me/scratch/FNdjo
INCLUDE_ASM("asm/nonmatchings/draw", func_800153F8);

// https://decomp.me/scratch/ZyYH9
INCLUDE_ASM("asm/nonmatchings/draw", func_80015430);

// https://decomp.me/scratch/0uSL4
INCLUDE_ASM("asm/nonmatchings/draw", func_80015494);

// https://decomp.me/scratch/JU2pd
//INCLUDE_ASM("asm/nonmatchings/draw", func_800154F8);

void func_800154F8(void) {
    if (D_800698F0 == 0) {
        func_800155A0(0x3D);
        return;
    }
    if (D_800698F0 < 3) {
        func_titlescreen_and_loading_800733B0();
    }
}

// https://decomp.me/scratch/FTsXc
//INCLUDE_ASM("asm/nonmatchings/draw", func_80015540);

void func_80015540(void) {
    func_credits_8006EE18();
}

// https://decomp.me/scratch/JHfp6
//INCLUDE_ASM("asm/nonmatchings/draw", func_80015560);

void func_80015560(void) {
    func_titlescreen_and_loading_8007BFC4();
}

// https://decomp.me/scratch/SCZZc
//INCLUDE_ASM("asm/nonmatchings/draw", func_80015580);

void func_80015580(void) {
    func_800155A0(0x3D);
}


INCLUDE_ASM("asm/nonmatchings/draw", func_800155A0);

INCLUDE_ASM("asm/nonmatchings/draw", func_800156FC);
