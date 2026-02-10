#!/usr/bin/env bash

# Colours
RED='\033[0;31m'
GRN='\033[0;32m'
NC='\033[0m'

# Files
dp="tools/dumpsxiso"
wt="tools/wadtoolrust"
wadd="wad-data"
cdd="cd-data"
bx="cd-config.xml"
wj="wad.json"
cdi="Spyro2.bin"

# Check for wadtoolrust and dumpsxiso
if [ ! -x $dp ]; then
  echo -e "${RED}$dp does not exist or is not executable. Please place a copy of dumpsxiso into this directory and re-run.${NC}"
  echo -e "https://github.com/Lameguy64/mkpsxiso"
  exit 1
elif [ ! -x $wt ]; then
  echo -e "${RED}$wt does not exist or is not executable. Please place a copy of wadtool into this directory and re-run.${NC}"
  echo -e "https://github.com/altro50/wadtool"
  exit 1
elif [ ! -s $cdi ]; then
  echo -e "${RED}A copy of Spyro 2 (NTSC-U rev 0) is needed to run this script. It should be named "$cdi" and placed in the project root directory.${NC}"
  exit 1
fi

# Run dumpsxiso
echo "Running dumpsxiso..."
$dp -x $cdd -s $cdd/$bx $cdi
if [ ! -d $cdd ] || [ ! "$(ls -A $cdd)" ]; then
  echo -e "\n${RED}Running $dp failed. If running from the Docker image, please try again in a new WSL instance.${NC}"
  exit 1
fi

# Run wadtoolrust
echo "Running wadtoolrust..."
$wt unpack $cdd/WAD.WAD $wadd

# Add in the dummy sectors in the final so the diffs are smaller
# This is automatically done on dumpsxiso v2.20. If using an earlier version you may want to uncomment the following line before running:
# sed -i '/source="3MN_BLNK.DAT"/a \ \ \ \ \ \ \ \ \ \ \ \ <dummy sectors="150"/>' $cdd/$bx

# Finish
echo -e "${GRN}Preparation complete.${NC}"

# There might be a way of doing this with mkpsxiso, but I don't know how yet
