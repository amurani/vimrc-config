set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
    source ~/.vim_runtime/my_configs.vim
catch
endtry

" config: START
" enable line numbers
set number

filetype plugin indent on

set hidden
" config: END

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" plugins: START
Plugin 'gmarik/vundle'  " let vundle manage vundle
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
Plugin 'Yggdroot/indentLine'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'

" plugins: END

call vundle#end()
filetype plugin indent on

