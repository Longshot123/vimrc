" Use VIM settings, rather than VI settings
" This must be first, because it changes othe option as a side effect
set nocompatible 

" ================= General Config =====================
set number      		        "line numbers are good
set backspace=indent,eol,start	"Allow backspace in insert mode
set history=1000		        "Store lots of history
set showcmd			            "Show incomplete cmds down the bottom
set showmode			        "Show current mode down at the bottom
set gcr=a:blinkon0		        "Disable cursor blink
set visualbell			        "No sounds
set autoread			        "Reloads files changed outside vim
set ruler                       "Shows row, col, and location

" This makes vim act like all other editor, buffers can
" exist in teh background without geing in a window.
set hidden

"turn on syntax highlighting
syntax on
set syntax=whitespaces

"Set the background colors from /user/share/vim/vim73/colors
set background=dark
colorscheme twilight256
color twilight256
"color darkblue

"For MacVim
set guifont=Marzco:h16


"================ Turn off swap files ==================
set noswapfile
set nobackup
set nowb


"================ Indention =============================
set autoindent 
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab               "always use spaces instead of tabs
