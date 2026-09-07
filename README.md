# Spyro 2: Ripto's Rage! Decompilation
A decompilation project for the second game in the *Spyro the Dragon* series, **Spyro 2: Ripto's Rage!**.

This project aims to produce code that will build to an executable which byte-for-byte matches the one used in the final game.

## Version Info
The final NTSC build of the game is used in this project:
* Region: NTSC-U
* Revision: 0
* Product code: SCUS-94425

## Project Structure

- `asm/`: disassembly for non-matching code, and code originally written in assembly.
- `include/`: include headers for source code, and headers used by disassembly tools.
- `src/`: decompiled source code.
- `tools/`: contains utilities for building the game.

## PSYQ

Placing the PYSQ headers in psyq/include is required to compile and build, tested using the 4.7 headers.

## Building

To make it easier to setup the MIPS toolchain, a docker image is provided. Executing `docker_env.sh` starts a container in interactive mode with the Dockerfile image, which comes with modern mipsel- gcc and binutils. For the source code, a much older compiler will be used, gcc2.7.2-mipsel.

After starting the container, executing `make all` will create the main executable, named `PSX.EXE`, in the `/build` folder, and overlays in `/build/wad`.

To speed up the build process, you can use `make -j` followed by the number of threads you want to use, such as `make all -j6`.

The overlays will be output to `/build/wad`, the naming convention matches the Spyro 2 template of [wadtool](https://github.com/altro50/wadtool).

This project only concerns the game's code, not the data files.

A tool such as [wadtool](https://github.com/altro50/wadtool) is needed to rebuild the WAD.WAD file, you can use it for extracting and rebuilding. For creating the CD image, I would recommend [mkpsxiso](https://github.com/Lameguy64/mkpsxiso) because it's modern and capable of recreating the image perfectly. You can use [dumpsxiso](https://github.com/Lameguy64/mkpsxiso) to extract the contents of the original image.

I have also included a pair of shell scripts `prepare_cd.sh` and `build_cd.sh` which use the aforementioned wadtool and mkpsxiso to extract the contents of a disc image, produce a build config file, extract the WAD.WAD file, copy the built overlay files across, rebuild the WAD, and recreate the disc image.

## Contribution Policy
Contributions are greatly appreciated, and this is not a project that I will be able to do all by myself. How you choose to contribute is left up to the contributor, but I ask a few things for you to consider before submitting a pull request:

* Where possible, try to align with the naming schemes and code style with the [spyro-1](https://github.com/TheMobyCollective/spyro-1/tree/main) project, as longer-term all three repositories will be as aligned as possible.
* Please do not co-author commits using an AI agent. Agent context files will not be accepted into the main repository.
* Please ensure that the executable and all overlays are matching before submitting a pull request.

All PRs will be subject to scrutiny before being accepted, and it may take some time before I am able to review them. Please bear with me when a request is made!

## Acknowledgements

- [splat](https://github.com/ethteck/splat) and its various [example projects](https://github.com/ethteck/splat/wiki/Examples)
- [spimdisasm](https://github.com/Decompollaborate/spimdisasm) disassembler used by splat
- [maspsx](https://github.com/mkst/maspsx)
- [decomp.me](https://decomp.me), a very handy tool for matching functions
- [Altro50](https://github.com/altro50) and his [Spyro 1 decomp](https://github.com/TheMobyCollective/spyro-1/tree/main)
- [Hwd405](https://github.com/Hwd405) and their [Spyro 3 decomp](https://github.com/TheMobyCollective/spyro-3/tree/main)

---

Trouble with the trolley, eh?
