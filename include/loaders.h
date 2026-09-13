typedef struct {
    unsigned char gemChime;
    unsigned char gemCollect;
    unsigned char bonk;
    unsigned char flame;
    unsigned char swallow;
    unsigned char spit;
    unsigned char underwater;
    unsigned char waterSurface;
    unsigned char waterDive;
    unsigned char squish;
    unsigned char waterPaddle;
    unsigned char iceSkate;
    unsigned char lavaBurn;
    unsigned char lavaDeath;
    unsigned char drown;
    unsigned char unsquish;
    unsigned char spyroSkid;
    unsigned char spyroLand;
    unsigned char spyroStop;
    unsigned char unk19;
    unsigned char headbash;
    unsigned char spyroHurt;
    unsigned char pauseEnter;
    unsigned char pauseExit;
    unsigned char pauseMove;
    unsigned char underwaterHit;
    unsigned char changeVolume;
    unsigned char supercharge;
    unsigned char unk28;
    unsigned char eggHatching;
    unsigned char timerRunOut;
    unsigned char extraLife;
    unsigned char unk32;
    unsigned char unk33;
    unsigned char jump;
    unsigned char skillPoint;
    unsigned char guidebookPageTurn;
    unsigned char levelCompleteFanfare;
} SoundTable;

// Modified 2025-11-17 to align with S1 decomp

typedef struct {
    int m_Addr; // Changing it to int makes it match more nicely
    //char unk1;
    //char unk2;
    //char unk3;
    unsigned short unk4;
    unsigned short unk6;
    unsigned short unk8;
    unsigned short unkA;
    unsigned short unkC;
    unsigned short unkE;
    char unk10;
    char unk11;
    char unk12;
    char unk13;
} SoundDefinitions; // Formerly SpuData

// Might these be part of the same struct? In S1 they're grouped into one "g_Spu"
extern SoundTable* D_80067020; // soundTblPtr
extern SoundDefinitions* D_80067068; // spuDataPtr apparently
