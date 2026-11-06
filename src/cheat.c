#include "common.h"
#include "cheat.h"

// https://decomp.me/scratch/H28Rq
//INCLUDE_ASM("asm/nonmatchings/cheat", func_800543A8); // ClearCheatBuffer()

void func_800543A8(void) {
    int i;

    for (i = 15; i >= 0; i--) recordedInputs[i] = 0;
    inputCount = 0;
    cheatFlags.cutscene = 0;
}

// https://decomp.me/scratch/Pg5rh
INCLUDE_ASM("asm/nonmatchings/cheat", func_800543DC); // ProcessCheatBuffer()

// https://decomp.me/scratch/0uq6C
INCLUDE_ASM("asm/nonmatchings/cheat", func_80054518); // ActivateCheat()
