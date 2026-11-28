#ifndef __SPYROUPDATE_H
#define __SPYROUPDATE_H

extern int D_800601B4[32];
extern int D_80060234[32];
extern unsigned char D_800602B4[32][4];

/* Byte lookup tables accessed with a four-byte entry stride. */
extern unsigned char D_80060334[];
extern unsigned char D_80060335[];

extern unsigned char D_8006042C[62][62];

extern int D_80061A8C;
extern int D_80061AAC;

extern unsigned char D_80062868[256];

extern short D_80064682;
extern short D_8006468A;

extern unsigned char D_80066E78;
extern unsigned char D_80066E79;
extern unsigned char D_80066E7A;
extern unsigned char D_80066E7B;
extern unsigned char D_80066E7C;

extern void *D_80066F14;
extern unsigned char **D_80066F24;
extern unsigned char *D_80066F38;
extern int D_80066F54;
extern unsigned char *D_80066F78;
extern int D_80066F90;

extern void (*D_80066FC4)(void);

extern void (*D_80067010)(void);
extern int D_80067018;
extern unsigned char *g_SoundTablePtr;
// (g_SoundTablePtr + 0x4)
extern int D_80067024;

extern void (*D_80067070)(int arg0);
extern void (*D_80067074)(void);
extern void (*D_800670A8)(int arg0);
extern unsigned char *(*D_800670B4)(int arg0, int arg1);

typedef union {
    Vector3D *vector;
    int value;
} CallbackArgument;

extern void (*D_800670FC)(int, int, Vector3D *, CallbackArgument);

extern int D_8006712C;
extern int D_80067178;

extern unsigned char **D_800673E8;
extern unsigned char D_80067414;

extern int D_800681C8;
extern unsigned char D_80068238;
extern int D_8006826C;
extern int D_8006827C[15];

extern void *D_80068C94;

extern int D_80069894;
extern unsigned char D_800698B8;
extern unsigned char D_800698BE;
extern unsigned char D_800698CC;
extern int D_800698F8;

extern int D_8006AB70;
extern int D_8006AB78;
extern Vector3D D_8006AB88;
extern int D_8006AB94;
extern int D_8006AB9C;
extern int D_8006ABA0;
extern int D_8006ABA4;

#endif
