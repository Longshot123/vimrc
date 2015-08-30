"=====[ Vimrc Configuration File ]============================================

"This must be first, because it changes othe option as a side effect
set nocompatible 
let mapleader=","                    "Change \ leader to space


"=====[ Vundle Settings ]======================================================

filetype off                    
set rtp+=~/.vim/bundle/vundle.vim/
call vundle#rc()
Bundle 'VundleVim/Vundle.vim'


"=====[ Background colors ]====================================================

set background=dark
colorscheme twilight256
color twilight256
"color darkblue


"=====[ Bundles ]==============================================================

Bundle 'vim-scripts/a.vim'
Bundle 'Rip-Rip/clang_complete'
Bundle 'vim-scripts/Conque-Shell'
Bundle 'kien/ctrlp.vim'
Bundle 'gregsexton/gitv'
Bundle 'scrooloose/nerdtree'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'hdima/python-syntax'
Bundle 'vim-scripts/sudo.vim'
Bundle 'dschwen/switch-header-source'
Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tcomment_vim'
Bundle 'tmux/tmux'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'easymotion/vim-easymotion'
Bundle 'vim-scripts/git-flow-format'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'fatih/vim-go'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'vim-scripts/vimwiki'

Plugin 'bling/vim-airline'


"====[ Color Column at Line 80 ]===============================================

set colorcolumn=80
highlight ColorColumn ctermbg=red


"=====[ Correct Common  Errors On-The-Fly ]=====================================

iab    retrun  return
iab    rteurn  return
iab     pritn  print
iab       teh  the
iab      liek  like
iab  liekwise  likewise
iab      Pelr  Perl
iab      pelr  perl
iab        ;t  't
iab    Jarrko  Jarkko
iab    jarrko  jarkko
iab      moer  more
iab  previosu  previous


"=====[ General Config ]=======================================================

set backspace=indent,eol,start	"Allow backspace in insert mode
set history=1000		        "Store lots of history
set showcmd			            "Show incomplete cmds down the bottom
set showmode			        "Show current mode down at the bottom
set gcr=a:blinkon0		        "Disable cursor blink
set visualbell			        "No sounds
set autoread			        "Reloads files changed outside vim
set ruler                       "Shows row, col, and location
set hidden                      "Hides buffers instead of closing them


" "=====[ Grammar checking ]===================================================

highlight GRAMMARIAN_ERRORS_MSG   ctermfg=red   cterm=bold
highlight GRAMMARIAN_CAUTIONS_MSG ctermfg=white cterm=bold


"=====[  Line Numbers ]========================================================

set relativenumber              "Relative line numbers 
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber


"=====[ Mappings - Force VIM directional keys ]================================

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>


"=====[ Mappings - Remap keys ]================================================

let g:EasyMotion_leader_key = '<Leader>'    "Start with <leader><leader>
map <C-n> :NERDTreeToggle<CR> 
nmap <F8> :TagbarToggle<CR>
noremap <leader>w :w<cr>

"=====[ Mappings - Window Navigation ]=========================================

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


"====[ Smart Search Behaviour ]================================================

set incsearch       "Lookahead as search pattern is specified
set ignorecase      "Ignore case in all searches...
set smartcase       "\...unless uppercase letters used
set hlsearch        "Highlight all matches
highlight clear Search
highlight       Search    ctermfg=White


"=====[ Status Line ]==========================================================

set laststatus=2
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:gitgutter_sign_column_always = 1


"=====[ Swap Files ]===========================================================

set noswapfile
set nobackup
set nowb


"=====[ Syntax Highlighting ]==================================================

syntax on
set syntax=whitespaces


"=====[ Tab Handling ]=========================================================

set tabstop=4      "Tab indentation levels every four columns
set shiftwidth=4   "Indent/outdent by four columns
set expandtab      "Convert all tabs that are typed into spaces
set shiftround     "Always indent/outdent to nearest tabstop
set smarttab       "Use shiftwidths at left margin, tabstops everywhere else
autocmd Filetype make setlocal noexpandtab "Turn off tab->spaces for make files


