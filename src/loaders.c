#include "common.h"
#include "loaders.h"

INCLUDE_ASM("asm/nonmatchings/loaders", func_8001C454);

INCLUDE_ASM("asm/nonmatchings/loaders", func_8001C510);

INCLUDE_ASM("asm/nonmatchings/loaders", func_8001C5EC);

INCLUDE_ASM("asm/nonmatchings/loaders", func_8001C68C);

INCLUDE_ASM("asm/nonmatchings/loaders", func_8001C734);

// https://decomp.me/scratch/19Z89 - 100%
//INCLUDE_ASM("asm/nonmatchings/loaders", func_8001D5FC);

// Load sound table, might take in a struct ptr rather than a SoundTable pointer?
void func_8001D5FC(char* pData, int pPatchAddressesInTable) {
    int soundCount;

    D_80067020 = (SoundTable *)pData; // sound table
    pData += 0x100; // sizeof(SoundTable), but currently this is minimal

    soundCount = *(int*)pData;
    pData += sizeof(int);

    D_80067068 = (SoundDefinitions*)pData; // spu data

    if (pPatchAddressesInTable) {
        while (--soundCount >= 0) {
            D_80067068[soundCount].m_Addr += 0x1010;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/loaders", func_8001D658);

// Seems to break Decomp.me at the moment?
INCLUDE_ASM("asm/nonmatchings/loaders", func_8001D7E8);
