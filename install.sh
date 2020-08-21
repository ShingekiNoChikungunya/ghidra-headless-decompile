#!/bin/bash
GHIDRA_PATH=/opt/ghidra

if [ ! -d $GHIDRA_PATH ] || [ -L $GHIDRA_PATH ];
  then
    echo "$GHIDRA_PATH not found. Ghidra not found."
    echo "Please install ghidra or change the GHIDRA_PATH environment variable before continuing. Exiting..."
    exit 1
fi

sudo mkdir /opt/shingeki/

sudo cp ./Decompile.java /opt/shingeki/

sudo cp ./gdecomp /usr/bin/gdecomp

echo "DONE"

