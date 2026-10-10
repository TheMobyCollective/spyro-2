#include "common.h"
#include "camera.h"
#include "update.h"
#include "spu.h"

INCLUDE_ASM("asm/nonmatchings/update", func_800159C8);

INCLUDE_ASM("asm/nonmatchings/update", func_80015BE4);

INCLUDE_ASM("asm/nonmatchings/update", func_800161C8);

INCLUDE_ASM("asm/nonmatchings/update", func_80016328);

// https://decomp.me/scratch/e0p81
//INCLUDE_ASM("asm/nonmatchings/update", func_80017164);
void func_80017164(void) {
    D_800698F0 = 0;
    D_800698EC = 0;
    D_800698F8 = 0;
    D_800698FC = 0;
    D_800681C8 = 3;
    func_80050AAC();
    D_80068304 = 1;
}

// https://decomp.me/scratch/h710m
//INCLUDE_ASM("asm/nonmatchings/update", func_800171BC);
void func_800171BC(void) {
    func_80017164();
    D_800698F0 = 1;
    D_800698EC = 1;
    D_80066F68 = 0xFF;
    D_800670C8 = 1;
    func_8001B3C8(&D_80067414, 0, 0x248);
    func_8001B3C8(&D_8006718C, 0, 0x248);
}

INCLUDE_ASM("asm/nonmatchings/update", func_8001722C);

// https://decomp.me/scratch/IMDJ4
//INCLUDE_ASM("asm/nonmatchings/update", func_800175A4);
void func_800175A4(void) {
    int var_a0;
    int var_v1;

    D_800698F0 = 0;
    D_800698F4 = 0;
    D_800698EC = 0;
    D_800698F8 = 0;
    var_a0 = 0;
    if (D_80066F90 == 0xB) {
        var_a0 = D_8006B084 == 0;
    }
    D_800698FC = var_a0;
    D_80069914 = 0;
    D_800681C8 = 4;
    func_800539A8(var_a0);
    func_800543A8();
    var_v1 = 0;
    D_80066F60 = 0;
    do {
        if (*(&D_8006470C + var_v1) != 0) {
            D_80066F60 += 1;
        }
        var_v1 += 1;
    } while (var_v1 < 0x14);
    func_80050AAC();
    func_80050720(D_80067020->spyroHurt, 0, 0x40);
    D_80068304 = 1;
}

INCLUDE_ASM("asm/nonmatchings/update", func_800176A4);

// https://decomp.me/scratch/LCVQN
//INCLUDE_ASM("asm/nonmatchings/update", func_80019230);
void func_80019230(int arg0) {
    int var_a0;

    var_a0 = arg0;
    D_800681C8 = 5;
    D_800698F0 = 0;
    D_800698EC = 0;
    D_8006991C = 0;
    D_800698FC = (int) *(&D_80063264 + var_a0);
    D_80066EEC = (int) *(&D_80063250 + var_a0);
    if ((var_a0 == 7) && (D_8006B08D != 0)) {
        var_a0 = 9;
    }
    if ((var_a0 == 0xB) && (D_8006B099 != 0)) {
        var_a0 = 0xD;
    }
    D_800698F4 = var_a0;
    if (var_a0 != 0) {
        D_80066F90 = (int) *(&D_8006323C + var_a0);
    }
    D_80067E04 = 0;
    D_80069941 = 0;
    D_80069942 = 0;
    D_80069943 = 0;
    D_800699B5 = 0;
    D_800699B6 = 0;
    D_800699B7 = 0;
    D_80066FD0 = D_80066F54;
    func_8004D158(0x1C000);
    func_80050AAC();
    D_80068304 = 1;
}

INCLUDE_ASM("asm/nonmatchings/update", func_80019364);

INCLUDE_ASM("asm/nonmatchings/update", func_80019928);

INCLUDE_ASM("asm/nonmatchings/update", func_80019C40);

// https://decomp.me/scratch/ESf4v
//INCLUDE_ASM("asm/nonmatchings/update", func_8001A290);
void func_8001A290(void) {
    D_800698F0 = 0;
    D_800698EC = 0;
    D_80066EEC = 0;
    D_80067E04 = 0;
    D_800681C8 = 8;
    D_8006715C = D_80066F90 + 0x10;
    func_80050AAC();
    D_80068304 = 1;
}

INCLUDE_ASM("asm/nonmatchings/update", func_8001A2FC);

// https://decomp.me/scratch/bUmyL
//INCLUDE_ASM("asm/nonmatchings/update", func_8001A6F8);
void func_8001A6F8(void) {
    D_800681C8 = 9;
    D_800698F0 = 0;
    D_80066F68 = 0;
    if ((D_80066F90 != 0xB) || (D_8006B084 != 0)) {
        D_8006715C = (int) *(&D_80064B84 + D_80066F54);
    } else {
        D_8006715C = D_80066F90;
    }
    D_80066EEC = 0;
    func_80050AAC();
    D_80068304 = 1;
}

INCLUDE_ASM("asm/nonmatchings/update", func_8001A79C);

INCLUDE_ASM("asm/nonmatchings/update", func_8001A910);

INCLUDE_ASM("asm/nonmatchings/update", func_8001A9B0);

INCLUDE_ASM("asm/nonmatchings/update", func_8001AAA4);

// https://decomp.me/scratch/IrXxG
//INCLUDE_ASM("asm/nonmatchings/update", func_8001AC20);
void func_8001AC20(void) {
    func_titlescreen_and_loading_80079DF0();
}

INCLUDE_ASM("asm/nonmatchings/update", func_8001AC40);

INCLUDE_ASM("asm/nonmatchings/update", func_8001AF18);

INCLUDE_ASM("asm/nonmatchings/update", func_8001B050);

// https://decomp.me/scratch/uE60Z - 100%
//INCLUDE_ASM("asm/nonmatchings/update", func_8001B140);
void func_8001B140(void) {
    D_800670C8 = 0;
    func_8001271C();
    func_80012CBC();
    switch (D_800681C8) {
        case 0:
            func_800159C8();
            break;
        case 1:
            func_80016328();
            break;
        case 2:
            if (g_Camera.m_CameraSubstate == 2) {
                D_80066F84();
                func_8001B050(0x11);
            } else {
                func_8001B050(0x10);
            }
            break;
        case 3:
            func_8001722C();
            break;
        case 4:
            func_800176A4();
            break;
        case 5:
            func_80019364();
            break;
        case 6:
            func_titlescreen_and_loading_800742F8();
            break;
        case 7:
            func_80019C40();
            break;
        case 8:
            func_8001A2FC();
            break;
        case 9:
            func_8001A79C();
            break;
        case 10:
            func_8001A9B0();
            break;
        case 11:
            func_8001AC20();
            break;
        case 12:
            func_8001AF18();
            break;
    }
    func_80050D38();
}
