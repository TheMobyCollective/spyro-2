

# -------------------------------
# Compiler & Toolchain Setup
# -------------------------------
NOCD_FLAG          = $(if ${NOCD},-DNOCD,-DNNOCD)
DEBUG_FLAG          = $(if ${DEBUG},-DDEBUG,-DNDEBUG)
MODERN_COMPILER_FLAG = $(if ${MODERN_COMPILER},-DMODERN_COMPILER,-D_HAS_MASPSX)
NON_MATCHING_FLAG  = $(if ${NON_MATCHING},-DNON_MATCHING,)
NEW_PSYQ_FLAG = $(if ${NEW_PSYQ},-DNEW_PSYQ,)
PSYQ_LIB = $(if ${NEW_PSYQ},-Lpsyq/lib --start-group -lapi -lc -lc2 -lcard -lcd -lcomb -lds -letc -lgpu -lgs -lgte -lgun -lhmd -lmath -lmcrd -lpad -lsio -lspu --end-group,)

# Commented out lines are for Fedora compilation using their mips compilers
# The Docker image is much prefered and far easier though, this is just a personal modification and thought I'd add it
CC       = $(if ${MODERN_COMPILER}, "/usr/libexec/gcc-cross/mipsel-linux-gnu/14/cc1", "./tools/gcc2.7.2/cc1")
# CC       = $(if ${MODERN_COMPILER}, "/usr/libexec/gcc/mips64-linux-gnu/16/cc1", "./tools/gcc2.7.2/cc1")
GCC      = mipsel-linux-gnu-cpp
# GCC      = mips64-linux-gnu-cpp
AS       = mipsel-linux-gnu-as
# AS       = mips64-linux-gnu-as
LD       = mipsel-linux-gnu-ld
# LD       = mips64-linux-gnu-ld
OBJCOPY  = mipsel-linux-gnu-objcopy
# OBJCOPY  = mips64-linux-gnu-objcopy
PYTHON   = python3

MASPSX          = "./tools/maspsx/maspsx.py"
REMOVE_SECTIONS = "./tools/remove_sections.py"
FIX_JTBL_ALIGN  = "./tools/fix_jtbl_align.py"
FIX_STR_ALIGN   = "./tools/fix_str_align.py"

# -------------------------------
# Compilation Flags
# -------------------------------
LD_FLAGS  = -EL -T /tmp/psx.ld -g -Map build/psx.map --no-check-sections -nostdlib $(PSYQ_LIB)
# LD_FLAGS  = -EL -m elf32ltsmip -T /tmp/psx.ld -g -Map build/psx.map --no-check-sections -nostdlib $(PSYQ_LIB)
C_CLASSIC_FLAGS = -O2 -G0 -fverbose-asm -mips1 -mcpu=3000 -fgnu-linker -mno-abicalls -mgpopt -msoft-float -gcoff -funsigned-char -quiet
C_MODERN_FLAGS = -Os -G 0 -g3 -fverbose-asm -mips1 -march=r3000 -mabi=32 -mno-llsc -mno-abicalls -mgpopt -msoft-float -fno-builtin -fno-builtin-function -fno-strict-aliasing -fno-exceptions -fschedule-insns -fno-pic -fno-stack-protector -ffreestanding -Wno-error=int-conversion -o-
C_FLAGS   = $(if ${MODERN_COMPILER},$(C_MODERN_FLAGS),$(C_CLASSIC_FLAGS))
AS_FLAGS  = -EL -Iinclude -march=r3000 -mtune=r3000 -G0 -no-pad-sections
#AS_FLAGS  = -EL -Iinclude -march=r3000 -mtune=r3000 -mabi=32 -G0 -no-pad-sections

# -------------------------------
# Targets & Sources
# -------------------------------
TARGET_ELF = build/psx.elf
TARGET_EXE = build/PSX.EXE

# Define WAD file names
LEVELS = \
	level_10_summer_forest \
	level_11_glimmer \
	level_12_idol_springs \
	level_13_colossus \
	level_21_hurricos \
	level_22_aquaria_towers \
	level_23_sunny_beach \
	level_25_ocean_speedway \
	level_26_crushs_dungeon \
	level_30_autumn_plains \
	level_31_skelos_badlands\
	level_32_crystal_glacier \
	level_33_breeze_harbor \
	level_34_zephyr \
	level_35_metro_speedway \
	level_41_scorch \
	level_42_shady_oasis \
	level_43_magma_cone \
	level_44_fracture_hills \
	level_45_icy_speedway \
	level_46_gulps_overlook \
	level_50_winter_tundra \
	level_51_mystic_marsh \
	level_52_cloud_temples \
	level_55_canyon_speedway \
	level_61_robotica_farms \
	level_62_metropolis \
	level_65_dragon_shores \
	level_66_riptos_arena

# And which level number they corrospond to
# for the overlay sections
LEVEL_NUMBERS = \
	10 11 12 13 \
	21 22 23 25 26 \
	30 31 32 33 34 35 \
	41 42 43 44 45 46 \
	50 51 52 55 \
	61 62 65 66

# Generate object names and their section numbers
TARGET_OVERLAYS = $(patsubst %, build/wad/%_code.ovl, $(LEVELS)) build/wad/credits_code.ovl build/wad/titlescreen_and_loading_code.ovl build/wad/guidebook_code.ovl
OVERLAY_SECTIONS  = $(foreach n, $(LEVEL_NUMBERS), .level_$(n))

# Input is one of TARGET_OVERLAYS' values and it returns the OVERLAY_SECTIONS entry at the same index
define LEVEL_TO_SECTION
    $(strip
			$(foreach idx, $(shell seq 1 $(words $(TARGET_OVERLAYS))), \
        $(if $(filter $(word $(idx),$(TARGET_OVERLAYS)),$(1)), \
            $(word $(idx),$(OVERLAY_SECTIONS)) \
        ) \
    	) \
		)
endef

SRC_C  = $(shell find src -type f -name '*.c')
SRC_S  = $(shell find asm -type f -name '*.s' | grep -v asm/nonmatchings)

OBJ_C  = $(SRC_C:src/%.c=build/src/%.o)
OBJ_S  = $(SRC_S:asm/%.s=build/asm/%.o)
DEPENDS = $(OBJ_C:.o=.o.d)

# -------------------------------
# Dependency Handling
# -------------------------------
-include $(DEPENDS)

# -------------------------------
# Directories Setup
# -------------------------------
$(OBJ_C): | create_dirs

create_dirs:
	@mkdir -p build/asm build/src $(sort $(dir $(OBJ_C))) $(sort $(dir $(OBJ_S))) build/wad

# -------------------------------
# Build Targets
# -------------------------------

all: $(TARGET_OVERLAYS) $(TARGET_EXE)
	@echo "\e[0;32m[Verifying] SHA-256 checksums...\e[0m"
	@sha256sum -c sha256sum.txt

non_matching: $(TARGET_OVERLAYS) $(TARGET_EXE)

# -------------------------------
# Compilation
# -------------------------------

# Only use MASPSX for non-modern compilers
MASPSX_COMMAND = $(if ${MODERN_COMPILER},,$(PYTHON) $(MASPSX) -G4 --aspsx-version 2.56 --expand-div |)

# Overlay Specific Flags (-G0)
build/src/overlays/%.o: C_FLAGS := $(subst -G8,-G0,$(C_FLAGS))


build/src/%.o: src/%.c
	@echo "\e[0;36m[Compiling] $<\e[0m"
		
	@$(GCC) $(MODERN_COMPILER_FLAG) $(NEW_PSYQ_FLAG) $(DEBUG_FLAG) $(NON_MATCHING_FLAG) -Iinclude -Ipsyq/include -ffreestanding -MT $@ -MMD -MP -MF $@.d $< | \
		$(CC) $(C_FLAGS) |\
		$(MASPSX_COMMAND) \
		$(PYTHON) $(REMOVE_SECTIONS) | \
		$(PYTHON) $(FIX_STR_ALIGN) | \
		$(PYTHON) $(FIX_JTBL_ALIGN) | \
		$(AS) $(AS_FLAGS) -o $@

build/asm/%.o: asm/%.s
	@echo "\e[0;34m[Assembling] $<\e[0m"
	@$(AS) $(AS_FLAGS) -o $@ $<

# -------------------------------
# Linking
# -------------------------------

# Main ELF
$(TARGET_ELF): $(OBJ_C) $(OBJ_S) psx.ld overlays.ld
	@echo "\e[0;32m[Linking] $@\e[0m"
	@gcc -E -P -x assembler-with-cpp -c psx.ld $(NEW_PSYQ_FLAG) -o /tmp/psx.ld
	@$(LD) $(LD_FLAGS) -o $@

# Main executable
$(TARGET_EXE): $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=.header --only-section=.main -O binary $< $@

# Overlays
build/wad/credits_code.ovl: $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=.credits -O binary $< $@

build/wad/titlescreen_and_loading_code.ovl: $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=.titlescreen_and_loading -O binary $< $@

build/wad/guidebook_code.ovl: $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=.guidebook -O binary $< $@

build/wad/%_code.ovl: $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=$(strip $(call LEVEL_TO_SECTION,$@)) -O binary $< $@

# -------------------------------
# Cleaning
# -------------------------------
clean:
	@echo "\e[0;31m[Cleaning] Removing build artifacts...\e[0m"
	@rm -f $(OBJ_C) $(OBJ_S) $(DEPENDS) $(TARGET_ELF) $(TARGET_EXE) $(TARGET_OVERLAYS)
