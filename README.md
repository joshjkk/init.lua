# init.lua

<img src="https://user-images.githubusercontent.com/56817415/213471997-34837219-88cc-4db2-baca-e25813a89789.png" alt="screenshot">

Rewrote my neovim config in Lua, because Lua is the new thing now I guess.

## Installation

### Install [packer](https://github.com/wbthomason/packer.nvim):

> Unix, Linux installation

``` bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Rename directory to ```nvim``` and move it into ```~/.config/```:

``` bash
cd ../
```

``` bash
mv init.lua nvim
```

``` bash
sudo mv nvim ~/.config
```

### Install plugins via [packer](https://github.com/wbthomason/packer.nvim):

Open the packer Lua file:

``` bash
nvim ~/.config/nvim/lua/config/packer.lua
```

#### Inside neovim

Source the file:

``` bash
:so
```

Install the plugins:

``` bash
:PackerSync
```

## References

- [0 to LSP : Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE) by ThePrimeagen
