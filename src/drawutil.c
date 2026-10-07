#include "common.h"
#include "drawutil.h"

// https://decomp.me/scratch/xHP1X
//INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004C484);
void func_8004C484(void) {
    Rect sp10;

    func_800557E4(0);
    func_80058EDC(0);
    sp10.w = 0x200;
    sp10.x = 0;
    sp10.y = 0;
    sp10.h = 0xF0;
    func_80055968(&sp10, 0, 0, 0);
    sp10.y = 0xE4;
    func_80055968(&sp10, 0, 0, 0);
    func_800557E4(0);
}

// https://decomp.me/scratch/GvRX1
//INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004C4FC);

void func_8004C4FC(void) {
    func_8001B3E4(D_80067034 - 0x3000, 0, 0x1C00);
    func_80023BB4();
}

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004C534);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004C66C);

// https://decomp.me/scratch/MV0Fg
//INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004D104);

void func_8004D104(int arg0) {
    int temp_s0;

    temp_s0 = D_80067030;
    func_8005A01C(temp_s0, 1, 0, arg0, 0);
    func_8001B390(temp_s0);
    D_80067030 = temp_s0 + 0xC;
}

// https://decomp.me/scratch/MV2Rh
//INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004D158);
void func_8004D158(int arg0) {
    int temp_s0;
    int temp_v0;

    func_800557E4(0);
    D_80067170 = arg0;
    temp_v0 = D_8006B2A4 - arg0;
    temp_s0 = temp_v0 - arg0;
    D_8006B2A0 = temp_v0;
    D_8006B29C = temp_s0;
    D_80069998 = temp_s0;
    D_80069A0C = temp_v0;
}

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004D1BC);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004D2D8);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004D348);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004D3FC);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004D508);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004D604);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004D748);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004D810);

// https://decomp.me/scratch/siIy1
//INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004D984);
void func_8004D984(int arg0, int arg1, int arg2, int arg3) {
    func_8004A374(arg0, arg1 - (func_8004A7DC(arg0) >> 1), arg2, arg3, 0);
}

// https://decomp.me/scratch/i8Up4
//INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004D9EC);
void func_8004D9EC(int arg0, int arg1, int arg2, int arg3) {
    int temp_v0;

    temp_v0 = func_8004A7DC(arg0) >> 1;
    func_8004D508((arg1 - temp_v0) - 8, arg1 + temp_v0 + 8, arg2 - 2, arg2 + 0xB);
    func_8004D984(arg0, arg1, arg2, arg3);
}

// https://decomp.me/scratch/ncQCJ
//INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004DA6C);
void func_8004DA6C(int arg0, int arg1, int arg2, int arg3) {
    func_8004A374(arg0, arg1 - func_8004A7DC(arg0), arg2, arg3, 0);
}

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004DAD0);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004DBD8);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004DD28);

// https://decomp.me/scratch/UY60J
//INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004DD94);
void func_8004DD94(void) {
    Rect sp12;

    func_800557E4(0);
    func_80059FBC(0x7A000);
    func_8005A0FC(D_8006B29C, 0x6000);
    do {

    } while (func_8005A15C(0) == 0);
    sp12.x = 512;
    sp12.y = 128;
    sp12.w = 192;
    sp12.h = 64;
    func_800559F8(&sp12, D_8006B29C);
    func_800557E4(0);
    D_80069918 = 0;
}

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004DE1C);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004DEE8);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004DF84);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004E14C);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004E1CC);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004E238);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004E544);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004E62C);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004E6CC);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004E7F8);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004ECBC);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004F200);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004F26C);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004F2DC);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004F348);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004F3B8);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004F4A8);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004F6F4);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004F994);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8004FB48);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_8005004C);

INCLUDE_ASM("asm/nonmatchings/drawutil", func_800501C0);
