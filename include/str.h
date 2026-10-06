/* Minimal PSY-Q libspu subset required by func_80012CBC.
 * It would probably be preferable to add the full libspu.h to the project eventually and remove this.
 */
typedef struct {
    short left;
    short right;
} SpuVolume;

typedef struct {
    SpuVolume volume;
    int reverb;
    int mix;
} SpuExtAttr;

typedef struct {
    unsigned long mask;
    SpuVolume mvol;
    SpuVolume mvolmode;
    SpuVolume mvolx;
    SpuExtAttr cd;
    SpuExtAttr ext;
} SpuCommonAttr;

#define SPU_COMMON_CDVOLL (1 << 6)
#define SPU_COMMON_CDVOLR (1 << 7)
/* End of minimal libspu subset. */

// CdMusic - Spyro 2 and Spyro 3 appear to have the same members and layout
typedef struct {
    unsigned char commandParam[8];   // 0x10 ControlF parameter
    char syncData[8];                // 0x18 CdSync result buffer
    CdLoc cdPos;                     // 0x20 CD position
    unsigned char padding[4];        // 0x24
    unsigned char trackParam[2];     // 0x28 XA track-selection parameters
    unsigned char padding2[6];       // 0x2A
    SpuCommonAttr attr;              // 0x30 SPU CD volume attributes
} CdMusic;

// psyq
extern int func_80058108(int sectors, unsigned long *buf, int mode); // CdRead  
extern int func_80058858(unsigned char com, unsigned char *param, unsigned char *result); // CdControl
extern int func_80058994(unsigned char com, unsigned char *param); //CdControlF
extern CdLoc *func_80058C98(int intLba, CdLoc *pos); // CdIntToPos
extern int func_800582A4(void* func); // CdReadCallback
extern int func_800582B8(void); // CdInit
extern int func_80058810(int mode, unsigned char *result); // CdSync
extern int func_800587B4(void); // CdStatus
extern int func_800587D4(void); // CdLastCom

void func_80012CBC(void); // CDMusicUpdate
int func_80013690(void); // CDLoadTime
void func_8001379C(unsigned char intr); // CDReadDone


extern CDState cdState; // 800682D8
extern StreamingData streamingData; // 800682F4


