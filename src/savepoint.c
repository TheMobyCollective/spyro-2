#include "common.h"
#include "savepoint.h"

INCLUDE_ASM("asm/nonmatchings/savepoint", func_8004C0C8);

// https://decomp.me/scratch/wppGF
//INCLUDE_ASM("asm/nonmatchings/savepoint", func_8004C1AC);

void func_8004C1AC(Savepoint* arg0) {
    if (arg0->updated != 0) {
        func_8001B40C((int*)&D_8006718C, (int*)arg0, 0x248);
    } else {
        func_8001B3C8(&D_8006718C, 0, 0x248);
    }
    func_80017164();
    D_80067EC4 = 0;
}


INCLUDE_ASM("asm/nonmatchings/savepoint", func_8004C214);

// Seems to break Decomp.me at the moment?
INCLUDE_ASM("asm/nonmatchings/savepoint", func_8004C31C);

INCLUDE_ASM("asm/nonmatchings/savepoint", func_8004C3D4);
