#include "common.h"
#include "str.h"

extern int D_80067118;
extern int D_80067740;
extern unsigned char *D_8006B29C; // ptr to CDLoadSync buffer

// https://decomp.me/scratch/ExFe2
//INCLUDE_ASM("asm/nonmatchings/overlays/guidebook/guidebook", func_guidebook_8006D5B4);

void func_guidebook_8006D5B4(int arg0, int arg1) {
    short sp10[4];
    unsigned char **bufPtr;

    func_800557E4(0);
    bufPtr = &D_8006B29C;

    // call CDLoadSync
    func_80013810(
        cdState.wadSector,
        *bufPtr,
        0xB800,
        (D_80067118 * 0x19E000) + D_80067740 + (arg0 * 0xB800)
    );

    func_800557E4(0);

    sp10[0] = 0x300;
    sp10[1] = arg1 + 0x100;
    sp10[2] = 0x100;
    sp10[3] = 1;

    func_800559F8(sp10, *bufPtr + 0x1C);

    func_800557E4(0);

    if (arg1 < 4) {
        sp10[0] = (arg1 << 7) + 0x200;
        sp10[1] = 0;
    } else {
        sp10[0] = (arg1 << 7) + 0x100;
        sp10[1] = 0x108;
    }

    sp10[2] = 0x70;
    sp10[3] = 0xC8;

    func_800559F8(sp10, D_8006B29C + 0x21C);
}

INCLUDE_ASM("asm/nonmatchings/overlays/guidebook/guidebook", func_guidebook_8006D6E8);

INCLUDE_ASM("asm/nonmatchings/overlays/guidebook/guidebook", func_guidebook_8006DB50);

INCLUDE_ASM("asm/nonmatchings/overlays/guidebook/guidebook", func_guidebook_8006DF80);

// https://decomp.me/scratch/KFN0Q
//INCLUDE_ASM("asm/nonmatchings/overlays/guidebook/guidebook", func_guidebook_8006E150);

void func_guidebook_8006E150(void) {
    func_guidebook_8006E544(-0x100, 1, 0xD, 0, 0x100, 0, 0x1000, 0x80, 0);
    func_guidebook_8006E544(-0xE0, 0, 0xE, 0, 0x100, 0, 0x1000, 0x80, 0);
    func_guidebook_8006E544(-0xE0, 0xD1, 0xF, 0, 0x100, 0, 0x1000, 0x80, 0);
    func_guidebook_8006E544(-0x10, 0, 0x10, 0, 0x100, 0, 0x1000, 0x80, 0);
    func_guidebook_8006E544(-0x10, 0xD0, 0x12, 0, 0x100, 0, 0x1000, 0x80, 0);
}

// https://decomp.me/scratch/XUKvf
//INCLUDE_ASM("asm/nonmatchings/overlays/guidebook/guidebook", func_guidebook_8006E254);

void func_guidebook_8006E254(void) {
    func_guidebook_8006E544(0xE0, 1, 0xD, 0, 0x100, 0, 0x1000, 0x80, 1);
    func_guidebook_8006E544(0x10, 0, 0xE, 0, 0x100, 0, 0x1000, 0x80, 1);
    func_guidebook_8006E544(0x10, 0xD1, 0xF, 0, 0x100, 0, 0x1000, 0x80, 1);
    func_guidebook_8006E544(0, 0, 0x11, 0, 0x100, 0, 0x1000, 0x80, 0);
    func_guidebook_8006E544(0, 0xD0, 0x13, 0, 0x100, 0, 0x1000, 0x80, 0);
}

INCLUDE_ASM("asm/nonmatchings/overlays/guidebook/guidebook", func_guidebook_8006E364);

INCLUDE_ASM("asm/nonmatchings/overlays/guidebook/guidebook", func_guidebook_8006E544);

INCLUDE_RODATA("asm/nonmatchings/overlays/guidebook/guidebook", D_guidebook_8006D2B8);
