# LinuxDay Rieti 2022 Gameboy Advance Demo Rom

Based on template for games using https://github.com/evanbowman/BPCore-Engine.

![screenshot](https://raw.githubusercontent.com/Mte90/LinuxDay-Rieti-2022-GBA-Demo/master/screenshot.png)


## TODO

* Migrate tile to sprite for animation
* Understand the vsync/flickering
* Nice music?

## Requirements

* Lua 5.3
* imagemagick
* mgba-qt 
* Download from https://github.com/evanbowman/BPCore-Engine
  * build/build.lua (put in the root folder)
  * https://github.com/evanbowman/BPCore-Engine/releases the latest gba rom and put in the root folder

## How to run

```
./build.sh
```