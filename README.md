# SMB Disassembly CC65 EX

A fork of https://github.com/threecreepio/smb-disassembly but with a nicer file structure.

Original SMB Disassembly: https://gist.github.com/1wErt3r/4048722

## Setup

To compile this, you will need to install Make and CC65 https://cc65.github.io/

## Windows Setup

After downloading CC65, create a folder called `cc65` in the main folder and put all of the contents of the zip inside the folder.

## Linux Setup

Run `sudo apt install cc65 make` in your terminal to properly install CC65.

## Building on Windows

First, place a file called "baserom.nes" file in the main folder, the CHR data is extracted from this file.

After that, run:

```
make -f Makefile.windows clean (optional)
make -f Makefile.windows
```

## Building on Linux

First, place a file called "baserom.nes" file in the main folder, the CHR data is extracted from this file.

After that, run:

```
make clean (optional)
make
```

And if all went well, you should have a "main.nes" file that you can run in any NES emulator, and a "main.nes.dbg" file that you load in the Mesen debugger (using the 'import labels' option, then right click the code view and select 'switch to source view') to get comments and symbols in the built-in debugging tool.
