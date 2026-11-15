#include "common.h"
#include "pad.h"

// https://decomp.me/scratch/wFrtz
//INCLUDE_ASM("asm/nonmatchings/pad", func_80011F50);

void func_80011F50(char* arg0) {
    int i;
    int j;
    char temp_v0;
    char temp_v1;
    unsigned char* var_a1;

    (char*)var_a1 = arg0;
    for (j = 0; j < 4; j++) {
        if ( arg0[j] + 0xF >= 0xBFU ) {
            *(int*)arg0 = 0x7F7F7F7F;
            break;
        }
    }

    *(int*)&g_Pad.unk2[3] = *(int*)arg0;
    for (i = 0; i < 4; i++) {
        temp_v0 = ((char*)&g_Pad.unk2[3])[i] + 0x30;
        ((char*)&g_Pad.unk2b[0])[i] = temp_v0;
        ((char*)&g_Pad.unk2b[2])[i] = -1 - temp_v0;

        temp_v1 = ((char*)&g_Pad.unk2[3])[i];
        ((char*)&g_Pad.unk2b[1])[i] = temp_v1 - 0x30;
        ((char*)&g_Pad.unk2b[3])[i] = temp_v1 - 0x30;
    }
}

// https://decomp.me/scratch/KZPjp - 100%
//INCLUDE_ASM("asm/nonmatchings/pad", func_8001200C);

void func_8001200C(unsigned char* arg0) {
    int var_t0;
    int var_v1;
    unsigned char temp_a2;
    unsigned char temp_a2_2;
    unsigned char temp_v1;
    unsigned char temp_v1_2;

    if (D_80067024 == 0) {
        for (var_t0 = 0; var_t0 < 4; var_t0++) {
            temp_v1 = arg0[var_t0];
            temp_a2 = g_Pad.unk2b[0][var_t0];

            if (temp_v1 > temp_a2)       arg0[var_t0] = (((temp_v1 -   temp_a2) << 7) / g_Pad.unk2b[2][var_t0]) + 0x7F;
            else {
                temp_a2_2 = g_Pad.unk2b[1][var_t0];
                if (temp_v1 < temp_a2_2) arg0[var_t0] = (((temp_v1 - temp_a2_2) << 7) / g_Pad.unk2b[3][var_t0]) - 0x80;
                else                     arg0[var_t0] = 0x7F;
            }
        }
        return;
    }
    for (var_v1 = 0; var_v1 < 4; var_v1++) {
        temp_v1_2 = arg0[var_v1];
        if     (temp_v1_2 >= 0xB0) arg0[var_v1] = (((temp_v1_2 - 0xAF) << 7) / 80) + 0x7F;
        else if (temp_v1_2 < 0x4F) arg0[var_v1] = (((temp_v1_2 - 0x4F) << 7) / 79) - 0x80;
        else                       arg0[var_v1] = 0x7F;
    }
}

INCLUDE_ASM("asm/nonmatchings/pad", func_800121B0);

// https://decomp.me/scratch/YjKA2 - 100%
//INCLUDE_ASM("asm/nonmatchings/pad", func_80012488);

void func_80012488(void) {
    int i;
    int x;

    g_Pad.unk3[0] = 0;
    g_Pad.unk3[1] = 0;
    g_Pad.unk3[2] = 0;
    if (D_80067024 == 2) {
        *(int*)&D_80066F04->status = *(int*)&D_8006A95C.status;
        x = ((int)D_80066F04 - (int)D_80066F28) >> 2;
        *(int*)&D_80066F04->stick = *(int*)&D_8006A95C.stick;
        *D_80066F28 = (x + 1) / 2;
    }
    for (i = 0; i < 2; i++) {
        D_8006700C++;
        *(int*)&D_8006A95C.status = *(int*)&D_80066F04->status;
        *(int*)&D_8006A95C.stick = *(int*)&D_80066F04->stick;
        func_800121B0();
    };
    if (D_80067024 == 2) {
        func_80058EDC(2);
    }
    *(int*)&D_8006A95C.status = 0xFFFF7300;
    *(int*)&D_8006A95C.stick = 0x7F7F7F7F;
    D_80066F04++;
}

// https://decomp.me/scratch/fSmuO - 100%
//INCLUDE_ASM("asm/nonmatchings/pad", func_800125C8);

void func_800125C8(void) {
    cdState.readTime++;
    if (D_80067024 == 0) {
        D_8006710C = 0;
        D_8006710D = 0;
        D_8006700C += 1;
        if ((g_Pad.unk1d != 0) && (g_Pad.vibrationMode != 0)) {
            if (g_Pad.unk3[2] != 0) {
                g_Pad.unk3[2] -= 1;
                D_8006710C = 0;
                D_8006710D = (char) g_Pad.unk3[3];
            }
            if (g_Pad.unk3[1] != 0) {
                g_Pad.unk3[1]  -= 1;
                D_8006710C = 1;
                D_8006710D = 0;
            }
            if (g_Pad.unk3[0] != 0) {
                g_Pad.unk3[0] -= 1;
                D_8006710C = 1;
                D_8006710D = 0x78;
            }
        } else {
            g_Pad.unk3[0] = 0;
            g_Pad.unk3[1]  = 0;
            g_Pad.unk3[2] = 0;
        }
        if (D_80067024 == 0) {
            func_800121B0();
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/pad", func_8001271C);

// https://decomp.me/scratch/068hb - 100%
//INCLUDE_ASM("asm/nonmatchings/pad", func_80012AC0);
// PadReset
void func_80012AC0(Pad* arg0) {
    int var_v1;

    *(int*)&arg0->state.stick = 0x7F7F7F7F;
    arg0->state.held = 0;
    arg0->state.pressed = 0;
    arg0->state.released = 0;
    arg0->buttonPressed = 1;
    arg0->dpadPressed = 1;
    arg0->unk4 = 0;
    for (var_v1 = 0; var_v1 < 4; var_v1++) {
        arg0->store[var_v1].held = 0;
        arg0->store[var_v1].pressed = 0;
        arg0->store[var_v1].released = 0;
        *(int*)&arg0->store[var_v1].stick = 0x7F7F7F7F;
    }
}

// https://decomp.me/scratch/mT4cz
//INCLUDE_ASM("asm/nonmatchings/pad", func_80012B1C);

void func_80012B1C(Pad* arg0, Pad* arg1) {
    func_8001B40C(arg1, arg0, 0x80);
    func_80012AC0(arg0);
}

// https://decomp.me/scratch/Br9rq
//INCLUDE_ASM("asm/nonmatchings/pad", func_80012B58);

void func_80012B58(void) {
    g_Pad.unk2[0] = 1;
    g_Pad.unk1c = 0;
    g_Pad.unk1d = 0;
    g_Pad.unk1b = 0;
}

