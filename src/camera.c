#include "common.h"
#include "camera.h"

// https://decomp.me/scratch/Y1tDj
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001D87C);

void func_8001D87C(void) {
    func_8001D8A4();
    func_80021DC0();
}

// https://decomp.me/scratch/zigZT
INCLUDE_ASM("asm/nonmatchings/camera", func_8001D8A4);

// https://decomp.me/scratch/SgE3O
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001DB58);
void func_8001DB58(void)
{
    int wrappedAzimuthDifference;
    int azimuthValue;
    int radius1;
    int radius2;
    int elevation1;
    int elevation2;
    int radiusDifference;
    int wrappedElevationDifference;
    int wrappedYawDifference;
    int wrappedPitchDifference;

    /*
     * Calculate the wrapped azimuth difference.
     * A nonzero value at 0x150 overrides the calculation.
     */
    azimuthValue = g_Camera.m_0x150;

    if (azimuthValue == 0) {
        wrappedAzimuthDifference =
            (g_Camera.m_CameraPositions[1].pos.azimuth -
             g_Camera.m_CameraPositions[2].pos.azimuth) & 0xFFF;

        g_Camera.m_CameraPositions[3].pos.azimuth =
            wrappedAzimuthDifference;

        if (wrappedAzimuthDifference >= 0x801) {
            azimuthValue = wrappedAzimuthDifference - 0x1000;
            g_Camera.m_CameraPositions[3].pos.azimuth = azimuthValue;
        }
    } else {
        g_Camera.m_CameraPositions[3].pos.azimuth = azimuthValue;
    }

    /*
     * Calculate the radius difference and wrapped elevation difference.
     */
    radius1 = g_Camera.m_CameraPositions[1].pos.radius;
    radius2 = g_Camera.m_CameraPositions[2].pos.radius;
    elevation1 = g_Camera.m_CameraPositions[1].pos.elevation;
    elevation2 = g_Camera.m_CameraPositions[2].pos.elevation;

    radiusDifference = radius1 - radius2;
    wrappedElevationDifference = (elevation1 - elevation2) & 0xFFF;

    g_Camera.m_CameraPositions[3].pos.radius = radiusDifference;
    g_Camera.m_CameraPositions[3].pos.elevation =
        wrappedElevationDifference;

    if (wrappedElevationDifference >= 0x801) {
        g_Camera.m_CameraPositions[3].pos.elevation =
            wrappedElevationDifference - 0x1000;
    }

    /* Calculate the wrapped yaw difference. */
    wrappedYawDifference =
        (g_Camera.m_CameraPositions[1].yaw -
         g_Camera.m_CameraPositions[2].yaw) & 0xFFF;

    g_Camera.m_CameraPositions[3].yaw = wrappedYawDifference;

    if (wrappedYawDifference >= 0x801) {
        g_Camera.m_CameraPositions[3].yaw =
            wrappedYawDifference - 0x1000;
    }

    /* Calculate the wrapped pitch difference. */
    wrappedPitchDifference =
        (g_Camera.m_CameraPositions[1].pitch -
         g_Camera.m_CameraPositions[2].pitch) & 0xFFF;

    g_Camera.m_CameraPositions[3].pitch = wrappedPitchDifference;

    if (wrappedPitchDifference >= 0x801) {
        g_Camera.m_CameraPositions[3].pitch =
            wrappedPitchDifference - 0x1000;
    }
}

INCLUDE_ASM("asm/nonmatchings/camera", func_8001DC6C);

// https://decomp.me/scratch/dg0nn - 100%
INCLUDE_ASM("asm/nonmatchings/camera", func_8001E204);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001E270);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001E2E4);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001E454);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001E808);

// https://decomp.me/scratch/zNKgH
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001ECCC); SetCameraPosition()

void func_8001ECCC(CameraPosition* arg0, CameraPosition* arg1, int arg2) {
    int temp_v1;

    temp_v1 = (arg1->pos.azimuth + arg2) & 0xFFF;
    arg0->pos.azimuth = temp_v1;
    if (temp_v1 > 0x800) {
        arg0->pos.azimuth = (int) (temp_v1 - 0x1000);
    }
    arg0->pos.elevation = (int) arg1->pos.elevation;
    arg0->pos.radius = (int) arg1->pos.radius;
    arg0->yaw = (int) arg1->yaw;
    arg0->pitch = (int) arg1->pitch;
}

// https://decomp.me/scratch/9Fp5c
INCLUDE_ASM("asm/nonmatchings/camera", func_8001ED20);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001EE18);

// https://decomp.me/scratch/FuNiS - 100%
INCLUDE_ASM("asm/nonmatchings/camera", func_8001EFA8);

// https://decomp.me/scratch/GBd7i
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001F008); ResetCameraPosition()

void func_8001F008(CameraPosition* arg0) {
    arg0->pos.azimuth = 0;
    arg0->pos.elevation = 0;
    arg0->pos.radius = 0;
    arg0->yaw = 0;
    arg0->pitch = 0;
}

// https://decomp.me/scratch/ZWw25 - 100%
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F020);

// https://decomp.me/scratch/1inpk
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F0BC);

// https://decomp.me/scratch/mW3JY
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001F1E4);

void func_8001F1E4(int arg0, int arg1) {
    g_Camera.m_RequestedCameraMode = arg1;
    g_Camera.m_0x16C = arg0;
}

// https://decomp.me/scratch/CRD8v - 100%
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F1FC);

// https://decomp.me/scratch/smjIy
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F24C);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F2E4);

// https://decomp.me/scratch/KXnuG - 100%
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F4A4);

// https://decomp.me/scratch/AssXr
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F524);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F618);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F814);

// https://decomp.me/scratch/eaquc
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001FA24);

void func_8001FA24(void) {
    if (D_800698BA != 0) {
        g_Camera.m_CameraFlags = 0;
    } else {
        g_Camera.m_CameraFlags = 7;
    }
}

INCLUDE_ASM("asm/nonmatchings/camera", func_8001FA58);

INCLUDE_ASM("asm/nonmatchings/camera", func_80021558);

INCLUDE_ASM("asm/nonmatchings/camera", func_800216D8);

INCLUDE_ASM("asm/nonmatchings/camera", func_80021DC0);
