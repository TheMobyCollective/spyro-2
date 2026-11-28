#ifndef __PAD_H
#define __PAD_H

#include "str.h"

#define PAD_L2 (1 << 0)
#define PAD_R2 (1 << 1)
#define PAD_L1 (1 << 2)
#define PAD_R1 (1 << 3)

#define PAD_TRIANGLE (1 << 4)
#define PAD_CIRCLE (1 << 5)
#define PAD_CROSS (1 << 6)
#define PAD_SQUARE (1 << 7)

#define PAD_SELECT (1 << 8)
#define PAD_START (1 << 11)

#define PAD_L3 (1 << 9)
#define PAD_R3 (1 << 10)

#define PAD_UP (1 << 12)
#define PAD_RIGHT (1 << 13)
#define PAD_DOWN (1 << 14)
#define PAD_LEFT (1 << 15)

#define PAD_DPAD (PAD_UP | PAD_RIGHT | PAD_DOWN | PAD_LEFT)
#define PAD_ICONS (PAD_TRIANGLE | PAD_CIRCLE | PAD_CROSS | PAD_SQUARE)
#define PAD_SHOULDERBUTTONS (PAD_L2 | PAD_R2 | PAD_L1 | PAD_R1)
#define PAD_BUTTONS (PAD_DPAD | PAD_ICONS | PAD_SHOULDERBUTTONS)

enum PadInput {
    PAD_INPUT_NULL = 0x0,
    L2 = 0x1,
    R2 = 0x2,
    L1 = 0x4,
    R1 = 0x8,
    TRI = 0x10,
    CIR = 0x20,
    X = 0x40,
    SQU = 0x80,
    SEL = 0x100,
    STA = 0x800,
    U = 0x1000,
    R = 0x2000,
    D = 0x4000,
    L = 0x8000,
};

enum ControllerType {
    CONTROLLER_TYPE_DISCONNECTED = 0,
    CONTROLLER_TYPE_INVALID = 1,
    CONTROLLER_TYPE_DPAD = 2,
    CONTROLLER_TYPE_STICK = 3,
};

/*typedef struct {
    unsigned char rx;
    unsigned char ry;
    unsigned char lx;
    unsigned char ly;
} StickState;*/

typedef unsigned char StickState[4];

typedef struct {
	enum PadInput held; // currently held
	enum PadInput pressed; // newly pressed
	enum PadInput released; // newly released
	StickState stick;
} PadState;

typedef struct {
    unsigned char status;
    unsigned char size_type;
    unsigned char input[2]; // button state, 2 bytes and inverted rather than a full four bytes
    StickState stick;
} PsyqPad; // from libpad // note that instances of this might have 7 ints afterwards? maybe add the padding later
// note that any padding updates here will need checks for any ptr arithmetic, as the demo inputs in WADs are only 2 ints wide

typedef struct {
	unsigned char controllerType; //  0 - ControllerType enum  0x80068370
	unsigned char unk1b;          //  1                        0x80068371
	unsigned char unk1c;          //  2                        0x80068372
	unsigned char unk1d;          //  3                        0x80068373
	unsigned char vibrationMode;  //  4                        0x80068374
	char unk2[3];                 //  5,  6,  7                0x80068375 0x80068376 0x80068377
	StickState unk2a;             //  8                        0x80068378
    StickState unk2b[4];          //  C, 10, 14, 18            0x8006837C 0x80068380 0x80068384 0x80068388
	int unk3[4];                  // 1C, 20, 24, 28            0x8006838C 0x80068390 0x80068394 0x80068398
	char buttonPressed;           // 2C                        0x8006839C
	char dpadPressed;             // 2D                        0x8006839D
	char unk4;                    // 2E                        0x8006839E
	char unk4a;                   // 2F                        0x8006839F
	PadState state;               // 30                        0x800683A0
	PadState store[4];            // 40, 50, 60, 70            0x800683B0 0x800683C0 0x800683D0 0x800683E0
} Pad;

// bss
extern Pad g_Pad; // D_80068370

extern void func_8001B40C(void*, void*, int);                         /* extern */

// (g_SoundTablePtr + 0x4)
extern int D_80067024; // isDemoMode

extern int D_8006700C;
extern char D_8006710C;
extern char D_8006710D;

void func_800121B0();                                  /* extern */
void func_80058EDC(int);                                 /* extern */
// sdata
extern PsyqPad* D_80066F04;
extern int* D_80066F28;
extern PsyqPad D_8006A95C;

#endif
