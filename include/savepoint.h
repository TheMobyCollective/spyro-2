typedef struct {
    int updated; // since entering?
    int collection[8]; // bitmask
    Vector3D spawnPos; // 0x24
    int unk30;
    int unk34;
    struct {
        int ptr; // upper byte is the data type
        int val;
    } savedMemory[4][64];
    int savedMemoryCount[4];
    int swimState; // 0 standing, 1 surface, 2 dive
    int unk5;
} Savepoint;

void func_80017164();                                  /* extern */
void func_8001B3C8(void*, int, int);                          /* extern */
void func_8001B40C(int*, int*, int);                       /* extern */
extern Savepoint D_8006718C;
extern int D_80067EC4;
