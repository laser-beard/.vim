"Plugins begin
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.vim'

"colorschemes
Plug 'morhetz/gruvbox'

call plug#end()


"Autoinstall PLUG
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"SETTINGS FOR MARKDOWN PREVIEW
let g:mkdp_auto_start = 1
let g:mkdp_auto_open = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
nmap <silent> <F8> <Plug>MarkdownPreview
nmap <silent> <F9> <Plug>StopMarkdownPreview

"Enable syntax highlighting
syntax on

"COLORSCHEME SETTINGS
colorscheme gruvbox
set background=dark

"Show line number
set number

"Always show current position
set ruler

"Use UTF-8
set encoding=utf-8

"Use spaces instead of tabs
set expandtab

"1 tab == 4 spaces
set tabstop=4

"Highlight search results
set hlsearch

"Makes search act like search in modern browsers
set incsearch

"Wrap lines
set wrap

"MAPPINGS
map <C-n> : NERDTreeToggle<CR>
