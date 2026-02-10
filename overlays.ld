/****************************************************************************************
* OVERLAYS
****************************************************************************************/
OVERLAY main_BSS_END : SUBALIGN(4) {

/* We run the psx.ld through the preprocessor, so we can use macros. */
#define LEVEL(overlay_id, folder) \
        /* Insert the psyq overlay id */ \
        LONG(overlay_id); \
        build/src/overlays/folder/spyro.o(.rodata); \
        build/src/overlays/folder/spyro.o(.rodata.jtbl); \
        build/src/overlays/folder/moby_update.o(.rodata); \
        build/src/overlays/folder/moby_update.o(.rodata.jtbl); \
        build/src/overlays/folder/parts_update.o(.rodata); \
        build/src/overlays/folder/parts_update.o(.rodata.jtbl); \
        build/src/overlays/folder/parts_spawn.o(.rodata); \
        build/src/overlays/folder/parts_spawn.o(.rodata.jtbl); \
        build/src/overlays/folder/spyro.o(.text*); \
        build/src/overlays/folder/camera.o(.text*); \
        build/src/overlays/folder/hud_update.o(.text*); \
        build/src/overlays/folder/hud_render.o(.text*); \
        build/src/overlays/folder/moby_update.o(.text*); \
        build/src/overlays/folder/moby_spawn.o(.text*); \
        build/src/overlays/folder/parts_update.o(.text*); \
        build/src/overlays/folder/parts_spawn.o(.text*); \
        .folder##_end = .; \
        /* Pad to the sector */ \
        . = ALIGN(., 2048);

#define LEVEL_FLIGHT(overlay_id, folder) \
        /* Insert the psyq overlay id */ \
        LONG(overlay_id); \
        build/src/overlays/folder/spyro.o(.rodata); \
        build/src/overlays/folder/spyro.o(.rodata.jtbl); \
        build/src/overlays/folder/speedway.o(.rodata); \
        build/src/overlays/folder/speedway.o(.rodata.jtbl); \
        build/src/overlays/folder/moby_update.o(.rodata); \
        build/src/overlays/folder/moby_update.o(.rodata.jtbl); \
        build/src/overlays/folder/parts_update.o(.rodata); \
        build/src/overlays/folder/parts_update.o(.rodata.jtbl); \
        build/src/overlays/folder/parts_spawn.o(.rodata); \
        build/src/overlays/folder/parts_spawn.o(.rodata.jtbl); \
        build/src/overlays/folder/spyro.o(.text*); \
        build/src/overlays/folder/camera.o(.text*); \
        build/src/overlays/folder/hud_update.o(.text*); \
        build/src/overlays/folder/hud_render.o(.text*); \
        build/src/overlays/folder/speedway.o(.text*); \
        build/src/overlays/folder/moby_update.o(.text*); \
        build/src/overlays/folder/moby_spawn.o(.text*); \
        build/src/overlays/folder/parts_update.o(.text*); \
        build/src/overlays/folder/parts_spawn.o(.text*); \
        .folder##_end = .; \
        /* Pad to the sector */ \
        . = ALIGN(., 2048);

    .level_10 {
        LEVEL(5, level_10)
    }

    .level_11 {
        LEVEL(6, level_11)
    }

    .level_12 {
        LEVEL(7, level_12)
    }

    .level_13 {
        LEVEL(8, level_13)
    }

    .level_21 {
        LEVEL(9, level_21)
    }

    .level_22 {
        LEVEL(10, level_22)
    }

    .level_23 {
        LEVEL(11, level_23)
    }

    .level_25 {
        LEVEL_FLIGHT(12, level_25)
    }

    .level_26 {
        LEVEL(13, level_26)
    }

    .level_30 {
        LEVEL(15, level_30)
    }

    .level_31 {
        LEVEL(14, level_31)
    }

    .level_32 {
        LEVEL(16, level_32)
    }

    .level_33 {
        LEVEL(17, level_33)
    }

    .level_34 {
        LEVEL(18, level_34)
    }

    .level_35 {
        LEVEL_FLIGHT(19, level_35)
    }

    .level_41 {
        LEVEL(20, level_41)
    }

    .level_42 {
        LEVEL(21, level_42)
    }

    .level_43 {
        LEVEL(22, level_43)
    }

    .level_44 {
        LEVEL(23, level_44)
    }

    .level_45 {
        LEVEL_FLIGHT(24, level_45)
    }

    .level_46 {
        LEVEL(25, level_46)
    }

    .level_50 {
        LEVEL(26, level_50)
    }

    .level_51 {
        LEVEL(27, level_51)
    }

    .level_52 {
        LEVEL(28, level_52)
    }

    .level_55 {
        LEVEL_FLIGHT(29, level_55)
    }

    .level_61 {
        LEVEL(30, level_61)
    }

    .level_62 {
        LEVEL(31, level_62)
    }

    .level_65 {
        LEVEL(32, level_65)
    }

    .level_66 {
        LEVEL(33, level_66)
    }

    /* Probably level 99 here */

    .credits {
        /* Insert the psyq overlay id */
        LONG(35)
        build/src/overlays/credits/credits.o(.rodata);
        build/src/overlays/credits/credits.o(.rodata.jtbl);

        build/src/overlays/credits/credits.o(.text);

        build/asm/data/overlays/credits/credits.data.o(.data);

        build/src/overlays/credits/credits.o(.bss);
        .credits_end = .;

        /* Pad to the sector */
        . = ALIGN(., 2048);
    }

    .titlescreen_and_loading {
        /* Insert the psyq overlay id */
        LONG(34)
        build/src/overlays/titlescreen_and_loading/overlay_pointers.o(.rodata);
        build/src/overlays/titlescreen_and_loading/overlay_pointers.o(.rodata.jtbl);
        build/src/overlays/titlescreen_and_loading/leveldata.o(.rodata);
        build/src/overlays/titlescreen_and_loading/leveldata.o(.rodata.jtbl);
        build/asm/data/overlays/titlescreen_and_loading/lib.rodata.o(.rodata);
        build/asm/data/overlays/titlescreen_and_loading/lib.rodata.o(.rodata.jtbl);

        build/src/overlays/titlescreen_and_loading/overlay_pointers.o(.text);
        build/src/overlays/titlescreen_and_loading/leveldata.o(.text);
        build/asm/overlays/titlescreen_and_loading/lib.o(.text);

        build/asm/data/overlays/titlescreen_and_loading/lib.data.o(.data);
        build/asm/data/overlays/titlescreen_and_loading/overlay_pointers.data.o(.data);
        build/src/overlays/titlescreen_and_loading/leveldata.o(.data);

        build/src/overlays/titlescreen_and_loading/overlay_pointers.o(.bss);
        build/src/overlays/titlescreen_and_loading/leveldata.o(.bss);
        build/asm/overlays/titlescreen_and_loading/lib.o(.bss);
        .titlescreen_and_loading_end = .;

        /* Pad to the sector */
        . = ALIGN(., 2048);
    }

    .guidebook {
        /* Insert the psyq overlay id */
        LONG(36)
        build/src/overlays/guidebook/guidebook.o(.rodata);
        build/src/overlays/guidebook/guidebook.o(.rodata.jtbl);

        build/src/overlays/guidebook/guidebook.o(.text);

        build/asm/data/overlays/guidebook/guidebook.data.o(.data);

        build/src/overlays/guidebook/guidebook.o(.bss);
        .guidebook_end = .;

        /* Pad to the sector */
        . = ALIGN(., 2048);
    }
}

/* Symbols for unused cut levels */
    /*func_level_0_80082068 = 0x80082068;
    func_level_0_80080548 = 0x80080548;
    func_level_0_8007D8E0 = 0x8007D8E0;
    func_level_0_80081568 = 0x80081568;
    func_level_0_80080A0C = 0x80080A0C;
    func_level_0_8007ADB8 = 0x8007ADB8;
    func_level_0_8007AEF4 = 0x8007AEF4;
    func_level_0_8007AF38 = 0x8007AF38;
    func_level_0_8007CED8 = 0x8007CED8;
    func_level_1_8007BFF0 = 0x8007BFF0;
    func_level_1_8007B070 = 0x8007B070;
    func_level_1_8007AC8C = 0x8007AC8C;
    func_level_1_8007B8AC = 0x8007B8AC;
    func_level_1_8007B144 = 0x8007B144;
    func_level_2_8007F490 = 0x8007F490;
    func_level_2_8007D970 = 0x8007D970;
    func_level_2_8007AD08 = 0x8007AD08;
    func_level_2_8007E990 = 0x8007E990;
    func_level_2_8007DE34 = 0x8007DE34;
    func_level_3_8007C7B0 = 0x8007C7B0;
    func_level_3_8007B0AC = 0x8007B0AC;
    func_level_3_8007ACC8 = 0x8007ACC8;
    func_level_3_8007BC50 = 0x8007BC50;
    func_level_3_8007B180 = 0x8007B180;
    func_level_4_8007C204 = 0x8007C204;
    func_level_4_8007B08C = 0x8007B08C;
    func_level_4_8007ACA8 = 0x8007ACA8;
    func_level_4_8007B9F0 = 0x8007B9F0;
    func_level_4_8007B160 = 0x8007B160;
    func_level_7_8007F2F4 = 0x8007F2F4;
    func_level_7_8007D970 = 0x8007D970;
    func_level_7_8007AD08 = 0x8007AD08;
    func_level_7_8007E8E4 = 0x8007E8E4;
    func_level_7_8007DE34 = 0x8007DE34;
    func_level_9_8007C204 = 0x8007C204;
    func_level_9_8007B08C = 0x8007B08C;
    func_level_9_8007ACA8 = 0x8007ACA8;
    func_level_9_8007B9F0 = 0x8007B9F0;
    func_level_9_8007B160 = 0x8007B160;
    func_level_99_8007C654 = 0x8007C654;
    func_level_99_8007B0C0 = 0x8007B0C0;
    func_level_99_8007ACDC = 0x8007ACDC;
    func_level_99_8007BC44 = 0x8007BC44;
    func_level_99_8007B194 = 0x8007B194;*/
