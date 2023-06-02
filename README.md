# Matrix by Jeff Minter (NES)
<img width="460" src="https://github.com/mwenge/matrixnes/assets/58846/99e6b8ee-0fcb-40c6-84bd-a8f3d84e715c">

Jeff Minter never ported his game [Matrix] to the Nintendo Entertainment system. So I did. Maybe I don't know what I'm doing.

<!-- vim-markdown-toc GFM -->

* [Play Online](#play-online)
* [Play](#play)
  * [Controls](#controls)
* [Build](#build)
* [About](#about)

<!-- vim-markdown-toc -->

## Play Online
You can play it [online here](https://mwenge.github.io/matrixnes).

## Play
On Ubuntu you can install [FCEUX], the NES emulator, as follows:
```
sudo apt install fceux
```

Once you have that installed, you can [download the game](https://github.com/mwenge/matrixnes/raw/master/bin/matrix.nes) and play it:

```
fceux matrix.nes
```

### Controls
On FCEUX, you can use F to fire and the Arrow keys to move.

## Build
On Ubuntu you can install the build dependencies as follows:
```
sudo apt install cc65 fceux python3
```

Then you can compile and run:

```sh
$ make
```

## About
Made out of curiosity as part of the [Matrix](https://github.com/mwenge/matrix) project.
This [example project](https://github.com/bbbradsmith/NES-ca65-example/) was a big help in getting started.
Let's face it: it's slow. I'm still thinking of what I can do about that.


[cc65]: https://cc65.github.io/
[FCEUX]: https://fceux.com/
[llamaSource]: https://en.wikipedia.org/wiki/Trip-a-Tron
[Matrix]: https://en.wikipedia.org/wiki/Matrix_(light_synthesizer)
