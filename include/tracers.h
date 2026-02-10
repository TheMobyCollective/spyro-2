typedef struct {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
} Unknown; // could be anything, needs investigation

// .bss 8006c7f8
extern Unknown D_80069F30[8]; // fMemset(&DAT_80070260,0,0xa0); something basic
