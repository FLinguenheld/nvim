# Config nvim

![Logo FLinguenheld](https://raw.githubusercontent.com/FLinguenheld/ocrp6/main/forelif.png "Pouet")

****

## Install
>sudo add-apt-repository ppa:neovim-ppa/stable
>sudo apt-get update  
>sudo apt-get install neovim

## Requirements

##### Git
>sudo apt-get install git

##### Python/Pip
>sudo apt-get install python3-pip  
>pip install -U jedi-language-server

>python3 -m pip install --user --upgrade pynvim  
>pip install neovim

##### Active fonts in terminal (for airline) then active in terminal options
>sudo apt-get install fonts-powerline

##### Telescope
>sudo apt-get install ripgrep
>sudo apt-get install fd-find

##### Coc
>sudo apt-get install nodejs npm  
>sudo npm install -g neovim

>:CocList extensions (to see extensions already install)  
>:Checkhealth (to see dependances)

##### Clipboard
>sudo apt-get install xclip


##### VimPlug
>sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
>       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

## Plugins

:PlugInstall

:CocInstall
- coc-snippets
- coc-vimlsp
- coc-jedi
- coc-html
- coc-css
- coc-yank
- coc-markdown-preview-enhanced (coc-webview needed) - to launch : CocCommand markdown-…

