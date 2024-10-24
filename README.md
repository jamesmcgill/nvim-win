# Neovim setup for Windows

This was taken from:  
https://www.youtube.com/watch?v=w7i4amO_zaE  
https://github.com/ThePrimeagen/.dotfiles


## Setup Instructions:

```shell
git clone https://github.com/jamesmcgill/nvim-win "$env:LOCALAPPDATA\nvim"

git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
cp -r ${env:USERPROFILE}\OneDrive\Roaming\devenv\Windows\nvim ${env:LOCALAPPDATA}
```

```shell
nvim ${env:LOCALAPPDATA}\nvim\lua\myconfig\packer.lua
:so
:PackerSync
```



### Optional:
Install language servers (and make sure they are on the PATH):

https://github.com/zigtools/zls (consider version needs to match compiler)  
`winget install zls`


https://github.com/LuaLS/lua-language-server  
`winget install lua-language-server` (currently broken so needs manually installed and put on the PATH)
