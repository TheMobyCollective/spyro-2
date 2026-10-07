#include "common.h"
#include "hud.h"
#include "spu.h"

INCLUDE_ASM("asm/nonmatchings/hud", func_8005199C);

// https://decomp.me/scratch/Mphfx
//INCLUDE_ASM("asm/nonmatchings/hud", func_80051D00);
void func_80051D00(SpriteInfo* arg0, int arg1) {
    arg0->x = 0;
    arg0->clutX = 0;
    arg0->y = 0xFF;
    arg0->clutY = arg1;
}

INCLUDE_ASM("asm/nonmatchings/hud", func_80051D18);

INCLUDE_ASM("asm/nonmatchings/hud", func_80051D94);

INCLUDE_ASM("asm/nonmatchings/hud", func_800520CC);

INCLUDE_ASM("asm/nonmatchings/hud", func_80052328);

// https://decomp.me/scratch/VhVBi
//INCLUDE_ASM("asm/nonmatchings/hud", func_80052430);
void func_80052430(int arg0, int arg1, int arg2) {
    unsigned int *primitive;
    func_80052328(arg0, arg1, arg2);
    primitive = func_800520CC(&D_80063544, 0xF8, arg1, 2);
    primitive[1] = 0x64C0C0C0;
    func_80052328(0xF0, arg1, arg2);
}

INCLUDE_ASM("asm/nonmatchings/hud", func_80052498);

INCLUDE_ASM("asm/nonmatchings/hud", func_8005251C);

INCLUDE_ASM("asm/nonmatchings/hud", func_80052690);

INCLUDE_ASM("asm/nonmatchings/hud", func_80052960);

INCLUDE_ASM("asm/nonmatchings/hud", func_80052B88);

INCLUDE_ASM("asm/nonmatchings/hud", func_80052D84);

INCLUDE_ASM("asm/nonmatchings/hud", func_80052FE4);

INCLUDE_ASM("asm/nonmatchings/hud", func_8005304C);

INCLUDE_ASM("asm/nonmatchings/hud", func_80053454);

INCLUDE_ASM("asm/nonmatchings/hud", func_8005389C);

// https://decomp.me/scratch/CBsJ5
INCLUDE_ASM("asm/nonmatchings/hud", func_800539A8);

INCLUDE_ASM("asm/nonmatchings/hud", func_80053A24);

INCLUDE_ASM("asm/nonmatchings/hud", func_80053D28);

INCLUDE_ASM("asm/nonmatchings/hud", func_80053E78);

// https://decomp.me/scratch/6Kf9h
INCLUDE_ASM("asm/nonmatchings/hud", func_800540B0);

// https://decomp.me/scratch/urcn8
//INCLUDE_ASM("asm/nonmatchings/hud", func_80054170);
void func_80054170(void) {
    func_80050720(D_80067020->spyroHurt, 0, 0);
}

// https://decomp.me/scratch/CnzzI
//INCLUDE_ASM("asm/nonmatchings/hud", func_800541A0);
void func_800541A0(void) {
    func_80050720(D_80067020->pauseEnter, 0, 0);
}

// https://decomp.me/scratch/C3wBx
//INCLUDE_ASM("asm/nonmatchings/hud", func_800541D0);
void func_800541D0(void) {
    int temp_v0;

    temp_v0 = func_80050720(D_80067020->pauseExit, 0, 0);
    if (temp_v0 >= 0) {
        func_80050CF4(temp_v0, 0x640);
    }
}

// https://decomp.me/scratch/ZoTFQ
//INCLUDE_ASM("asm/nonmatchings/hud", func_80054210);
void func_80054210(void) {
    int temp_v0;

    temp_v0 = func_80050720(D_80067020->underwaterHit, 0, 0);
    if (temp_v0 >= 0) {
        func_80050CF4(temp_v0, 0xC00);
    }
}

// https://decomp.me/scratch/i6oJ6
//INCLUDE_ASM("asm/nonmatchings/hud", func_80054250);
void func_80054250(void) {
    func_80050720(D_80067020->gemCollect, 0, 0);
}

// https://decomp.me/scratch/44uL7
//INCLUDE_ASM("asm/nonmatchings/hud", func_80054280);
void func_80054280(void) {
    int temp_v0;

    temp_v0 = func_80050720(D_80067020->underwaterHit, 0, 0);
    if (temp_v0 >= 0) {
        func_80050CF4(temp_v0, 0x2000);
        func_80050C64(temp_v0, 0x600);
    }
}

// https://decomp.me/scratch/80Txx
//INCLUDE_ASM("asm/nonmatchings/hud", func_800542D8);
void func_800542D8(void) {
    int temp_v0;

    temp_v0 = func_80050720(D_80067020->gemChime, 0, 0);
    if (temp_v0 >= 0) {
        func_80050CF4(temp_v0, 0x2000);
    }
}

// https://decomp.me/scratch/DQDpd
//INCLUDE_ASM("asm/nonmatchings/hud", func_80054318);
void func_80054318(void) {
    int temp_v0;

    temp_v0 = func_80050720(D_80067020->guidebookPageTurn, 0, 0);
    if (temp_v0 >= 0) {
        func_80050CF4(temp_v0, 0xC00);
        func_80050C64(temp_v0, 0x1200 - ((func_80059D2C() % 5) << 7));
    }
}
