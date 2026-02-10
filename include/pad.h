typedef char StickState[4];

enum PadInput {
    NUL = 0x0,
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

typedef struct {
    enum PadInput held; // currently held
    enum PadInput pressed; // newly pressed
    enum PadInput released; // newly released
    StickState stick;
} PadState;

typedef struct { // e.g. 8006e508
    StickState unk1;
    char vibrationMode;
    char unk2[3];
    StickState unk2a[5];
    int unk3[4];

    char buttonPressed;
    char dpadPressed;
    char unk4;
    char unk4a;
    PadState state;
    PadState store[4]; // most important one is 0?
} Pad;


extern void func_8001B40C(void*, void*, int);                         /* extern */

extern char D_80068371;
extern char D_80068372;
extern char D_80068373;
extern char D_80068375;
