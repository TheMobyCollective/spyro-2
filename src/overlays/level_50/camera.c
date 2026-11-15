#include "common.h"

INCLUDE_ASM("asm/nonmatchings/overlays/level_50/camera", func_level_50_8006FE18);

// https://decomp.me/scratch/29PcB
//INCLUDE_ASM("asm/nonmatchings/overlays/level_50/camera", func_level_50_80070308);

void func_8001DB58();                                  /* extern */
void func_8001DC6C();                                  /* extern */

void func_level_50_80070308(void) {
    func_8001DB58();
    func_8001DC6C();
}

// https://decomp.me/scratch/1gX18
INCLUDE_ASM("asm/nonmatchings/overlays/level_50/camera", func_level_50_80070330);

INCLUDE_ASM("asm/nonmatchings/overlays/level_50/camera", func_level_50_80070408);
