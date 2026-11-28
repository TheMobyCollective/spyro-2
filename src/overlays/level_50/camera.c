#include "common.h"
#include "camera.h"

INCLUDE_ASM("asm/nonmatchings/overlays/level_50/camera", func_level_50_8006FE18);

// https://decomp.me/scratch/29PcB
//INCLUDE_ASM("asm/nonmatchings/overlays/level_50/camera", func_level_50_80070308);

void func_8001DB58();                                  /* extern */
void func_8001DC6C();                                  /* extern */

void func_level_50_80070308(void) {
    func_8001DB58();
    func_8001DC6C();
}

// https://decomp.me/scratch/Xc9ku - 100%
//INCLUDE_ASM("asm/nonmatchings/overlays/level_50/camera", func_level_50_80070330);

void func_8001BDB0(int*, Spyro*);                      /* extern */
void func_8001EE18(int*, int*, Spyro*);                /* extern */

void func_level_50_80070330(int arg0) {
    int* temp_s0;

    if ((arg0 >= 4) && ((arg0 < 6) || (arg0 == 0x17))) {
        g_Camera.m_CameraSubstate = 0;
        g_Camera.m_UseDirectCameraPosition = 0;
        g_Camera.m_DisableObjectCollisionChecks = 0;
        g_Camera.m_0x142 = 1;
        g_Camera.m_0x145 = 0;
        g_Camera.unk_0x5C = 0;
        func_8001BDB0(&g_Camera.m_CameraSubstate + 0x4, &g_Spyro);
        temp_s0 = &g_Camera.m_CameraSubstate + 0xB;
        g_Camera.m_0x6C = g_Spyro.m_Vector_0x64.z;
        func_8001EE18(temp_s0, &g_Camera.m_CameraSubstate - 0xA, &g_Spyro);
        func_8001EFA8((CameraPosition* ) temp_s0, (CameraPosition* ) temp_s0);
        func_8001ECCC((CameraPosition* ) (&g_Camera.m_CameraSubstate + 0x15), (CameraPosition* ) temp_s0, 0);
    }
}


INCLUDE_ASM("asm/nonmatchings/overlays/level_50/camera", func_level_50_80070408);
