# Config nvim

![Logo FLinguenheld](https://raw.githubusercontent.com/FLinguenheld/ocrp6/main/forelif.png "Pouet")

****

## Install
>sudo dnf install -y neovim python3-neovim

## Requirements

##### Python/Pip
>pip install --user --upgrade pynvim  
>pip install -U jedi-language-server  
>pip install neovim

##### Active fonts in terminal (for airline) then active in terminal options
>https://fedoramagazine.org/add-power-terminal-powerline/

##### Telescope
>sudo dnf install ripgrep  
>sudo dnf install fd-find

##### Coc
>sudo dnf install -y nodejs
>sudo npm install -g neovim

>:CocList extensions (to see extensions already install)  
>:Checkhealth (to see dependances)

##### Clipboard
>sudo dnf install xclip


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

