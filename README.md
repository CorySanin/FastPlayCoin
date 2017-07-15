# PlayCoin - The CIA Verison

## What it is?

Allows to modify the 3DS's Play Coins counter, in other words providing infinite Play Coins.

Usage is self-explanatory, just choose the number of coins you want from the list using A, then exit using B. No more than 300 coins can be held at a time, this is a system limit. An option is also available to backup and restore the decrypted gamecoin.dat to the SD card.

## Compiling

To compile, you'll need DEVKITARM with [DevkitARM](https://sourceforge.net/projects/devkitpro/files/devkitARM/) and a recent commit of [buildtools](https://github.com/Steveice10/buildtools) in this path.
Just run `make` and you can find the compiled files in the `out` folder.

Note: `buildtools/make_base:44: *** "Please set DEVKITPPC in your environment. export DEVKITPPC=<path to>devkitPPC".  Stop. make.exe": *** [all] Error 2` is a normal error.

## Credits

* MrCheeze for [3DSx Play Coin Setter](https://github.com/MrCheeze/playcoin) code base, icon and description
* All contributors to [libctru](https://github.com/smealum/ctrulib)
* Steveice10 for [buildtools](https://github.com/Steveice10/buildtools) and [BuildTemplate](https://github.com/Steveice10/BuildTemplate)
* yellows8 for [3ds_homemenu_extdatatool](https://github.com/yellows8/3ds_homemenu_extdatatool): code base for [3DSx Play Coin Setter](https://github.com/MrCheeze/playcoin) and [PlayCoin](https://github.com/games195/PlayCoin)