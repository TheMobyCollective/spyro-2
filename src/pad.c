#include "common.h"
#include "pad.h"

// https://decomp.me/scratch/ycbIU
INCLUDE_ASM("asm/nonmatchings/pad", func_80011F50);

// https://decomp.me/scratch/KZPjp
INCLUDE_ASM("asm/nonmatchings/pad", func_8001200C);

INCLUDE_ASM("asm/nonmatchings/pad", func_800121B0);

INCLUDE_ASM("asm/nonmatchings/pad", func_80012488);

// https://decomp.me/scratch/fSmuO
INCLUDE_ASM("asm/nonmatchings/pad", func_800125C8);

INCLUDE_ASM("asm/nonmatchings/pad", func_8001271C);

// https://decomp.me/scratch/068hb - 100%
//INCLUDE_ASM("asm/nonmatchings/pad", func_80012AC0);

void func_80012AC0(Pad* arg0) {
    int var_v1;

    *(int*)&arg0->state.stick = 0x7F7F7F7F;
    arg0->state.held = 0;
    arg0->state.pressed = 0;
    arg0->state.released = 0;
    arg0->buttonPressed = 1;
    arg0->dpadPressed = 1;
    arg0->unk4 = 0;
    for (var_v1 = 0; var_v1 < 4; var_v1++) {
        arg0->store[var_v1].held = 0;
        arg0->store[var_v1].pressed = 0;
        arg0->store[var_v1].released = 0;
        *(int*)&arg0->store[var_v1].stick = 0x7F7F7F7F;
    }
}

// https://decomp.me/scratch/mT4cz
//INCLUDE_ASM("asm/nonmatchings/pad", func_80012B1C);

void func_80012B1C(Pad* arg0, Pad* arg1) {
    func_8001B40C(arg1, arg0, 0x80);
    func_80012AC0(arg0);
}

// https://decomp.me/scratch/Br9rq
//INCLUDE_ASM("asm/nonmatchings/pad", func_80012B58);

void func_80012B58(void) {
    D_80068375 = 1;
    D_80068372 = 0;
    D_80068373 = 0;
    D_80068371 = 0;
}

