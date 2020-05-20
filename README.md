# bars-to-bwav
Extracts BWAV files from BARS files.

## About
This code extracts BWAV files in BARS containers and saves them into respective folders (based on their names). You can run it against a single BARS file or multiple BARS files in a folder.

BARS files are usually used as sound containers in newer Nintendo Switch games (e.g. Animal Crossing: New Horizon). They can usually be found in the `Sound/Resource` folder in the game's extracted ROM.

The extracted BWAV files can then be opened or converted to other more common format elsewhere (I recommend [vgmstream](https://github.com/losnoco/vgmstream)), they are essentially a new container for sound data encoded in one of the two ways, either plain 16-bit little endian PCM (usually shorter sound effects), or Nintendo's DSP 4-bit ADPCM (longer ones).

## Set-up & Run
This code depends on [boost](https://www.boost.org/) for directory related stuff (maybe I should've tried C++ 17 for native support). Other than that just run `make` to build.

This code is written and tested on Ubuntu 20.04, it's technically cross-platform but I didn't test it elsewhere.

## Usage
```bash
bars-to-bwav <bars file or folder containing bars files> [bwav output folder]
`bars-to-bwav -h` to bring out the help menu.
```
