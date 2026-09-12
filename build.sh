#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Please provide a Pascal source file."
    echo "Usage: ./build.sh src/main.pas"
    exit 1
fi

# Ensure the build directory exists
mkdir -p build

# Compile the program
fpc -FEbuild -FUbuild "$1"

# Check if compilation succeeded before removing files
if [ $? -eq 0 ]; then
    rm -f build/*.o build/*.ppu
    echo "Compilation successful! Executable is in the 'build' folder."
else
    echo "Compilation failed."
fi
