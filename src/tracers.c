#include "common.h"
#include "tracers.h"

// https://decomp.me/scratch/HSPtC
INCLUDE_ASM("asm/nonmatchings/tracers", func_800502FC);

// https://decomp.me/scratch/mCnvb
//INCLUDE_ASM("asm/nonmatchings/tracers", func_800504A0);
void func_800504A0(int* arg0) {
    *arg0 = 0;
}

// https://decomp.me/scratch/QVVse Something is different between Spyro 2 and Spyro 3 unless I missed something
//INCLUDE_ASM("asm/nonmatchings/tracers", func_800504A8); // UpdateTracers()

void func_800504A8(void) {
    int i;

    for (i = 0; i < 0x20; i++) {
        if (D_8006A2B4[i].unk0) {

            D_8006A2B4[i].unk64 += 1; // doesn't match with ++ unless you shove it in a local variable?
            if (D_8006A2B4[i].unk64 >= D_8006A2B4[i].unk65) {
                D_8006A2B4[i].unk64 = 0;
            }

            if (D_8006A2B4[i].unk67) {
                func_8001C1C4(&D_8006A2B4[i].unk4[D_8006A2B4[i].unk64], D_8006A2B4[i].unk0);
            } else {
                func_8001C13C(&D_8006A2B4[i].unk4[D_8006A2B4[i].unk64], D_8006A2B4[i].unk0);
            }

        }
    }
}

// https://decomp.me/scratch/RZB5m
//INCLUDE_ASM("asm/nonmatchings/tracers", func_800505B8);

Unknown* func_800505B8(int arg0, int arg1, int arg2, int arg3, int arg4) {
    int i;

    for (i = 0; i < 8; i++) {
        if (D_80069F30[i].unk0 == 0) {
            D_80069F30[i].unk0 = arg0;
            D_80069F30[i].unk4 = arg1;
            D_80069F30[i].unk8 = arg2;
            D_80069F30[i].unkC = arg3;
            D_80069F30[i].unk10 = arg4;
            return &D_80069F30[i];
        }
    }
    return 0;
}

// https://decomp.me/scratch/IMDX9
//INCLUDE_ASM("asm/nonmatchings/tracers", func_80050640);
void func_80050640(int* arg0) { //SetToZero
    *arg0 = 0;
}

