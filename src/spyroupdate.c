#include "common.h"
#include "spyroupdate.h"
#include "camera.h"

void func_8003305C(int frameIndex, Vector3D *outputVector);

// https://decomp.me/scratch/ZlfJs
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002A07C);
void func_8002A07C(void) {
    func_8001BDA0(&g_Spyro.m_Vector_0x7C);
    func_80031EAC();
    func_80030C94();
    func_8002A164();
    func_8002A4C8();
    func_80035D38();
    func_8002FC20();
    func_8002E304();
    func_8002F08C();
    func_8002F7A8();
    func_80031E4C();
    func_800327F0();
    func_800313E4();
    if (g_Spyro.m_0x58 == 6) {
        func_8003305C(0x3F, &g_Spyro.m_Vector_0x284);
        func_8003305C(0x3E, &g_Spyro.m_Vector_0x290);
    }
    if ((D_800698BE != 0) && (g_Spyro.m_Rotation_0x10.pitch == 0)) {
        g_Spyro.m_Rotation_0x10.pitch = 1;
    }
}

// https://decomp.me/scratch/ONlbV
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002A164);
void func_8002A164(void) {
    int i;
    unsigned char *pBigHead;

    for (i = 0; i < D_80067018; i++) {
        func_80033300(i);
    }

    func_8002A78C();
    func_800347A4();
    func_80034E0C();

    for (i = 0; i < D_80067018; i++) {
        func_800350D0(i);
    }

    // Update Spyro's rotation values.
    g_Spyro.m_Rotation_0x0C.roll = g_Spyro.m_Vector_0x64.x >> 4;
    g_Spyro.m_Rotation_0x0C.pitch = g_Spyro.m_Vector_0x64.y >> 4;
    g_Spyro.m_Rotation_0x0C.yaw = g_Spyro.m_Vector_0x64.z >> 4;

    // Generate and combine Spyro's rotation matrices.
    func_8001B6C8(
        &g_Spyro.m_Rotation_0x0C,
        &g_Spyro.m_RotationMatrix_0x30,
        nullptr
    );

    func_8001B6C8(
        &g_Spyro.m_Rotation_0x10,
        &g_Spyro.m_RotationMatrix_0x19C,
        nullptr
    );

    func_80059D6C(
        &g_Spyro.m_RotationMatrix_0x30,
        &g_Spyro.m_RotationMatrix_0x19C,
        &g_Spyro.m_RotationMatrix_0x19C
    );

    // Apply the Big Head cheat.
    pBigHead = (unsigned char *)&D_800698BE;

    if (*pBigHead != 0) {
        func_80059E7C(
            &g_Spyro.m_RotationMatrix_0x19C,
            (char *)(pBigHead + 2)
        );
    }

    if (g_Spyro.m_Position.z < 0x400 ||
        (g_Spyro.m_0x50 == 6 &&
         g_Spyro.m_0x54 == 1 &&
         g_Spyro.m_0x5C >= 0x3C)) {

        func_80032E74();
        return;
    }

    // Handle the Z-position threshold.
    if (g_Spyro.m_Position.z < D_80060234[D_80066F54]) {

        if (g_Spyro.m_0x50 != 6) {
            func_800351D8(6);
        }

        g_Spyro.m_0x54 = 1;

        if (g_Camera.m_CameraMode != 9) {
            g_Camera.m_RequestedCameraMode = 9;
            func_800216D8(9);
            g_Camera.m_CameraSubstate = 2;

            func_8001BDB0(
                &g_Camera.m_MotionPositionOrigin,
                &g_Camera.m_Position
            );
        }

        func_8001BDB0(
            &g_Camera.m_0x184,
            &g_Spyro.m_Position
        );

        func_8001EE18(
            &g_Camera.m_0x170,
            &g_Camera.m_MotionPositionOrigin,
            &g_Spyro.m_Position
        );

        g_Camera.m_0x170.yaw = 0;
        g_Camera.m_0x170.pitch = 0;

        return;
    }

    // Handle the X/Y position boundary.
    if (g_Spyro.m_Position.x < 0x800 ||
        g_Spyro.m_Position.y < 0x800) {

        if (g_Spyro.m_0x50 == 6) {
            g_Spyro.m_Vector_0xA0.x = 0;
            g_Spyro.m_Vector_0xA0.y = 0;

            g_Spyro.m_Vector_0x94.x = 0;
            g_Spyro.m_Vector_0x94.y = 0;
        }
        else {
            func_8001BDA0(&g_Spyro.m_Vector_0xA0);
            func_8001BDA0(&g_Spyro.m_Vector_0x94);
            func_800351D8(6);
        }

        g_Spyro.m_0x54 = 1;

        if (g_Camera.m_CameraMode != 9) {
            g_Camera.m_RequestedCameraMode = 9;
            func_800216D8(9);
            g_Camera.m_CameraSubstate = 2;
        }

        func_8001BDB0(
            &g_Camera.m_0x184,
            &g_Spyro.m_Position
        );

        func_8001EE18(
            &g_Camera.m_0x170,
            &g_Camera.m_Position,
            &g_Spyro.m_Position
        );
    }
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002A4C8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002A78C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002AAFC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002AFDC);

// https://decomp.me/scratch/FRUhP
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B078);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B0B8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B228);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B36C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B4E4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B694);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B9A0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BB24);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BC68);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BD70);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BDBC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BE04);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BFBC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002C038);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002C0F4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002CC88);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002D0F8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002D328);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002D7F8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002D9C4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002DB08);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002DB8C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002DED0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E00C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E2BC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E304);

// https://decomp.me/scratch/oeHZZ
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E3F8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E440);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E568);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E64C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002EB00);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002EBC8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002F08C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002F7A8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002FC20);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800308D4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80030A14);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80030A6C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80030C94);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800313E4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031468);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800315BC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031960);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031B94);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031E4C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031EAC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800327F0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800328E8);

// https://decomp.me/scratch/zm8aX
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032A90);
void func_80032A90(Vector3D *arg0) {
    func_8003305C(0xBB, arg0);
}


INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032AB4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032B94);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032C34);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032E74);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003305C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80033300);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800347A4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80034E0C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800350D0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800351D8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80035D38);
