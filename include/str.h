typedef struct {
	unsigned char minute;
	unsigned char second;
	unsigned char sector;
	unsigned char track;
} CdLoc; // LibCD

// psyq
extern int func_80058108(int sectors, unsigned long *buf, int mode); // CdRead  
extern int func_80058858(unsigned char com, unsigned char *param, unsigned char *result); // CdControl
extern CdLoc *func_80058C98(int intLba, CdLoc *pos); // CdIntToPos
extern int func_800582A4(void* func); // CdReadCallback
extern int func_800582B8(void); // CdInit
extern int func_80058810(int mode, unsigned char *result); // CdSync

void func_80012CBC(void); // CDMusicUpdate
int func_80013690(void); // CDLoadTime
void func_8001379C(unsigned char intr); // CDReadDone

// These are members of CDState in Spyro 1 & 3:
extern int D_800682D8; // cdState.wadSector
extern int D_800682DC;  // cdState.size
extern CdLoc D_800682E0; // cdState.readLoc
extern void *D_800682E4;  // cdState.outBuf    
extern volatile int D_800682E8; // cdState.isReading
extern int D_800682EC; // cdState.readTime - global in Spyro 1
extern int D_800682F0; // cdState.maxReadTime  - global in Spyro 1

//These are members of StreamingData in Spyro 3:
extern int D_800682F4; // +0x00 - number of tracks?
extern int D_800682F8; // +0x04 
extern int D_800682FC; // +0x08 - musicFadeTarget?
extern int D_80068300; // +0x0C 
extern int D_80068304; // +0x10 musicEnabled
extern int D_80068308; // +0x14 
extern int D_8006830C; // +0x18 
extern int D_80068310; // +0x1C
extern int D_80068314; // +0x20 musicVolume - actual xa music volume, as opposed to the menu value
extern int D_80068318; // +0x24 speechVolume - as above, for dialogue?
extern int D_8006831C; // +0x28


extern int D_80068334;
extern int D_80068338;
extern int D_8006833C;
extern int D_80068340;

extern int D_8006835C;
extern int D_80068360;
extern int D_80068364;
extern int D_80068368;
extern int* D_8006836C;
