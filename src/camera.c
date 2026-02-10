#include "common.h"
#include "camera.h"

// https://decomp.me/scratch/Y1tDj
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001D87C);

void func_8001D87C(void) {
    func_8001D8A4();
    func_80021DC0();
}

INCLUDE_ASM("asm/nonmatchings/camera", func_8001D8A4);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001DB58);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001DC6C);

// https://decomp.me/scratch/dg0nn
INCLUDE_ASM("asm/nonmatchings/camera", func_8001E204);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001E270);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001E2E4);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001E454);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001E808);

// https://decomp.me/scratch/zNKgH
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001ECCC);

void func_8001ECCC(CameraPosition* arg0, CameraPosition* arg1, int arg2) {
    int temp_v1;

    temp_v1 = (arg1->pos.azimuth + arg2) & 0xFFF;
    arg0->pos.azimuth = temp_v1;
    if (temp_v1 >= 0x801) {
        arg0->pos.azimuth = (int) (temp_v1 - 0x1000);
    }
    arg0->pos.elevation = (int) arg1->pos.elevation;
    arg0->pos.radius = (int) arg1->pos.radius;
    arg0->yaw = (int) arg1->yaw;
    arg0->pitch = (int) arg1->pitch;
}

INCLUDE_ASM("asm/nonmatchings/camera", func_8001ED20);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001EE18);

// https://decomp.me/scratch/FuNiS
INCLUDE_ASM("asm/nonmatchings/camera", func_8001EFA8);

// https://decomp.me/scratch/GBd7i
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001F008);

void func_8001F008(CameraPosition* arg0) {
    arg0->pos.azimuth = 0;
    arg0->pos.elevation = 0;
    arg0->pos.radius = 0;
    arg0->yaw = 0;
    arg0->pitch = 0;
}


INCLUDE_ASM("asm/nonmatchings/camera", func_8001F020);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F0BC);

// https://decomp.me/scratch/mW3JY
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001F1E4);

void func_8001F1E4(int arg0, int arg1) {
    D_80067FEC = arg1;
    D_80067FF0 = arg0;
}

// https://decomp.me/scratch/CRD8v
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F1FC);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F24C);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F2E4);

// https://decomp.me/scratch/KXnuG
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F4A4);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F524);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F618);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F814);

// https://decomp.me/scratch/eaquc
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001FA24);

void func_8001FA24(void) {
    if (D_800698BA != 0) {
        D_80067EDC = 0;
        return;
    }
    D_80067EDC = 7;
}

INCLUDE_ASM("asm/nonmatchings/camera", func_8001FA58);

INCLUDE_ASM("asm/nonmatchings/camera", func_80021558);

INCLUDE_ASM("asm/nonmatchings/camera", func_800216D8);

INCLUDE_ASM("asm/nonmatchings/camera", func_80021DC0);
