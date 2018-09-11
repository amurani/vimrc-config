set runtimepath+=~/.vim_runtime

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" plugin Vundle: START
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/vundle'  " let vundle manage vundle
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'Yggdroot/indentLine' " visually show indentation levels for code indented with spaces
Plugin 'vim-airline/vim-airline' " status/tabline
Plugin 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc 
Plugin 'airblade/vim-gitgutter' " git diff in the gutter
Plugin 'https://github.com/vim-syntastic/syntastic.git'
Plugin 'ssh://git.booking.com/gitroot/devtools/vim-booking.git'
Plugin 'pangloss/vim-javascript' " javascript syntax highlighting
Plugin 'mxw/vim-jsx' " jsx syntax highlighting
Plugin 'flazz/vim-colorschemes' " colorscheme
Plugin 'webdevel/tabulous' " tab labels
" colorschemes
Plugin 'https://github.com/Yggdroot/duoduo.git'
Plugin 'larsbs/vimterial_dark'
Plugin 'trusktr/seti.vim'
call vundle#end()
" plugin Vundle: END

" config: START

filetype plugin indent on

set nofoldenable " all folds are open
" set hidden
" set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set autoread
set number " line numbers
set wildmenu " command-line completion operates"

syntax enable
syntax on
colorscheme dracula

au BufReadPost *.comp set syntax=mason
au BufReadPost *.html set syntax=mason
au BufReadPost *.json set syntax=mason
au BufReadPost *.inc set syntax=tmpl
au BufReadPost *.tmpl set syntax=tmpl

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let JSHintUpdateWriteOnly=1
let g:JSHintHighlightErrorLine = 1
let g:syntastic_tmpl_checkers = ['javascript', 'eslint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'eslint'
let g:syntastic_pl_checkers = ['perlcritic']
let g:syntastic_pm_checkers = ['perlcritic']

let g:indentLine_char = '.'
let g:indentLine_color_tty_dark = 1

let g:syntastic_check_on_open = 1

let NERDTreeShowHidden=1
