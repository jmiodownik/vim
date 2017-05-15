set encoding=utf-8
scriptencoding utf-8

"" Vundle Configuration

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"" Plugin 'itchyny/lightline.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


"" Appearance
Plugin 'jpo/vim-railscasts-theme'
Plugin 'morhetz/gruvbox'

"" Plugin 'shinchu/lightline-gruvbox.vim'

" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

execute pathogen#infect()
syntax on
set number

" NERDTree Configuration
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" NERDTreeTab Configuration
let g:nerdtree_tabs_open_on_console_startup=1
let g:lightline = {}

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"" let g:lightline = {
""       \ 'colorscheme': 'gruvbox',
""       \ 'component': {
""       \   'readonly': '%{&readonly?"⭤":""}',
""       \ },
""       \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
""       \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
""       \ }


"" Control Configurations
nnoremap <C-p> :tabprevious<CR>
nnoremap <C-n>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-p> <Esc>:tabprevious<CR>
inoremap <C-n>   <Esc>:tabnext<CR>
inoremap <C-t>     <Esc>:tabnew<CR>


nnoremap <F1> 1gt
nnoremap <F2> 2gt
nnoremap <F3> 3gt
nnoremap <F4> 4gt
nnoremap <F5> 5gt
nnoremap <F6> 6gt
nnoremap <F7> 7gt
nnoremap <F8> 8gt
nnoremap <F9> 9gt
nnoremap <F10> 10gt
