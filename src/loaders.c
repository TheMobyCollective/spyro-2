#include "common.h"
#include "spu.h"
#include "loaders.h"

INCLUDE_ASM("asm/nonmatchings/loaders", func_8001C454);

INCLUDE_ASM("asm/nonmatchings/loaders", func_8001C510);

// https://decomp.me/scratch/mScRG
INCLUDE_ASM("asm/nonmatchings/loaders", func_8001C5EC);

// https://decomp.me/scratch/GqnCG
//INCLUDE_ASM("asm/nonmatchings/loaders", func_8001C68C);

void func_8001C68C(Particle* arg0) {
    D_80066F18 = arg0;
    D_80066FD8 = arg0;
    arg0->unk1 = 0xFF;
    *(int*)&D_80066F18[256].unk0 = -1;
    func_8001B3C8(&D_80068078, 0, 0x140);
    func_8001B3C8(&D_80067D00, 0, 0x100);
    func_8001B3C8((int*)&D_8006B400, 0, 0x180);
    func_8001B3C8((int*)&D_8006A2B4, 0, 0x600);
    func_8001B3C8(&D_80069F30, 0, 0xA0);
}

INCLUDE_ASM("asm/nonmatchings/loaders", func_8001C734);

// https://decomp.me/scratch/19Z89 - 100%
//INCLUDE_ASM("asm/nonmatchings/loaders", func_8001D5FC);

// SetNewSoundTable
// Load sound table, might take in a struct ptr rather than a SoundTable pointer?
void func_8001D5FC(char* pData, int pPatchAddressesInTable) {
    int soundCount;

    g_SoundTablePtr = (SoundTable *)pData; // sound table
    pData += 0x100; // sizeof(SoundTable), but currently this is minimal

    soundCount = *(int*)pData;
    pData += sizeof(int);

    g_SpuDefinitionsPtr = (SoundDefinition*)pData; // spu data

    if (pPatchAddressesInTable) {
        while (--soundCount >= 0) {
            g_SpuDefinitionsPtr[soundCount].m_Addr += 0x1010;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/loaders", func_8001D658);

// https://decomp.me/scratch/JWJrT
INCLUDE_ASM("asm/nonmatchings/loaders", func_8001D7E8);
