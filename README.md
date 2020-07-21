# bars-to-bwav
Extracts BWAV files from BARS files.

## About
This code extracts BWAV files in BARS containers and saves them into respective folders (based on their names). You can run it against a single BARS file or multiple BARS files in a folder.

BARS files are usually used as sound containers in newer Nintendo Switch games (e.g. [Animal Crossing: New Horizon](https://www.animal-crossing.com/new-horizons/)). They can usually be found in the `Sound/Resource` folder in the game's extracted ROM.

The extracted BWAV files can then be opened or converted to other more common format elsewhere (I recommend [vgmstream](https://github.com/losnoco/vgmstream)), they are essentially a new container for sound data encoded in one of the two ways, either plain 16-bit little endian PCM (usually shorter sound effects), or Nintendo's DSP 4-bit ADPCM (longer ones).

## Set-up & Run
This code depends on the filesystem API that's introduced in C++17 (or C++14 experimental, change from `#include<filesystem>` to `#include<experimental/filesystem>` if you have to use C++14) for directory related stuff. If you can't use C++ 17, there's an alternate [boost](https://www.boost.org/) supported version, run `make compile-boost` to build that version. 

Run `make` to build the default executable.

This code is written and roughly tested on Ubuntu 20.04 and Windows 10 (using [MinGW](http://www.mingw.org/)), it should be cross-platform, but I didn't test it elsewhere.

Built executables for Ubuntu and Windows can be found in the [releases](https://github.com/jackz314/bars-to-bwav/releases) section.

## Usage
```bash
bars-to-bwav <bars file or folder containing bars files> [bwav output folder] [--no-overwrite]
or: `bars-to-bwav -h` to bring out this menu.
add `--no-overwrite` flag to prevent from overwriting files with the same names.
```

## C++ Standard
[C++17](https://gcc.gnu.org/projects/cxx-status.html#cxx17) is mostly [supported](https://gcc.gnu.org/onlinedocs/libstdc++/manual/status.html#status.iso.2017) since GCC 5, although it seems that the specific [filesystem APIs](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2016/p0218r1.html) are not supported until GCC 8.1. Unless you are using a really old GCC version, you should be fine.
Use `g++ --version` to check for your `g++` version, and you can grade it to the latest version (on Ubuntu) with `sudo apt install gcc g++`.

You can run `make test-cpp` to test if you are using C++17.
