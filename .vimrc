let dotvim = split(&rtp, ',')[0]
let plugvim = dotvim . '/autoload/' . 'plug.vim'
if empty(glob(plugvim))
  execute '!curl -fLo'.plugvim.' --create-dirs 
		\ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(dotvim . '/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'rafi/awesome-vim-colorschemes'
Plug 'junegunn/fzf.vim'
Plug 'Disinterpreter/vim-pawn'
call plug#end()

exec 'source ' . dotvim . '/plug-config/coc.vim'

:imap jk <Esc>

set nocompatible
syntax on
filetype plugin indent on
"autocmd BufRead,BufNewFile *.sma setfiletype c
autocmd BufRead,BufNewFile *.sma setfiletype pawn


set tabstop=2 shiftwidth=2 noexpandtab smarttab
set scrolloff=8

set incsearch
set number relativenumber

set mouse=a

"set background=dark
"colorscheme default
"colorscheme railscasts
"colorscheme solarized
"colorscheme zenburn
"colorscheme molokai
"let g:seoul256_background = 236
"let g:seoul256_background = 234
"colo seoul256
colo alduin
"colo gruvbox

" enable Normal mode keys in ru layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Nvim related
if has("nvim")
	autocmd UIEnter * let GuiPopupmenu=0
endif


