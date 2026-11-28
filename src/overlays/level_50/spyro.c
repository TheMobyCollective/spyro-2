#include "common.h"
#include "spu.h"

INCLUDE_ASM("asm/nonmatchings/overlays/level_50/spyro", func_level_50_8006D898);

INCLUDE_ASM("asm/nonmatchings/overlays/level_50/spyro", func_level_50_8006EAD8);

// https://decomp.me/scratch/RrhFT
//INCLUDE_ASM("asm/nonmatchings/overlays/level_50/spyro", func_level_50_8006EE50);

int func_80050720(unsigned char, int, int);                        /* extern */
void func_80050C64(int, int);                            /* extern */
extern SoundTable* g_SoundTablePtr;

void func_level_50_8006EE50(void) {
    int temp_a0;

    switch (g_Spyro.m_0x14) {                       /* irregular */
        case 9:
            if ((g_Spyro.m_animationFrame_0x16 == 1) || (g_Spyro.m_animationFrame_0x16 == 6)) {
                temp_a0 = func_80050720(g_SoundTablePtr->iceSkate, 0, 0);
                g_Spyro.m_0x278 = (int) g_Spyro.m_animationFrame_0x16;
                if ((temp_a0 >= 0) && (g_Spyro.m_animationFrame_0x16 == 6)) {
                    func_80050C64(temp_a0, 0x1190);
                    return;
                }
            }
            return;
        case 43:
            if (g_Spyro.m_animationFrame_0x16 == 1) {
                func_80050720(g_SoundTablePtr->waterPaddle, 0, 0);
                g_Spyro.m_0x278 = (int) g_Spyro.m_animationFrame_0x16;
            }
            break;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/level_50/spyro", func_level_50_8006EF30);

INCLUDE_ASM("asm/nonmatchings/overlays/level_50/spyro", func_level_50_8006EFAC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_50/spyro", func_level_50_8006F748);
